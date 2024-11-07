setfenv(1, MissingCrafts)

---@class Database
---@field _db DatabaseSavedVariable
Database = {}

---@shape DatabaseProfession
---@field rank number
---@field knownLocalizedSkillNames string[]

---@shape DatabaseCharacter
---@field name string
---@field faction string
---@field professionsByLocalizedName table<string, DatabaseProfession>

---@shape DatabaseSavedVariable
---@field realm {nameToCharacter: table<string, DatabaseCharacter>}

---@param AceDB LibAceDBDef
---@return self
function Database:Create(AceDB)
    ---@type DatabaseSavedVariable
    local defaults = {
        realm = {
            nameToCharacter = {
                ["*"] = {
                    ["name"] = "",
                    ["faction"] = "",
                    ["professionsByLocalizedName"] = {}
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
    for _, character in pairs(self._db.realm.nameToCharacter) do
        tinsert(characters, character)
    end
    return characters
end

---@param characterName string
---@param localizedProfessionName string
---@return string[]
function Database:GetLocalizedSkillNames(characterName, localizedProfessionName)
    local profession = self._db.realm.nameToCharacter[characterName].professionsByLocalizedName[localizedProfessionName]
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
    local name, _ = UnitName("player")
    local faction, _ = UnitFactionGroup("player")

    local player = self._db.realm.nameToCharacter[name]
    player.name = name
    player.faction = faction
    return player
end
