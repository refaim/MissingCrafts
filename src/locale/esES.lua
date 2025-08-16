setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("esES", false)
if L == nil then return end

L.recipe_tooltip_already_known = "Ya conoce"
L.recipe_tooltip_can_learn_now = "Puede aprender"
L.recipe_tooltip_can_learn_later = "Podrá aprender más tarde"

L.craft_tooltip_source = "Fuente"
L.craft_source_chest = "Cofre"
L.craft_source_craft = "Artesanía"
L.craft_source_drop = "Botín"
L.craft_source_fishing = "Pesca"
L.craft_source_gift = "Regalo"
L.craft_source_pickpocketing = "Carterista"
L.craft_source_quest = "Misión"
L.craft_source_trainer = "Instructor"
L.craft_source_unknown = "Desconocido"
L.craft_source_vendor = "Vendedor"
L.craft_source_world_object = "Objeto"

L.craft_item_character_level = "Nivel"
