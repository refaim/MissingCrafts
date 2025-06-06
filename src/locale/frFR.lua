setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("frFR", false)
if L == nil then return end

L.recipe_tooltip_already_known = "Déjà connu"
L.recipe_tooltip_can_learn_now = "Peut apprendre"
L.recipe_tooltip_can_learn_later = "Pourra apprendre plus tard"

L.craft_tooltip_source = "Source"
L.craft_source_chest = "Boîte"
L.craft_source_craft = "Artisanat"
L.craft_source_drop = "Ramass\195\169"
L.craft_source_fishing = "Pêche"
L.craft_source_gift = "Cadeau"
L.craft_source_pickpocketing = "Vol à la tire"
L.craft_source_quest = "Qu\195\170te"
L.craft_source_trainer = "Instructeur"
L.craft_source_unknown = "Inconnu"
L.craft_source_vendor = "Marchand"
L.craft_source_world_object = "Objet"
