local lib = LibCraftsGetLibrary()
local name, locale, version = "Locales-Professions", "esES", 4
local module = --[[---@type LcLocaleModule]] lib:RegisterLocaleModule(name, locale, version)
if not module then return end

local L = module:GetStrings()
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

if lib.env.is_turtle_wow then
    L["Blacksmithing"] = "Ferraria"
    L["Cooking"] = "Culinária"
    L["Enchanting"] = "Encantador"
    L["Engineering"] = "Engenharia"
    L["First Aid"] = "Primeiro socorro"
    L["Jewelcrafting"] = "Joalheria"
    L["Leatherworking"] = "Couro"
    L["Mining"] = "Mineração"
    L["Tailoring"] = "Alfaiataria"
end
