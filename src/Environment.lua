--[[
Use the addon's private table as an isolated environment.
By using {__index = _G} metatable we're allowing all global lookups to transparently fallback to the game-wide
globals table, while the private table itself will act as a thin layer on top of the game-wide globals table,
allowing us to have our own global variables isolated from the rest of the game.

This accomplishes several goals:
1. Prevents addon-specific "globals" from leaking to game-wide global namespace _G
2. Optionally retains the ability to access these "globals" via the only exposed global variable "MissingCrafts"
3. Allows us to make overrides for WoW API global functions and variables without actually touching
   the real global namespace, making these overrides visible only to this addon.

setfenv(1, MissingCrafts) must be added to every .lua file to allow it to work within this environment,
and this Environment file must be loaded before all others
]]

local _G = getfenv(0)
MissingCrafts = setmetatable({_G = _G}, {__index = _G})

setfenv(1, MissingCrafts)

ADDON_NAME = "MissingCrafts"
ADDON_VERSION = "1.2"

---@param t table
function erase(t)
    setmetatable(t, nil)
    for key, _ in pairs(t) do
        t[key] = nil
    end
    table.setn(t, 0)
end

---@generic K
---@generic T
---@param t table<K, T>
---@param key K
---@return T|nil
function tpop(t, key)
    local value = t[key]
    t[key] = nil
    return value
end
