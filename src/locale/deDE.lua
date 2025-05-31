setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("deDE", false)
if L == nil then return end

L.tooltip_already_known = "Bereits bekannt"
L.tooltip_can_learn_now = "Kann jetzt lernen"
L.tooltip_can_learn_later = "Kann später lernen"
