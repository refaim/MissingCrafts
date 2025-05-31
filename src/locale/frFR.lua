setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("frFR", false)
if L == nil then return end

L.tooltip_already_known = "Déjà connu"
L.tooltip_can_learn_now = "Peut apprendre"
L.tooltip_can_learn_later = "Pourra apprendre plus tard"
