setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("zhCN", false)
if L == nil then return end

L.recipe_tooltip_already_known = "已经学会"
L.recipe_tooltip_can_learn_now = "可以学习"
L.recipe_tooltip_can_learn_later = "以后可以学习"

L.craft_tooltip_source = "来源"
L.craft_source_chest = "宝箱"
L.craft_source_craft = "制作"
L.craft_source_drop = "掉落"
L.craft_source_fishing = "钓鱼"
L.craft_source_gift = "礼物"
L.craft_source_pickpocketing = "撓窃"
L.craft_source_quest = "任务"
L.craft_source_trainer = "训练师"
L.craft_source_unknown = "未知"
L.craft_source_vendor = "商人"
L.craft_source_world_object = "物体"
