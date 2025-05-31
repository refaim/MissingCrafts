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

local untyped_lib, _ = LibStub:NewLibrary("LibItemTooltip-1.0", 1)
if not untyped_lib then
    return
end

---@alias LitEventHandler fun(tooltip: GameTooltip, item_link: string, item_id: number)

---@class LibItemTooltip
---@field event_frame Frame
---@field event_to_handlers table<string, LitEventHandler[]>
---@field game_tooltip_item_link string|nil
---@field hooks_registered boolean

local lib = --[[---@type LibItemTooltip]] untyped_lib
if lib.event_to_handlers == nil then
    lib.event_to_handlers = {}
end

---@param event "OnShow"
---@param handler LitEventHandler
function lib:RegisterEvent(event, handler)
    if self.event_to_handlers[event] == nil then
        self.event_to_handlers[event] = {}
    end
    tinsert(self.event_to_handlers[event], handler)
end

---@param item_link string
---@return number
local function extract_id(item_link)
    local _, _, id = string.find(item_link, "item:(%d+):%d+:%d+:%d+")
    return --[[---@not nil]] tonumber(--[[---@not nil]] id)
end

---@param tooltip GameTooltip
---@param item_link string
local function on_show(tooltip, item_link)
    for _, handler in ipairs(lib.event_to_handlers["OnShow"] or {}) do
        handler(tooltip, item_link, extract_id(item_link))
    end
end

if lib.event_frame ~= nil then
    lib.event_frame:SetScript("OnShow", nil)
    lib.event_frame:SetScript("OnHide", nil)
end
lib.event_frame = CreateFrame("Frame", nil, GameTooltip)
lib.event_frame:SetScript("OnShow", function()
    if lib.game_tooltip_item_link ~= nil then
        on_show(GameTooltip, --[[---@not nil]] lib.game_tooltip_item_link)
    end
end)
lib.event_frame:SetScript("OnHide", function()
    lib.game_tooltip_item_link = nil
end)

if lib.hooks_registered then return end

local HookSetItemRef = SetItemRef
---@param link string
---@param text string
---@param button MouseButton
SetItemRef = function(link, text, button)
    HookSetItemRef(link, text, button)
    if not IsAltKeyDown() and not IsControlKeyDown() and not IsShiftKeyDown() then
        on_show(ItemRefTooltip, link)
    end
end

local HookSetBagItem = GameTooltip.SetBagItem
function GameTooltip.SetBagItem(self, container, slot)
    lib.game_tooltip_item_link = GetContainerItemLink(container, slot)
    return HookSetBagItem(self, container, slot)
end

local HookSetCraftItem = GameTooltip.SetCraftItem
function GameTooltip.SetCraftItem(self, skill, slot)
    lib.game_tooltip_item_link = GetCraftReagentItemLink(skill, slot)
    return HookSetCraftItem(self, skill, slot)
end

local HookSetCraftSpell = GameTooltip.SetCraftSpell
function GameTooltip.SetCraftSpell(self, slot)
    lib.game_tooltip_item_link = GetCraftItemLink(slot)
    return HookSetCraftSpell(self, slot)
end

local HookSetInventoryItem = GameTooltip.SetInventoryItem
function GameTooltip.SetInventoryItem(self, unit, slot)
    lib.game_tooltip_item_link = GetInventoryItemLink(unit, slot)
    return HookSetInventoryItem(self, unit, slot)
end

local HookSetLootItem = GameTooltip.SetLootItem
function GameTooltip.SetLootItem(self, slot)
    lib.game_tooltip_item_link = GetLootSlotLink(slot)
    HookSetLootItem(self, slot)
end

local HookSetLootRollItem = GameTooltip.SetLootRollItem
function GameTooltip.SetLootRollItem(self, id)
    lib.game_tooltip_item_link = GetLootRollItemLink(id)
    return HookSetLootRollItem(self, id)
end

local HookSetMerchantItem = GameTooltip.SetMerchantItem
function GameTooltip.SetMerchantItem(self, item_index)
    lib.game_tooltip_item_link = GetMerchantItemLink(item_index)
    return HookSetMerchantItem(self, item_index)
end

local HookSetQuestItem = GameTooltip.SetQuestItem
function GameTooltip.SetQuestItem(self, item_type, index)
    lib.game_tooltip_item_link = GetQuestItemLink(item_type, index)
    return HookSetQuestItem(self, item_type, index)
end

local HookSetQuestLogItem = GameTooltip.SetQuestLogItem
function GameTooltip.SetQuestLogItem(self, item_type, index)
    lib.game_tooltip_item_link = GetQuestLogItemLink(item_type, index)
    return HookSetQuestLogItem(self, item_type, index)
end

local HookSetTradePlayerItem = GameTooltip.SetTradePlayerItem
function GameTooltip.SetTradePlayerItem(self, index)
    lib.game_tooltip_item_link = GetTradePlayerItemLink(index)
    return HookSetTradePlayerItem(self, index)
end

local HookSetTradeSkillItem = GameTooltip.SetTradeSkillItem
function GameTooltip.SetTradeSkillItem(self, skillIndex, reagentIndex)
    if reagentIndex then
        lib.game_tooltip_item_link = GetTradeSkillReagentItemLink(skillIndex, reagentIndex)
    else
        lib.game_tooltip_item_link = GetTradeSkillItemLink(skillIndex)
    end
    return HookSetTradeSkillItem(self, skillIndex, reagentIndex)
end

local HookSetTradeTargetItem = GameTooltip.SetTradeTargetItem
function GameTooltip.SetTradeTargetItem(self, index)
    lib.game_tooltip_item_link = GetTradeTargetItemLink(index)
    return HookSetTradeTargetItem(self, index)
end

lib.hooks_registered = true
