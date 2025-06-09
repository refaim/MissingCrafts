local lib = LibCraftsGetLibrary()
local name, locale, version = "Locales-Professions", "zhTW", 3
local module = --[[---@type LcLocaleModule]] lib:RegisterLocaleModule(name, locale, version)
if not module then return end

local L = module:GetStrings()
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

if lib.env.is_turtle_wow then
    L["Jewelcrafting"] = "珠寶設計"
end
