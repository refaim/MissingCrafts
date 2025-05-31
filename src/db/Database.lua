setfenv(1, MissingCrafts)

---@class Database
---@field _db DatabaseSavedVariable
Database = {}

---@shape DatabaseProfession
---@field rank number
---@field knownLocalizedSkillNames string[]

---@shape DatabaseCharacter
---@field realm string
---@field english_faction string
---@field localized_faction string
---@field name string
---@field professionsByLocalizedName table<string, DatabaseProfession>

---@shape DatabaseSavedVariable
---@field global {realmToNameToCharacter: table<string, table<string, DatabaseCharacter>>}

---@param AceDB LibAceDBDef
---@return self
function Database:Create(AceDB)
    ---@type DatabaseSavedVariable
    local defaults = {
        global = {
            realmToNameToCharacter = {
                ["*"] = {
                    ["*"] = {
                        ["realm"] = "",
                        ["english_faction"] = "",
                        ["localized_faction"] = "",
                        ["name"] = "",
                        ["professionsByLocalizedName"] = {}
                    }
                },
            },
        },
    }

    self._db = --[[---@type DatabaseSavedVariable]] AceDB:New("MissingCraftsDatabase", defaults)

    return self
end

---@return DatabaseCharacter[]
function Database:GetCharacters()
    self:GetOrCreatePlayer()

    ---@type DatabaseCharacter[]
    local characters = {}
    for _, nameToCharacter in pairs(self._db.global.realmToNameToCharacter) do
        for _, character in pairs(nameToCharacter) do
            tinsert(characters, character)
        end
    end
    return characters
end

---@param characterName string
---@param localizedProfessionName string
---@return string[]
function Database:GetLocalizedSkillNames(characterName, localizedProfessionName)
    ---@type DatabaseProfession
    local profession
    for _, nameToCharacter in pairs(self._db.global.realmToNameToCharacter) do
        if nameToCharacter[characterName] ~= nil then
            profession = nameToCharacter[characterName].professionsByLocalizedName[localizedProfessionName]
        end
    end
    return (profession or {}).knownLocalizedSkillNames or {}
end

---@param localizedProfessionName string
---@param professionRank number
---@param localizedSkillNames string[]
function Database:SaveCurrentPlayerSkills(localizedProfessionName, professionRank, localizedSkillNames)
    local player = self:GetOrCreatePlayer()
    player.professionsByLocalizedName[localizedProfessionName] = {
        rank = professionRank,
        knownLocalizedSkillNames = localizedSkillNames
    }
end

---@param localizedProfessionNames string[]
function Database:SaveCurrentPlayerProfessions(localizedProfessionNames)
    ---@type table<string, boolean>
    local set = {}
    for _, localizedProfessionName in ipairs(localizedProfessionNames) do
        set[localizedProfessionName] = true
    end

    local player = self:GetOrCreatePlayer()
    for localizedProfessionName, _ in pairs(player.professionsByLocalizedName) do
        if set[localizedProfessionName] == nil then
            player.professionsByLocalizedName[localizedProfessionName] = nil
        end
    end
end

---@return DatabaseCharacter
function Database:GetOrCreatePlayer()
    local realm = GetRealmName()
    local name, _ = UnitName("player")
    local english_faction, localized_faction = UnitFactionGroup("player")

    local player = self._db.global.realmToNameToCharacter[realm][name]
    player.realm = realm
    player.english_faction = english_faction
    player.localized_faction = localized_faction
    player.name = name
    return player
end
