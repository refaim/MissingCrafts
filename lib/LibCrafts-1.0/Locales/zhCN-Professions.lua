local lib = LibCraftsGetLibrary()
local name, locale, version = "Locales-Professions", "zhCN", 3
local module = --[[---@type LcLocaleModule]] lib:RegisterLocaleModule(name, locale, version)
if not module then return end

local L = module:GetStrings()
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

if lib.env.is_turtle_wow then
    L["Jewelcrafting"] = "珠宝加工"
end
