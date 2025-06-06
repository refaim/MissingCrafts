setfenv(1, MissingCrafts)

---@shape MissingCraftsLocale
---@field recipe_tooltip_already_known string
---@field recipe_tooltip_can_learn_now string
---@field recipe_tooltip_can_learn_later string
---@field craft_tooltip_source string
---@field craft_source_chest string
---@field craft_source_craft string
---@field craft_source_drop string
---@field craft_source_fishing string
---@field craft_source_gift string
---@field craft_source_pickpocketing string
---@field craft_source_quest string
---@field craft_source_trainer string
---@field craft_source_unknown string
---@field craft_source_vendor string
---@field craft_source_world_object string

---@param code LocaleCode
---@param is_default boolean
---@return MissingCraftsLocale|nil
function NewLocale(code, is_default)
    ---@type LibStubDef
    local LibStub = getglobal("LibStub")
    assert(LibStub ~= nil, "Cannot find instance of a LibStub")

    local AceLocale, _ = LibStub("AceLocale-3.0")
    local L = --[[---@type MissingCraftsLocale]] AceLocale:NewLocale(ADDON_NAME, code, is_default)
    if is_default then
        assert(L ~= nil)
    end

    return L
end
