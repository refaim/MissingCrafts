setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("koKR", false)
if L == nil then return end

L.tooltip_already_known = "이미 알고 있음"
L.tooltip_can_learn_now = "지금 배울 수 있음"
L.tooltip_can_learn_later = "나중에 배울 수 있음"
