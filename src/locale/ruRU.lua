setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("ruRU", false)
if L == nil then return end

L.tooltip_already_known = "Уже знает"
L.tooltip_can_learn_now = "Может изучить"
L.tooltip_can_learn_later = "Сможет изучить позже"
