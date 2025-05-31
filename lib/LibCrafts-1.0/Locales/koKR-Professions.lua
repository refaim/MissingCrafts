local lib = LibCraftsGetLibrary()
local name, locale, version = "Locales-Professions", "koKR", 2
local module = --[[---@type LcLocaleModule]] lib:RegisterLocaleModule(name, locale, version)
if not module then return end

local L = module:GetStrings()
L["Alchemy"] = "연금술"
L["Blacksmithing"] = "대장기술"
L["Cooking"] = "요리"
L["Enchanting"] = "마법부여"
L["Engineering"] = "기계공학"
L["First Aid"] = "응급치료"
L["Leatherworking"] = "가죽 세공"
L["Mining"] = "채광"
L["Poisons"] = "독"
L["Tailoring"] = "재봉술"

if lib.env.is_turtle_wow then
    L["Jewelcrafting"] = "보석세공"
end
