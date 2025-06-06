setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("ptBR", false)
if L == nil then return end

L.recipe_tooltip_already_known = "Já conhece"
L.recipe_tooltip_can_learn_now = "Pode aprender"
L.recipe_tooltip_can_learn_later = "Poderá aprender depois"

L.craft_tooltip_source = "Fonte"
L.craft_source_chest = "Baú"
L.craft_source_craft = "Artesanato"
L.craft_source_drop = "Drop"
L.craft_source_fishing = "Pesca"
L.craft_source_gift = "Presente"
L.craft_source_pickpocketing = "Furto"
L.craft_source_quest = "Missão"
L.craft_source_trainer = "Instrutor"
L.craft_source_unknown = "Desconhecido"
L.craft_source_vendor = "Vendedor"
L.craft_source_world_object = "Objeto"
