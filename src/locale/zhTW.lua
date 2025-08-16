setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("zhTW", false)
if L == nil then return end

L.recipe_tooltip_already_known = "已經學會"
L.recipe_tooltip_can_learn_now = "可以學習"
L.recipe_tooltip_can_learn_later = "以後可以學習"

L.craft_tooltip_source = "來源"
L.craft_source_chest = "寶箱"
L.craft_source_craft = "製作"
L.craft_source_drop = "掉落"
L.craft_source_fishing = "釣魚"
L.craft_source_gift = "禮物"
L.craft_source_pickpocketing = "撓窃"
L.craft_source_quest = "任務"
L.craft_source_trainer = "訓練師"
L.craft_source_unknown = "未知"
L.craft_source_vendor = "商人"
L.craft_source_world_object = "物體"

L.craft_item_character_level = "等級"
