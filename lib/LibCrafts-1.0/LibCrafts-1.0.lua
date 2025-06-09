--[[
    Name: LibCrafts-1.0
    Developed by: Refaim (rkharito@yandex.ru, https://github.com/refaim/)
    Website: https://github.com/refaim/LibCrafts-1.0
    Description: A library designed to provide a database crafting spells, recipes, reagents etc.
    Dependencies: LibStub
    Compatibility: Vanilla (1.12.1), Turtle (1.17.2)
]]

---@type LibStubDef
local LibStub = getglobal("LibStub")
assert(LibStub ~= nil)

local untyped_lib, _ = LibStub:NewLibrary("LibCrafts-1.0", 9)
if not untyped_lib then return end

---@class LibCrafts
---@field env LcEnvironment
---@field constants LcConstants
---@field modules_by_name table<string, LcModule>
---@field spell_id_to_craft table<number, LcCraft>
---@field reagent_id_to_spell_ids_set table<number, table<number, boolean>>
---@field recipe_id_to_spell_ids_set table<number, table<number, boolean>>
---@field localized_profession_name_to_spell_ids_set table<string, table<number, boolean>>

local lib = --[[---@type LibCrafts]] untyped_lib
lib.modules_by_name = lib.modules_by_name or {}
lib.spell_id_to_craft = lib.spell_id_to_craft or {}
lib.reagent_id_to_spell_ids_set = lib.reagent_id_to_spell_ids_set or {}
lib.recipe_id_to_spell_ids_set = lib.recipe_id_to_spell_ids_set or {}
lib.localized_profession_name_to_spell_ids_set = lib.localized_profession_name_to_spell_ids_set or {}

---@type table[]
local data_tables = {
    lib.modules_by_name,
    lib.spell_id_to_craft,
    lib.reagent_id_to_spell_ids_set,
    lib.recipe_id_to_spell_ids_set,
    lib.localized_profession_name_to_spell_ids_set,
}

local all_data_tables_filled = true
for _, data_table in ipairs(data_tables) do
    if type(data_table) ~= "table" or next(data_table) == nil then
        all_data_tables_filled = false
        break
    end
end

if not all_data_tables_filled then
    lib.modules_by_name = {}
    lib.spell_id_to_craft = {}
    lib.reagent_id_to_spell_ids_set = {}
    lib.recipe_id_to_spell_ids_set = {}
    lib.localized_profession_name_to_spell_ids_set = {}
end

lib.env = {
    is_debug = false,
    is_turtle_wow = getglobal("LFT") ~= nil,
    is_super_wow_loaded = getglobal("SpellInfo") ~= nil,
}

lib.constants = {
    qualities = {
        Poor = 101,
        Common = 102,
        Uncommon = 103,
        Rare = 104,
        Epic = 105,
        Legendary = 106,
    },
    spell_sources = {
        LearnedAutomatically = 201,
        Quest = 202,
        Trainer = 203,
        WorldObject = 204,
    },
    recipe_sources = {
        Chest = 301,
        CraftedByEngineer = 302,
        Drop = 303,
        Fishing = 304,
        GiftedToReturningEngineers = 305,
        Pickpocketing = 306,
        Quest = 307,
        Vendor = 308,
    },
}

---@shape LcEnvironment
---@field is_debug boolean
---@field is_turtle_wow boolean
---@field is_super_wow_loaded boolean

---@shape LcConstants
---@field qualities LcItemQualities
---@field spell_sources LcSpellSources
---@field recipe_sources LcRecipeSources

---@shape LcItemQualities
---@field Poor 101
---@field Common 102
---@field Uncommon 103
---@field Rare 104
---@field Epic 105
---@field Legendary 106

---@alias LcItemQuality 101 | 102 | 103 | 104 | 105 | 106

---@shape LcSpellSources
---@field LearnedAutomatically 201
---@field Quest 202
---@field Trainer 203
---@field WorldObject 204

---@alias LcSpellSource 201 | 202 | 203 | 204

---@shape LcRecipeSources
---@field Chest 301
---@field CraftedByEngineer 302
---@field Drop 303
---@field Fishing 304
---@field GiftedToReturningEngineers 305
---@field Pickpocketing 306
---@field Quest 307
---@field Vendor 308

---@alias LcRecipeSource 301 | 302 | 303 | 304 | 305 | 306 | 307 | 308

---@shape LcItem
---@field id number

---@shape LcRecipe: LcItem
---@field quality LcItemQuality
---@field sources LcRecipeSource[]

---@class LcCraft
---@field en_profession_name string
---@field localized_profession_name string
---@field spell_id number
---@field localized_spell_name string
---@field skill_level number
---@field result LcItem|nil
---@field sources LcSpellSource[]
---@field recipes LcRecipe[]
---@field reagent_id_to_count table<number, number>
---@field was_enriched boolean
local Craft = {}

---@param value string
---@param locale_module_name string
---@return string
local function translate_from_en_to_game_locale(value, locale_module_name)
    ---@type table<string, string|boolean>
    local L = {}
    local locale_module = --[[---@type LcLocaleModule]] lib.modules_by_name[locale_module_name]
    if locale_module ~= nil then
        L = locale_module:GetStrings()
    end

    local localized_value = L[value]
    if type(localized_value) ~= "string" or localized_value == "" then
        localized_value = value
    end

    return --[[---@type string]] localized_value
end

---@param craft LcCraft
---@return LcCraft
local function enrich(craft)
    if not lib.env.is_super_wow_loaded or craft.was_enriched then
        return craft
    end

    local spell_name, _, _, _, _ = SpellInfo(craft.spell_id)
    if type(spell_name) == "string" then
        craft.localized_spell_name = spell_name
        craft.was_enriched = true
    end

    return craft
end

---
--- Returns a list of crafts by reagent item id.
---
---@param item_id number
---@return LcCraft[]
function lib:GetCraftsByReagentId(item_id)
    local crafts = {}
    for spell_id, _ in pairs(self.reagent_id_to_spell_ids_set[item_id] or {}) do
        tinsert(crafts, enrich(self.spell_id_to_craft[spell_id]))
    end
    return crafts
end

---
--- Returns a list of crafts by recipe item id.
---
---@param item_id number
---@return LcCraft[]
function lib:GetCraftsByRecipeId(item_id)
    local crafts = {}
    for spell_id, _ in pairs(self.recipe_id_to_spell_ids_set[item_id] or {}) do
        tinsert(crafts, enrich(self.spell_id_to_craft[spell_id]))
    end
    return crafts
end

---
--- Returns a list of crafts by profession name in current game locale (or in English).
---
---@param profession string
---@return LcCraft[]
function lib:GetCraftsByProfession(profession)
    local d = self.localized_profession_name_to_spell_ids_set
    local spell_ids_set = d[profession] or d[translate_from_en_to_game_locale(profession, "Locales-Professions")] or {}
    local crafts = {}
    for spell_id, _ in pairs(spell_ids_set) do
        tinsert(crafts, enrich(self.spell_id_to_craft[spell_id]))
    end
    return crafts
end

---@class LcModule
---@field name string
---@field version number

---@class LcProfessionModule: LcModule
---@field en_profession_name string
---@field localized_profession_name string
local ProfessionModule = {}

---@class LcLocaleModule: LcModule
---@field en_to_any table<string, string|boolean>
local LocaleModule = {}

---@return table<string, string|boolean>
function LocaleModule:GetStrings()
    return self.en_to_any
end

---@param name string
---@param version number
---@return boolean
local function module_registered(name, version)
    local current_version = (lib.modules_by_name[name] or {}).version
    if current_version ~= nil and current_version >= version then
        return true
    end
    return false
end

---@param name string
---@param version number
---@param en_profession_name string
---@return LcProfessionModule|nil
function lib:RegisterProfessionModule(name, version, en_profession_name)
    if self.env.is_debug then
        assert(type(name) == "string" and name ~= "")
        assert(type(version) == "number" and version > 0)
        assert(type(en_profession_name) == "string" and en_profession_name ~= "")
    end

    if module_registered(name, version) then
        return nil
    end

    local object = {}
    setmetatable(object, {__index = ProfessionModule})

    local module = --[[---@type LcProfessionModule]] object
    module.name = name
    module.version = version
    module.en_profession_name = en_profession_name
    module.localized_profession_name = translate_from_en_to_game_locale(en_profession_name, "Locales-Professions")

    self.modules_by_name[name] = module
    return module
end

---@param name string
---@param locale string
---@param version number
---@return LcLocaleModule|nil
function lib:RegisterLocaleModule(name, locale, version)
    if self.env.is_debug then
        assert(type(name) == "string" and locale ~= "")
        assert(type(locale) == "string" and locale ~= "")
        assert(type(version) == "number" and version > 0)
    end

    local game_locale = GetLocale()
    if game_locale == "xxYY" and lib.env.is_turtle_wow then
        game_locale = "ptBR"
    end

    if locale == "enGB" then
        locale = "enUS"
    end
    if locale ~= game_locale or module_registered(name, version) then
        return nil
    end

    local object = {}
    setmetatable(object, {__index = LocaleModule})

    local module = --[[---@type LcLocaleModule]] object
    module.name = name
    module.version = version
    module.en_to_any = {}

    self.modules_by_name[name] = module
    return module
end

---@type table<number, boolean>
local SPELL_SOURCE_SET = {}
for _, source in pairs(lib.constants.spell_sources) do
    SPELL_SOURCE_SET[source] = true
end

---@param spell_id number
---@param spell_name string
---@param skill_level number
---@param sources LcSpellSource[]
---@return LcCraft
function ProfessionModule:NewCraft(spell_id, spell_name, skill_level, sources)
    if lib.env.is_debug then
        assert(type(spell_id) == "number" and spell_id > 0)
        assert(type(spell_name) == "string" and spell_name ~= "")
        assert(type(skill_level) == "number" and skill_level > 0)
        assert(type(sources) == "table")
        for _, source in ipairs(sources) do
            assert(type(source) == "number" and SPELL_SOURCE_SET[source] ~= nil)
        end
    end

    local object = {}
    setmetatable(object, {__index = Craft})

    local craft = --[[---@type LcCraft]] object
    craft.en_profession_name = self.en_profession_name
    craft.localized_profession_name = self.localized_profession_name
    craft.spell_id = spell_id
    craft.localized_spell_name = translate_from_en_to_game_locale(spell_name, "Locales-Spells")
    craft.skill_level = skill_level
    craft.sources = sources
    craft.recipes = {}
    craft.reagent_id_to_count = {}

    return craft
end

---@type table<number, boolean>
local ITEM_QUALITY_SET = {}
for _, quality in pairs(lib.constants.qualities) do
    ITEM_QUALITY_SET[quality] = true
end

---@type table<number, boolean>
local RECIPE_SOURCE_SET = {}
for _, source in pairs(lib.constants.recipe_sources) do
    RECIPE_SOURCE_SET[source] = true
end

---@param id number
---@param quality LcItemQuality
---@param sources LcRecipeSource[]
---@return self
function Craft:AddRecipe(id, quality, sources)
    if lib.env.is_debug then
        assert(type(id) == "number" and id > 0)
        assert(type(quality) == "number" and ITEM_QUALITY_SET[quality] ~= nil)
        assert(type(sources) == "table" and getn(sources) > 0)
        for _, source in ipairs(sources) do
            assert(type(source) == "number" and RECIPE_SOURCE_SET[source] ~= nil)
        end
        for _, recipe in ipairs(self.recipes) do
            assert(recipe.id ~= id)
        end
    end

    tinsert(self.recipes, {id = id, quality = quality, sources = sources})

    return self
end

---@param item_id number
---@return self
function Craft:SetResult(item_id)
    if lib.env.is_debug then
        assert(type(item_id) == "number" and item_id > 0)
        assert(self.result == nil)
    end

    self.result = {id = item_id }

    return self
end

---@param id number
---@param count number
---@return self
function Craft:AddReagent(id, count)
    if lib.env.is_debug then
        assert(type(id) == "number" and id > 0)
        assert(type(count) == "number" and count > 0)
        assert(self.reagent_id_to_count[id] == nil)
    end

    self.reagent_id_to_count[id] = count

    return self
end

---@generic K
---@param t table<K, table<number, boolean>>
---@param key K
---@return table<number, boolean>
local function get_or_create_set(t, key)
    local set = t[key]
    if set == nil then
        set = {}
        t[key] = set
    end
    return set
end

function Craft:Save()
    if lib.env.is_debug then
        assert(next(self.sources) ~= nil or next(self.recipes) ~= nil)
        assert(next(self.reagent_id_to_count) ~= nil)
    end

    self.was_enriched = false
    if lib.env.is_super_wow_loaded then
        enrich(self)
    end

    local old_craft = lib.spell_id_to_craft[self.spell_id]
    if old_craft ~= nil then
        for reagent_id, _ in pairs(old_craft.reagent_id_to_count) do
            lib.reagent_id_to_spell_ids_set[reagent_id][self.spell_id] = nil
        end

        for _, recipe in ipairs(old_craft.recipes) do
            lib.recipe_id_to_spell_ids_set[recipe.id][self.spell_id] = nil
        end

        lib.localized_profession_name_to_spell_ids_set[old_craft.localized_profession_name][self.spell_id] = nil
    end

    lib.spell_id_to_craft[self.spell_id] = self

    for reagent_id, _ in pairs(self.reagent_id_to_count) do
        get_or_create_set(lib.reagent_id_to_spell_ids_set, reagent_id)[self.spell_id] = true
    end

    for _, recipe in ipairs(self.recipes) do
        get_or_create_set(lib.recipe_id_to_spell_ids_set, recipe.id)[self.spell_id] = true
    end

    get_or_create_set(lib.localized_profession_name_to_spell_ids_set, self.localized_profession_name)[self.spell_id] = true
end

---@return LibCrafts
function LibCraftsGetLibrary()
    return lib
end
