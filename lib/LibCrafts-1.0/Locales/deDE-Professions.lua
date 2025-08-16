local lib = LibCraftsGetLibrary()
local name, locale, version = "Locales-Professions", "deDE", 4
local module = --[[---@type LcLocaleModule]] lib:RegisterLocaleModule(name, locale, version)
if not module then return end

local L = module:GetStrings()
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

if lib.env.is_turtle_wow then
    L["Disguise"] = "Verkleidung"
    L["Jewelcrafting"] = "Juwelierskunst"
end
