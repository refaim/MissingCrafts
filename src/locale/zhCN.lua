setfenv(1, MissingCrafts)

local L = --[[---@type MissingCraftsLocale]] NewLocale("zhCN", false)
if L == nil then return end

L.tooltip_already_known = "已经学会"
L.tooltip_can_learn_now = "可以学习"
L.tooltip_can_learn_later = "以后可以学习"
