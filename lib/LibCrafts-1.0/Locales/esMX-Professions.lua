local lib = LibCraftsGetLibrary()
local name, locale, version = "Locales-Professions", "esMX", 3
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
