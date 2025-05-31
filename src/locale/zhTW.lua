setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("zhTW", false)
if L == nil then return end

L.tooltip_already_known = "已經學會"
L.tooltip_can_learn_now = "可以學習"
L.tooltip_can_learn_later = "以後可以學習"
