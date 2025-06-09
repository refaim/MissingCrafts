local lib = LibCraftsGetLibrary()
local name, locale, version = "Locales-Professions", "enUS", 3
local module = --[[---@type LcLocaleModule]] lib:RegisterLocaleModule(name, locale, version)
if not module then return end

local L = module:GetStrings()
L["Alchemy"] = true
L["Blacksmithing"] = true
L["Cooking"] = true
L["Enchanting"] = true
L["Engineering"] = true
L["First Aid"] = true
L["Leatherworking"] = true
L["Mining"] = true
L["Poisons"] = true
L["Tailoring"] = true

if lib.env.is_turtle_wow then
    L["Jewelcrafting"] = true
end
