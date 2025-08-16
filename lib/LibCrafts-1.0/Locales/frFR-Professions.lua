local lib = LibCraftsGetLibrary()
local name, locale, version = "Locales-Professions", "frFR", 5
local module = --[[---@type LcLocaleModule]] lib:RegisterLocaleModule(name, locale, version)
if not module then return end

local L = module:GetStrings()
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

if lib.env.is_turtle_wow then
    L["Disguise"] = "Déguisement"
    L["Jewelcrafting"] = "Joaillerie"
end
