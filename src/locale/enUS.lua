setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("enUS", true)
if L == nil then return end

L.recipe_tooltip_already_known = "Already known"
L.recipe_tooltip_can_learn_now = "Can learn now"
L.recipe_tooltip_can_learn_later = "Can learn later"

L.craft_tooltip_source = "Source"
L.craft_source_chest = "Chest"
L.craft_source_craft = "Craft"
L.craft_source_drop = "Drop"
L.craft_source_fishing = "Fishing"
L.craft_source_gift = "Gift"
L.craft_source_pickpocketing = "Pickpocketing"
L.craft_source_quest = "Quest"
L.craft_source_trainer = "Trainer"
L.craft_source_unknown = "Unknown"
L.craft_source_vendor = "Vendor"
L.craft_source_world_object = "Object"

L.craft_item_character_level = "Level"
