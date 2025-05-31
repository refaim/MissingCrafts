setfenv(1, MissingCrafts)

---@shape MissingCraftsLocale
---@field tooltip_already_known string
---@field tooltip_can_learn_now string
---@field tooltip_can_learn_later string

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
