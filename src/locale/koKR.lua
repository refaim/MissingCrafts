setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("koKR", false)
if L == nil then return end

L.recipe_tooltip_already_known = "이미 알고 있음"
L.recipe_tooltip_can_learn_now = "지금 배울 수 있음"
L.recipe_tooltip_can_learn_later = "나중에 배울 수 있음"

L.craft_tooltip_source = "소스"
L.craft_source_chest = "상자"
L.craft_source_craft = "제작"
L.craft_source_drop = "드롭"
L.craft_source_fishing = "낙시"
L.craft_source_gift = "선물"
L.craft_source_pickpocketing = "소매치기"
L.craft_source_quest = "퀴스트"
L.craft_source_trainer = "훈련사"
L.craft_source_unknown = "알 수 없음"
L.craft_source_vendor = "상인"
L.craft_source_world_object = "오브젝트"
