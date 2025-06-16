--[[
    Name: LibCraftingProfessions-1.0
    Developed by: Refaim (rkharito@yandex.ru, https://github.com/refaim/)
    Website: https://github.com/refaim/LibCraftingProfessions-1.0
    Description: A library designed to provide a universal interface for crafting professions.
    Dependencies: LibStub
    Compatibility: World of Warcraft Vanilla (1.12.1), Turtle (1.17.2)
]]

---@type LibStubDef
local LibStub = getglobal("LibStub")
assert(LibStub ~= nil)

local untyped_lib, _ = LibStub:NewLibrary("LibCraftingProfessions-1.0", 14)
if not untyped_lib then
    return
end

---@class LibCraftingProfessions
---@field event_to_handlers table<string, function[]>
---@field event_frame Frame

local lib = --[[---@type LibCraftingProfessions]] untyped_lib
if lib.event_to_handlers == nil then
    lib.event_to_handlers = {}
end

local IS_TURTLE_WOW = getglobal("LFT") ~= nil

---@shape LcpProfessionProps
---@field icon string

---@type table<string, LcpProfessionProps>
local P = {}
P["Alchemy"] = {icon = [[Interface\Icons\trade_alchemy]]}
P["Blacksmithing"] = {icon = [[Interface\Icons\trade_blacksmithing]]}
P["Cooking"] = {icon = [[Interface\Icons\inv_misc_food_15]]}
P["Enchanting"] = {icon = [[Interface\Icons\trade_engraving]]}
P["Engineering"] = {icon = [[Interface\Icons\trade_engineering]]}
P["First Aid"] = {icon = [[Interface\Icons\spell_holy_sealofsacrifice]]}
P["Leatherworking"] = {icon = [[Interface\Icons\inv_misc_armorkit_17]]}
P["Mining"] = {icon = [[Interface\Icons\spell_fire_flameblades]]}
P["Poisons"] = {icon = [[Interface\Icons\trade_brewpoison]]}
P["Tailoring"] = {icon = [[Interface\Icons\trade_tailoring]]}
if IS_TURTLE_WOW then
    P["Jewelcrafting"] = {icon = [[Interface\Icons\inv_helmet_44]]}
end
local PROFESSION_TO_PROPS = P
P = {}

---@type table<string, string>
local ENGLISH_TO_LOCALIZED = {}
---@type table<string, string>
local LOCALIZED_TO_ENGLISH = {}

---@shape LcpProfession
---@field english_name string
---@field localized_name string
---@field icon_texture_path string

---@shape LcpKnownProfession: LcpProfession
---@field cur_rank number

---@alias LcpProfessionFrameType "VanillaCraftFrame" | "VanillaTradeSkillFrame" | "TurtleTradeSkillFrame" | "Artisan" | "AdvancedTradeSkillWindow" | "AdvancedTradeSkillWindow2"

---@type {FrameType: table<LcpProfessionFrameType, LcpProfessionFrameType>}
LibCraftingProfessionsConstants = {
    FrameType = {
        VanillaCraftFrame = "VanillaCraftFrame",
        VanillaTradeSkillFrame = "VanillaTradeSkillFrame",
        TurtleTradeSkillFrame = "TurtleTradeSkillFrame",
        Artisan = "Artisan",
        AdvancedTradeSkillWindow = "AdvancedTradeSkillWindow",
        AdvancedTradeSkillWindow2 = "AdvancedTradeSkillWindow2",
    }
}
local FrameType = LibCraftingProfessionsConstants.FrameType

---@shape LcpProfessionFrame
---@field frame Frame
---@field type LcpProfessionFrameType

---@alias LcpSkillDifficulty "trivial" | "easy" | "medium" | "optimal" | "difficult"

---@shape LcpKnownSkill
---@field localized_name string
---@field item_link string
---@field difficulty LcpSkillDifficulty
---@field num_available number

---@alias LcpScanSkillsHandler fun(profession: LcpKnownProfession, skills: LcpKnownSkill[]):void

---@type table<string, LcpKnownSkill[]>
local skills_by_english_profession_name = {}

---@return boolean
local function ready(value)
    if value == nil then
        return false
    end
    if type(value) == "table" then
        return next(value) ~= nil
    end
    return value ~= "" and value ~= 0
end

---
--- Retrieves a list of all supported crafting professions in the game.
---
---@return LcpProfession[]
function lib:GetSupportedProfessions()
    ---@type LcpProfession[]
    local professions = {}
    for english_name, props in pairs(PROFESSION_TO_PROPS) do
        tinsert(professions, {
            english_name = english_name,
            localized_name = ENGLISH_TO_LOCALIZED[english_name],
            icon_texture_path = props.icon,
        })
    end
    return professions
end

---
--- Retrieves a list of the player's known crafting professions.
--- Returns a table of known professions, or nil if game data is not yet available.
--- Use RegisterEvent("LCP_SKILLS_UPDATE", ...) to ensure data availability.
---
---@return LcpKnownProfession[]|nil
function lib:GetPlayerProfessions()
    local num_of_professions = GetNumSkillLines()
    if not ready(num_of_professions) then
        return nil
    end

    ---@type LcpKnownProfession[]
    local professions = {}
    for i = 1, num_of_professions do
        local localized_name, is_header, _, rank, _, _, _, _, _, _, _, _, _ = GetSkillLineInfo(i)
        if not is_header then
            if not ready(localized_name) then
                return nil
            end

            local english_name = LOCALIZED_TO_ENGLISH[localized_name]
            local crafting_props = PROFESSION_TO_PROPS[english_name]
            if crafting_props ~= nil then
                if not ready(rank) then
                    return nil
                end
                tinsert(professions, {
                    english_name = english_name,
                    localized_name = localized_name,
                    icon_texture_path = crafting_props.icon,
                    cur_rank = rank,
                })
            end
        end
    end

    return professions
end

---
--- Retrieves a list of the player's skills for a specific profession.
--- Returns a table of known skills for the specified profession, or nil if game data is not yet available
--- Use RegisterEvent("LCP_SKILLS_UPDATE", ...) to ensure data availability.
---
--- @param profession_name string
--- @return LcpKnownSkill[]|nil
function lib:GetPlayerProfessionSkills(profession_name)
    return skills_by_english_profession_name[profession_name] or skills_by_english_profession_name[LOCALIZED_TO_ENGLISH[profession_name]]
end

---
--- Registers a handler for the specific library event.
--- LCP_SKILLS_UPDATE is fired when skill data is updated and ready for retrieval.
--- LCP_FRAME_SHOW is fired when a crafting profession frame is shown.
--- LCP_FRAME_CLOSE is fired when a crafting profession frame is closed.
---@param event string
---@param handler function
---@overload fun(event: "LCP_SKILLS_UPDATE", handler: fun(profession: LcpKnownProfession, skills: LcpKnownSkill[]):void)
---@overload fun(event: "LCP_FRAME_SHOW", handler: fun(profession: LcpKnownProfession, frame: Frame, frame_type: LcpProfessionFrameType):void)
---@overload fun(event: "LCP_FRAME_CLOSE", handler: fun(frame: Frame, frame_type: LcpProfessionFrameType):void)
function lib:RegisterEvent(event, handler)
    if lib.event_to_handlers[event] == nil then
        lib.event_to_handlers[event] = {}
    end
    tinsert(lib.event_to_handlers[event], --[[---@type function]] handler)
end

---@shape _LcpTradeSkillFilterOption
---@field name string
---@field type "inv_slot" | "subclass"

---@shape _LcpProfessionAdapter
---@field GetProfessionInfo fun():string|nil, string|nil, number|nil, number|nil
---@field GetNumSkills fun():number|nil
---@field GetSkillInfo fun(index:number):string|nil, string|nil, number|nil, wowboolean
---@field GetSkillItemLink fun(index:number):string|nil
---@field ExpandHeader fun(index:number):void
---@field CollapseHeader fun(index:number):void
---@field DisableFilters fun():void

---@param adapter _LcpProfessionAdapter
---@return LcpKnownSkill[]|nil
local function scan_skills(adapter)
    local profession, cur_rank, max_rank = adapter.GetProfessionInfo()
    if not ready(profession) or not ready(cur_rank) or not ready(max_rank) then
        return nil
    end

    adapter:DisableFilters()

    local num_of_skills_before_expansion = adapter.GetNumSkills()
    if not ready(num_of_skills_before_expansion) then
        return nil
    end

    ---@type table<string, true>
    local set_of_headers_to_collapse = {}
    for i = 1, num_of_skills_before_expansion do
        local skill_name, skill_type_or_difficulty, _, is_expanded = adapter.GetSkillInfo(i)
        if not ready(skill_name) or not ready(skill_type_or_difficulty) then
            return nil
        end
        if skill_type_or_difficulty == "header" and is_expanded == nil then
            set_of_headers_to_collapse[ --[[---@not nil]] skill_name] = true
        end
    end
    adapter.ExpandHeader(0)

    local num_of_skills_after_expansion = adapter.GetNumSkills()
    if not ready(num_of_skills_after_expansion) then
        return nil
    end

    ---@type LcpKnownSkill[]
    local skills = {}
    for i = 1, num_of_skills_after_expansion do
        local skill_name, skill_type_or_difficulty, num_available, _ = adapter.GetSkillInfo(i)
        if not ready(skill_name) or not ready(skill_type_or_difficulty) then
            return nil
        end
        if skill_type_or_difficulty ~= "header" then
            local item_link = adapter.GetSkillItemLink(i)
            if num_available == nil or not ready(item_link) then
                return nil
            end

            ---@type LcpKnownSkill
            local skill = {
                localized_name = --[[---@not nil]] skill_name,
                item_link = --[[---@not nil]] item_link,
                difficulty = --[[---@type LcpSkillDifficulty]] skill_type_or_difficulty,
                num_available = --[[---@not nil]] num_available,
            }
            tinsert(skills, skill)
        end
    end

    for i = adapter.GetNumSkills(), 1, -1 do
        local skill_name, skill_type_or_difficulty, _, _ = adapter.GetSkillInfo(i)
        if skill_type_or_difficulty == "header" and set_of_headers_to_collapse[ --[[---@not nil]] skill_name] ~= nil then
            adapter.CollapseHeader(i)
        end
    end

    return skills
end

---@param known_professions LcpKnownProfession[]|nil
local function forget_obsolete_professions(known_professions)
    if known_professions == nil then
        return
    end

    ---@type table<string, boolean>
    local known_profession_names_set = {}
    for _, profession in ipairs(--[[---@not nil]] known_professions) do
        known_profession_names_set[profession.english_name] = true
    end

    for english_name, _ in pairs(skills_by_english_profession_name) do
        if known_profession_names_set[english_name] == nil then
            skills_by_english_profession_name[english_name] = nil
        end
    end
end

---@param known_professions LcpKnownProfession[]|nil
---@param name string
---@return LcpKnownProfession|nil
local function find_known_profession(known_professions, name)
    local profession
    for _, candidate in ipairs(known_professions or {}) do
        if candidate.localized_name == name or candidate.english_name == name then
            profession = candidate
            break
        end
    end
    return profession
end

---@param english_name string
---@param skills LcpKnownSkill[]
local function save_skills(english_name, skills)
    skills_by_english_profession_name[english_name] = skills

    local known_professions = lib:GetPlayerProfessions()
    forget_obsolete_professions(known_professions)

    local profession = find_known_profession(known_professions, english_name)
    if profession == nil then
        return
    end

    for _, handler in ipairs(lib.event_to_handlers["LCP_SKILLS_UPDATE"] or {}) do
        handler(profession, skills)
    end
end

---@shape LcpThirdPartyProfessionFrameAddon
---@field name string
---@field frame_name string
---@field opens_and_closes_vanilla_profession_frames boolean

---@type LcpThirdPartyProfessionFrameAddon
local artisan = {name = "Artisan", frame_name = "ArtisanFrame", opens_and_closes_vanilla_profession_frames = true}
---@type LcpThirdPartyProfessionFrameAddon
local atsw = {name = "AdvancedTradeSkillWindow", frame_name = "ATSWFrame", opens_and_closes_vanilla_profession_frames = false}
---@type LcpThirdPartyProfessionFrameAddon
local atsw2 = {name = "AdvancedTradeSkillWindow2", frame_name = "ATSWFrame", opens_and_closes_vanilla_profession_frames = true}

local SUPPORTED_THIRD_PARTY_ADDONS = {artisan, atsw, atsw2}

---@param addon LcpThirdPartyProfessionFrameAddon
local function is_third_party_loaded(addon)
    return IsAddOnLoaded(addon.name) == 1 and getglobal(addon.frame_name) ~= nil
end

---@return LcpProfessionFrame
local function detect_profession_frame(professionFrame)
    ---@type Frame
    local atsw1_or_atsw2_frame = getglobal(atsw2.frame_name)
    if atsw1_or_atsw2_frame ~= nil then
        ---@type LcpProfessionFrameType
        local frame_type = FrameType.AdvancedTradeSkillWindow
        if is_third_party_loaded(atsw2) then
            frame_type = FrameType.AdvancedTradeSkillWindow2
        end
        return {frame = atsw1_or_atsw2_frame, type = frame_type}
    end

    if is_third_party_loaded(artisan) then
        return {frame = getglobal(artisan.frame_name), type = FrameType.Artisan}
    end

    if professionFrame == TradeSkillFrame then
        local frame_type = IS_TURTLE_WOW and FrameType.TurtleTradeSkillFrame or FrameType.VanillaTradeSkillFrame
        return {frame = professionFrame, type = frame_type}
    end

    return {frame = professionFrame, type = FrameType.VanillaCraftFrame}
end

---@param english_name string
---@param localized_name string
---@param cur_rank number
---@param frame Frame
local function send_frame_show_event(english_name, localized_name, cur_rank, frame)
    local profession = {
        english_name = english_name,
        localized_name = localized_name,
        cur_rank = cur_rank,
    }
    local real_frame = detect_profession_frame(frame)
    for _, handler in ipairs(lib.event_to_handlers["LCP_FRAME_SHOW"] or {}) do
        handler(profession, real_frame.frame, real_frame.type)
    end
end

---@param frame Frame
local function send_frame_close_event(frame)
    local real_frame = detect_profession_frame(frame)
    for _, handler in ipairs(lib.event_to_handlers["LCP_FRAME_CLOSE"] or {}) do
        handler(real_frame.frame, real_frame.type)
    end
end

---@return CraftFrame
local function get_craft_frame()
    if CraftFrame == nil then
        LoadAddOn("Blizzard_CraftUI")
    end
    return CraftFrame
end

---@type _LcpProfessionAdapter
local craft_adapter = {
    GetProfessionInfo = function()
        local name, cur_rank, max_rank = GetCraftDisplaySkillLine()
        if name == nil then -- GetCraftDisplaySkillLine() returns nil for the "Beast Training" frame
            name = GetCraftName()
        end
        return name, LOCALIZED_TO_ENGLISH[--[[---@type string]] name], cur_rank, max_rank
    end,
    GetNumSkills = GetNumCrafts,
    GetSkillInfo = function(i)
        local name, _, type, num_available, is_expanded = GetCraftInfo(i)
        return name, type, num_available, is_expanded
    end,
    GetSkillItemLink = GetCraftItemLink,
    ExpandHeader = ExpandCraftSkillLine,
    CollapseHeader = CollapseCraftSkillLine,
    DisableFilters = function() end,
}

local function try_send_craft_frame_show_event()
    local localized_name, english_name, cur_rank, _ = craft_adapter.GetProfessionInfo()
    if not ready(localized_name) or not ready(english_name) or not ready(cur_rank) then
        return
    end
    send_frame_show_event(--[[---@not nil]] english_name, --[[---@not nil]] localized_name, --[[---@not nil]] cur_rank, get_craft_frame())
end

local craft_scan_in_progress = false

local function scan_craft_frame()
    craft_scan_in_progress = true

    local localized_name, english_name, _, _ = craft_adapter.GetProfessionInfo()
    if not ready(localized_name) or not ready(english_name) then
        craft_scan_in_progress = false
        return
    end

    local skills = scan_skills(craft_adapter)
    if not ready(skills) then
        craft_scan_in_progress = false
        return
    end

    save_skills(--[[---@not nil]] english_name, --[[---@not nil]] skills)
    craft_scan_in_progress = false
end

---@shape _LcpSkillFilterAdapter
---@field GetType fun(): "inv_slot" | "subclass"
---@field GetOptions fun(): string...
---@field GetOptionState fun(index:number): wowboolean
---@field SetOptionState fun(index:number, enable:wowboolean, exclusive:wowboolean): void

---@param adapter _LcpSkillFilterAdapter
---@return _LcpTradeSkillFilterOption[]
local function disable_trade_skill_filters(adapter)
    if adapter.GetOptionState(0) == 1 then
        return {}
    end

    ---@type _LcpTradeSkillFilterOption[]
    local selected_options = {}
    for i, option in ipairs({adapter.GetOptions()}) do
        if adapter.GetOptionState(i) == 1 then
            tinsert(selected_options, {name = option, type = adapter.GetType()})
        end
    end

    adapter.SetOptionState(0, 1, 1)

    return selected_options
end

local function get_trade_skill_frame()
    if TradeSkillFrame == nil then
        LoadAddOn("Blizzard_TradeSkillUI")
    end
    return TradeSkillFrame
end

---@type _LcpSkillFilterAdapter
local inv_slot_filter_adapter = {
    GetType = function() return "inv_slot" end,
    GetOptions = GetTradeSkillInvSlots,
    GetOptionState = GetTradeSkillInvSlotFilter,
    SetOptionState = SetTradeSkillInvSlotFilter,
}

---@type _LcpSkillFilterAdapter
local subclass_filter_adapter = {
    GetType = function() return "subclass" end,
    GetOptions = GetTradeSkillSubClasses,
    GetOptionState = GetTradeSkillSubClassFilter,
    SetOptionState = SetTradeSkillSubClassFilter,
}

---@type _LcpProfessionAdapter
local trade_skill_adapter = {
    GetProfessionInfo = function()
        local name, cur_rank, max_rank = GetTradeSkillLine()
        return name, LOCALIZED_TO_ENGLISH[--[[---@type string]] name], cur_rank, max_rank
    end,
    GetNumSkills = GetNumTradeSkills,
    GetSkillInfo = GetTradeSkillInfo,
    GetSkillItemLink = GetTradeSkillItemLink,
    ExpandHeader = ExpandTradeSkillSubClass,
    CollapseHeader = CollapseTradeSkillSubClass,
    DisableFilters = function()
        for _, adapter in ipairs({inv_slot_filter_adapter, subclass_filter_adapter}) do
            disable_trade_skill_filters(adapter)
        end
    end,
}

local function try_send_trade_skill_frame_show_event()
    local localized_name, english_name, cur_rank, _ = trade_skill_adapter.GetProfessionInfo()
    if not ready(localized_name) or not ready(english_name) or not ready(cur_rank) then
        return false
    end
    send_frame_show_event(--[[---@not nil]] english_name, --[[---@not nil]] localized_name, --[[---@not nil]] cur_rank, get_trade_skill_frame())
end

local trade_skill_scan_in_progress = false

---@return boolean
local function scan_trade_skill_frame()
    trade_skill_scan_in_progress = true

    local localized_name, english_name, _, _ = trade_skill_adapter.GetProfessionInfo()
    if not ready(localized_name) or not ready(english_name) then
        trade_skill_scan_in_progress = false
        return false
    end

    local skills = scan_skills(trade_skill_adapter)
    if not ready(skills) then
        trade_skill_scan_in_progress = false
        return false
    end

    save_skills(--[[---@not nil]] english_name, --[[---@not nil]] skills)

    trade_skill_scan_in_progress = false
    return true
end

local L = ENGLISH_TO_LOCALIZED

local game_locale = GetLocale()
if game_locale == "xxYY" and IS_TURTLE_WOW then
    game_locale = "ptBR"
end

if game_locale == "enUS" or game_locale == "enGB" then
    L["Alchemy"] = "Alchemy"
    L["Blacksmithing"] = "Blacksmithing"
    L["Cooking"] = "Cooking"
    L["Enchanting"] = "Enchanting"
    L["Engineering"] = "Engineering"
    L["First Aid"] = "First Aid"
    L["Leatherworking"] = "Leatherworking"
    L["Mining"] = "Mining"
    L["Poisons"] = "Poisons"
    L["Tailoring"] = "Tailoring"
    if IS_TURTLE_WOW then
        L["Jewelcrafting"] = "Jewelcrafting"
    end
elseif game_locale == "deDE" then
    L["Alchemy"] = "Alchimie"
    L["Blacksmithing"] = "Schmiedekunst"
    L["Cooking"] = "Kochkunst"
    L["Enchanting"] = "Verzauberkunst"
    L["Engineering"] = "Ingenieurskunst"
    L["First Aid"] = "Erste Hilfe"
    L["Leatherworking"] = "Lederverarbeitung"
    L["Mining"] = "Bergbau"
    L["Poisons"] = "Gifte"
    L["Tailoring"] = "Schneiderei"
    if IS_TURTLE_WOW then
        L["Jewelcrafting"] = "Juwelierskunst"
    end
elseif game_locale == "esES" then
    if IS_TURTLE_WOW then
        L["Alchemy"] = "Alquimia"
        L["Blacksmithing"] = "Ferraria"
        L["Cooking"] = "Culinária"
        L["Enchanting"] = "Encantador"
        L["Engineering"] = "Engenharia"
        L["First Aid"] = "Primeiro socorro"
        L["Jewelcrafting"] = "Joalheria"
        L["Leatherworking"] = "Couro"
        L["Mining"] = "Mineração"
        L["Poisons"] = "Venenos"
        L["Tailoring"] = "Alfaiataria"
    else
        L["Alchemy"] = "Alquimia"
        L["Blacksmithing"] = "Herrería"
        L["Cooking"] = "Cocina"
        L["Enchanting"] = "Encantamiento"
        L["Engineering"] = "Ingeniería"
        L["First Aid"] = "Primeros auxilios"
        L["Leatherworking"] = "Peletería"
        L["Mining"] = "Minería"
        L["Poisons"] = "Venenos"
        L["Tailoring"] = "Sastrería"
    end
elseif game_locale == "esMX" then
    L["Alchemy"] = "Alquimia"
    L["Blacksmithing"] = "Herrería"
    L["Cooking"] = "Cocina"
    L["Enchanting"] = "Encantamiento"
    L["Engineering"] = "Ingeniería"
    L["First Aid"] = "Primeros auxilios"
    L["Leatherworking"] = "Peletería"
    L["Mining"] = "Minería"
    L["Poisons"] = "Venenos"
    L["Tailoring"] = "Sastrería"
    if IS_TURTLE_WOW then
        L["Jewelcrafting"] = "Joyería"
    end
elseif game_locale == "frFR" then
    L["Alchemy"] = "Alchimie"
    L["Blacksmithing"] = "Forge"
    L["Cooking"] = "Cuisine"
    L["Enchanting"] = "Enchantement"
    L["Engineering"] = "Ingénieur"
    L["First Aid"] = "Premiers soins"
    L["Leatherworking"] = "Travail du cuir"
    L["Mining"] = "Minage"
    L["Poisons"] = "Poisons"
    L["Tailoring"] = "Couture"
    if IS_TURTLE_WOW then
        L["Jewelcrafting"] = "Joaillerie"
    end
elseif game_locale == "koKR" then
    L["Alchemy"] = "연금술"
    L["Blacksmithing"] = "대장기술"
    L["Cooking"] = "요리"
    L["Enchanting"] = "마법부여"
    L["Engineering"] = "기계공학"
    L["First Aid"] = "응급치료"
    L["Leatherworking"] = "가죽세공"
    L["Mining"] = "채광"
    L["Poisons"] = "독 조제"
    L["Tailoring"] = "재봉술"
    if IS_TURTLE_WOW then
        L["Jewelcrafting"] = "보석세공"
    end
elseif game_locale == "ptBR" then
    if IS_TURTLE_WOW then
        L["Alchemy"] = "Alquimia"
        L["Blacksmithing"] = "Ferraria"
        L["Cooking"] = "Culinária"
        L["Enchanting"] = "Encantador"
        L["Engineering"] = "Engenharia"
        L["First Aid"] = "Primeiro socorro"
        L["Jewelcrafting"] = "Joalheria"
        L["Leatherworking"] = "Couro"
        L["Mining"] = "Mineração"
        L["Poisons"] = "Venenos"
        L["Tailoring"] = "Alfaiataria"
    else
        L["Alchemy"] = "Alquimia"
        L["Blacksmithing"] = "Ferraria"
        L["Cooking"] = "Culinária"
        L["Enchanting"] = "Encantamento"
        L["Engineering"] = "Engenharia"
        L["First Aid"] = "Primeiros Socorros"
        L["Leatherworking"] = "Couraria"
        L["Mining"] = "Mineração"
        L["Poisons"] = "Venenos"
        L["Tailoring"] = "Alfaiataria"
    end
elseif game_locale == "ruRU" then
    L["Alchemy"] = "Алхимия"
    L["Blacksmithing"] = "Кузнечное дело"
    L["Cooking"] = "Кулинария"
    L["Enchanting"] = "Наложение чар"
    L["Engineering"] = "Инженерное дело"
    L["First Aid"] = "Первая помощь"
    L["Leatherworking"] = "Кожевничество"
    L["Mining"] = "Горное дело"
    L["Poisons"] = "Яды"
    L["Tailoring"] = "Портняжное дело"
    if IS_TURTLE_WOW then
        L["Jewelcrafting"] = "Ювелирное дело"
    end
elseif game_locale == "zhCN" then
    if IS_TURTLE_WOW then
        L["Alchemy"] = "炼金术"
        L["Blacksmithing"] = "锻造"
        L["Cooking"] = "烹饪"
        L["Enchanting"] = "附魔"
        L["Engineering"] = "工程学"
        L["First Aid"] = "急救"
        L["Jewelcrafting"] = "珠宝加工"
        L["Leatherworking"] = "制皮"
        L["Mining"] = "采矿"
        L["Poisons"] = "毒药"
        L["Tailoring"] = "裁缝"
    else
        L["Alchemy"] = "炼金术"
        L["Blacksmithing"] = "锻造"
        L["Cooking"] = "烹饪"
        L["Enchanting"] = "附魔"
        L["Engineering"] = "工程学"
        L["First Aid"] = "急救"
        L["Leatherworking"] = "制皮"
        L["Mining"] = "采矿"
        L["Poisons"] = "毒药"
        L["Tailoring"] = "裁缝"
    end
elseif game_locale == "zhTW" then
    L["Alchemy"] = "煉金術"
    L["Blacksmithing"] = "鍛造"
    L["Cooking"] = "烹飪"
    L["Enchanting"] = "附魔"
    L["Engineering"] = "工程學"
    L["First Aid"] = "急救"
    L["Leatherworking"] = "製皮"
    L["Mining"] = "採礦"
    L["Poisons"] = "毒藥"
    L["Tailoring"] = "裁縫"
    if IS_TURTLE_WOW then
        L["Jewelcrafting"] = "珠寶設計"
    end
end

for english_name, localized_name in pairs(ENGLISH_TO_LOCALIZED) do
    LOCALIZED_TO_ENGLISH[localized_name] = english_name
end

---@param frame Frame
---@return table
local function as_table(frame)
    return --[[---@type table]] frame
end

local was_third_party_on_hide_hooked = false

---@param addon LcpThirdPartyProfessionFrameAddon
local function hook_third_party_on_hide(addon)
    if not is_third_party_loaded(addon) then
        return
    end

    ---@type Frame
    local frame = getglobal(addon.frame_name)
    if frame == nil then
        return
    end
    if as_table(frame).is_hooked_by_lcp == true then
        was_third_party_on_hide_hooked = true
        return
    end

    local on_hide = frame:GetScript("OnHide")
    frame:SetScript("OnHide", function()
        if on_hide ~= nil then
            (--[[---@not nil]] on_hide)()
        end
        send_frame_close_event(frame)
    end)

    as_table(frame).is_hooked_by_lcp = true
    was_third_party_on_hide_hooked = true
end

if lib.event_frame ~= nil then
    lib.event_frame:UnregisterAllEvents()
    lib.event_frame:SetScript("OnUpdate", nil)
    lib.event_frame:SetScript("OnEvent", nil)
end

local render_pseudo_time = 0
local craft_frame_successfully_scanned_at = 0
local trade_skill_frame_successfully_scanned_at = 0

lib.event_frame = CreateFrame("Frame")

lib.event_frame:SetScript("OnUpdate", function ()
    -- Third-party addons can trigger multiple UPDATE events
    -- so we count rendered frames to not scan skills more than once per frame
    render_pseudo_time = render_pseudo_time + 1
    if render_pseudo_time >= 100 then
        render_pseudo_time = 1
    end
end)

lib.event_frame:SetScript("OnEvent", function()
    local do_craft_scan = false
    local do_trade_skill_scan = false

    if event == "ADDON_LOADED" then
        for _, addon in ipairs(SUPPORTED_THIRD_PARTY_ADDONS) do
            if addon.name == arg1 and addon.opens_and_closes_vanilla_profession_frames then
                hook_third_party_on_hide(addon)
            end
        end
    elseif event == "CRAFT_SHOW" then
        try_send_craft_frame_show_event()
        do_craft_scan = true
    elseif event == "CRAFT_UPDATE" then
        if not craft_scan_in_progress then
            -- Learned new skill AND craft frame is opened
            do_craft_scan = true
        end
    elseif event == "CRAFT_CLOSE" then
        if not was_third_party_on_hide_hooked then
            send_frame_close_event(get_craft_frame())
        end
    elseif event == "TRADE_SKILL_SHOW" then
        try_send_trade_skill_frame_show_event()
        do_trade_skill_scan = true
    elseif event == "TRADE_SKILL_UPDATE" then
        if not trade_skill_scan_in_progress then
            -- Learned new skill AND trade skill frame is opened
            do_trade_skill_scan = true
        end
    elseif event == "TRADE_SKILL_CLOSE" then
        if not was_third_party_on_hide_hooked then
            send_frame_close_event(get_trade_skill_frame())
        end
    elseif event == "CHARACTER_POINTS_CHANGED" then
        -- Learned or unlearned profession/specialization
        forget_obsolete_professions(lib:GetPlayerProfessions())
    elseif event == "SKILL_LINES_CHANGED" then
        -- Raised the profession skill level OR learned/unlearned profession/specialization
        do_craft_scan = true
        do_trade_skill_scan = true
    end

    if do_craft_scan and craft_frame_successfully_scanned_at ~= render_pseudo_time then
        if scan_craft_frame() then
            craft_frame_successfully_scanned_at = render_pseudo_time
        end
    end

    if do_trade_skill_scan and trade_skill_frame_successfully_scanned_at ~= render_pseudo_time then
        if scan_trade_skill_frame() then
            trade_skill_frame_successfully_scanned_at = render_pseudo_time
        end
    end
end)
lib.event_frame:RegisterEvent("ADDON_LOADED")
lib.event_frame:RegisterEvent("CRAFT_SHOW")
lib.event_frame:RegisterEvent("CRAFT_UPDATE")
lib.event_frame:RegisterEvent("CRAFT_CLOSE")
lib.event_frame:RegisterEvent("TRADE_SKILL_SHOW")
lib.event_frame:RegisterEvent("TRADE_SKILL_UPDATE")
lib.event_frame:RegisterEvent("TRADE_SKILL_CLOSE")
lib.event_frame:RegisterEvent("CHARACTER_POINTS_CHANGED")
lib.event_frame:RegisterEvent("SKILL_LINES_CHANGED")

for _, addon in ipairs(SUPPORTED_THIRD_PARTY_ADDONS) do
    if is_third_party_loaded(addon) and addon.opens_and_closes_vanilla_profession_frames then
        hook_third_party_on_hide(addon)
    end
end
