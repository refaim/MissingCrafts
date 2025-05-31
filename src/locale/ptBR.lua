setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("ptBR", false)
if L == nil then return end

L.tooltip_already_known = "Já conhece"
L.tooltip_can_learn_now = "Pode aprender"
L.tooltip_can_learn_later = "Poderá aprender depois"
