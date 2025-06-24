setfenv(1, MissingCrafts)

---@return boolean
local function IsSuperWoWActive()
    return getglobal("SetAutoloot") ~= nil
end

---@return number
local function GetSuperWoWVersion()
    local version = tonumber(getglobal("SUPERWOW_VERSION") or "0.0")
    return version or 0
end

---@param spellId number
---@return string
function GetSpellLink(spellId)
    assert(type(spellId) == "number")

    local prefix = "enchant:"
    if IsSuperWoWActive() and GetSuperWoWVersion() <= 1.2 then
        -- https://github.com/balakethelock/SuperWoW/wiki/Changelog#07112024--12
        prefix = "spell:"
    end

    return prefix .. tostring(spellId)
end
