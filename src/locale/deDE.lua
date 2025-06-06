setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("deDE", false)
if L == nil then return end

L.recipe_tooltip_already_known = "Bereits bekannt"
L.recipe_tooltip_can_learn_now = "Kann jetzt lernen"
L.recipe_tooltip_can_learn_later = "Kann später lernen"

L.craft_tooltip_source = "Quelle"
L.craft_source_chest = "Truhe"
L.craft_source_craft = "Handwerk"
L.craft_source_drop = "Drop"
L.craft_source_fishing = "Angeln"
L.craft_source_gift = "Geschenk"
L.craft_source_pickpocketing = "Taschendiebstahl"
L.craft_source_quest = "Quest"
L.craft_source_trainer = "Lehrer"
L.craft_source_unknown = "Unbekannt"
L.craft_source_vendor = "H\195\164ndler"
L.craft_source_world_object = "Objekt"
