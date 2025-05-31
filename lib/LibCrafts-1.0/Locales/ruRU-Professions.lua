local lib = LibCraftsGetLibrary()
local name, locale, version = "Locales-Professions", "ruRU", 2
local module = --[[---@type LcLocaleModule]] lib:RegisterLocaleModule(name, locale, version)
if not module then return end

local L = module:GetStrings()
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

if lib.env.is_turtle_wow then
    L["Jewelcrafting"] = "Ювелирное дело"
end
