setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("enUS", true)
if L == nil then return end

L.tooltip_already_known = "Already known"
L.tooltip_can_learn_now = "Can learn now"
L.tooltip_can_learn_later = "Can learn later"
