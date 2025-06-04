--[[
    Name: LibItemTooltip-1.0
    Developed by: Refaim (rkharito@yandex.ru, https://github.com/refaim/)
    Description: A library that helps to hook into item tooltips.
    Dependencies: LibStub
    Compatibility: Vanilla (1.12.1), Turtle (1.17.2+)
]]

---@type LibStubDef
local LibStub = getglobal("LibStub")
assert(LibStub ~= nil)

local untyped_lib, old_lib_version = LibStub:NewLibrary("LibItemTooltip-1.0", 2)
if not untyped_lib then
    return
end

---@alias LitEventHandler fun(tooltip: GameTooltip, item_link: string, item_id: number)

---@shape LitHook
---@field lib_version number
---@field name string
---@field object table
---@field orig function
---@field hook function

---@class LibItemTooltip
---@field game_tooltip_event_frame Frame
---@field item_ref_tooltip_event_frame Frame
---@field game_tooltip_item_link string|nil
---@field item_ref_tooltip_link string|nil
---@field event_to_handlers table<string, LitEventHandler[]>
---@field object_to_name_to_hook table<string, table<string, LitHook>>

local lib = --[[---@type LibItemTooltip]] untyped_lib
if lib.event_to_handlers == nil then
    lib.event_to_handlers = {}
end
if lib.object_to_name_to_hook == nil then
    lib.object_to_name_to_hook = {}
end

---@type table<string, string>
local event_upgrade_map = {
    OnShow = "OnShow2",
}

---@param event "OnShow"
---@param handler LitEventHandler
function lib:RegisterEvent(event, handler)
    assert(type(event) == "string", "Event name must be a string")
    assert(type(handler) == "function", "Handler must be a function")

    local new_event = event_upgrade_map[event] or event
    if self.event_to_handlers[new_event] == nil then
        self.event_to_handlers[new_event] = {}
    end
    tinsert(self.event_to_handlers[new_event], handler)
end

---@param item_link string
---@return number
local function extract_id(item_link)
    local _, _, id = string.find(item_link, "item:(%d+)")
    return --[[---@not nil]] tonumber(--[[---@not nil]] id)
end

---@param tooltip GameTooltip
---@param item_link string
local function on_show(tooltip, item_link)
    for _, handler in ipairs(lib.event_to_handlers["OnShow2"] or {}) do
        handler(tooltip, item_link, extract_id(item_link))
    end
end

---@param frame Frame
local function delete_event_frame(frame)
    frame:SetScript("OnShow", nil)
    frame:SetScript("OnHide", nil)
    frame:SetParent(nil)
end

if old_lib_version ~= nil and old_lib_version < 2 then
    local old_frame = --[[---@type Frame]] (--[[---@type table]] lib).event_frame
    delete_event_frame(old_frame)

    for old_event, new_event in pairs(event_upgrade_map) do
        if lib.event_to_handlers[new_event] == nil then
            lib.event_to_handlers[new_event] = {}
        end
        for _, handler in ipairs(lib.event_to_handlers[old_event] or {}) do
            tinsert(lib.event_to_handlers[new_event], handler)
        end
        lib.event_to_handlers[old_event] = nil
    end
end

if lib.game_tooltip_event_frame ~= nil then
    delete_event_frame(lib.game_tooltip_event_frame)
end
lib.game_tooltip_event_frame = CreateFrame("Frame", nil, GameTooltip)
lib.game_tooltip_event_frame:SetScript("OnShow", function()
    if lib.game_tooltip_item_link ~= nil then
        on_show(GameTooltip, --[[---@not nil]] lib.game_tooltip_item_link)
    end
end)
lib.game_tooltip_event_frame:SetScript("OnHide", function()
    lib.game_tooltip_item_link = nil
end)

if lib.item_ref_tooltip_event_frame ~= nil then
    delete_event_frame(lib.item_ref_tooltip_event_frame)
end
lib.item_ref_tooltip_event_frame = CreateFrame("Frame", nil, ItemRefTooltip)
lib.item_ref_tooltip_event_frame:SetScript("OnShow", function()
    if lib.item_ref_tooltip_link ~= nil and not IsAltKeyDown() and not IsControlKeyDown() and not IsShiftKeyDown() then
        on_show(ItemRefTooltip, --[[---@not nil]] lib.item_ref_tooltip_link)
    end
end)
lib.item_ref_tooltip_event_frame:SetScript("OnHide", function()
    lib.item_ref_tooltip_link = nil
end)

---@param object table
---@param name string
---@param on_hook function
local function hook(object, name, on_hook)
    assert(type(object[name]) == "function")

    local object_id = tostring(object)
    local name_to_hook = lib.object_to_name_to_hook[object_id]
    if name_to_hook == nil then
        name_to_hook = {}
    end

    local old_hook = name_to_hook[name]
    if old_hook ~= nil then
        old_hook.object[name] = old_hook.orig
    end

    ---@type function
    local orig = object[name]
    object[name] = function(...)
        on_hook(unpack(arg))
        return orig(unpack(arg))
    end

    name_to_hook[name] = {
        lib_version = 2,
        name = name,
        object = object,
        orig = orig,
        hook = on_hook
    }

    lib.object_to_name_to_hook[object_id] = name_to_hook
end

hook(getfenv(), "SetItemRef", function(link, text, button)
    lib.item_ref_tooltip_link = link
end)

hook(GameTooltip, "SetHyperlink", function(self, link)
    if string.find(link, "item:") then
        lib.game_tooltip_item_link = link
    end
end)

hook(GameTooltip, "SetBagItem", function(self, container, slot)
    lib.game_tooltip_item_link = GetContainerItemLink(container, slot)
end)

hook(GameTooltip, "SetCraftItem", function(self, skill, slot)
    lib.game_tooltip_item_link = GetCraftReagentItemLink(skill, slot)
end)

hook(GameTooltip, "SetCraftSpell", function(self, slot)
    lib.game_tooltip_item_link = GetCraftItemLink(slot)
end)

hook(GameTooltip, "SetInventoryItem", function(self, unit, slot)
    lib.game_tooltip_item_link = GetInventoryItemLink(unit, slot)
end)

hook(GameTooltip, "SetLootItem", function(self, slot)
    lib.game_tooltip_item_link = GetLootSlotLink(slot)
end)

hook(GameTooltip, "SetLootRollItem", function(self, id)
    lib.game_tooltip_item_link = GetLootRollItemLink(id)
end)

hook(GameTooltip, "SetMerchantItem", function(self, item_index)
    lib.game_tooltip_item_link = GetMerchantItemLink(item_index)
end)

hook(GameTooltip, "SetQuestItem", function(self, item_type, index)
    lib.game_tooltip_item_link = GetQuestItemLink(item_type, index)
end)

hook(GameTooltip, "SetQuestLogItem", function(self, item_type, index)
    lib.game_tooltip_item_link = GetQuestLogItemLink(item_type, index)
end)

hook(GameTooltip, "SetTradePlayerItem", function(self, index)
    lib.game_tooltip_item_link = GetTradePlayerItemLink(index)
end)

hook(GameTooltip, "SetTradeSkillItem", function(self, skill_index, reagent_index)
    if reagent_index then
        lib.game_tooltip_item_link = GetTradeSkillReagentItemLink(skill_index, reagent_index)
    else
        lib.game_tooltip_item_link = GetTradeSkillItemLink(skill_index)
    end
end)

hook(GameTooltip, "SetTradeTargetItem", function(self, index)
    lib.game_tooltip_item_link = GetTradeTargetItemLink(index)
end)
