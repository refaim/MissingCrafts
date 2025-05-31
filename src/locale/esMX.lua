setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("esMX", false)
if L == nil then return end

L.tooltip_already_known = "Ya conoce"
L.tooltip_can_learn_now = "Puede aprender"
L.tooltip_can_learn_later = "Podrá aprender más tarde"
