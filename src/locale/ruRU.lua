setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("ruRU", false)
if L == nil then return end

L.recipe_tooltip_already_known = "Уже знает"
L.recipe_tooltip_can_learn_now = "Может изучить"
L.recipe_tooltip_can_learn_later = "Сможет изучить позже"

L.craft_tooltip_source = "Источник"
L.craft_source_chest = "Сундуки"
L.craft_source_craft = "Крафт"
L.craft_source_drop = "Дроп"
L.craft_source_fishing = "Рыбалка"
L.craft_source_gift = "Подарок"
L.craft_source_pickpocketing = "Воровство"
L.craft_source_quest = "Задание"
L.craft_source_trainer = "Тренер"
L.craft_source_unknown = "Неизвестно"
L.craft_source_vendor = "Продавец"
L.craft_source_world_object = "Объект"
