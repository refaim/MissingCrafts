setfenv(1, MissingCrafts)

---@class CharacterRepository
---@field _db Database
CharacterRepository = {}

---@param database Database
---@return self
function CharacterRepository:Create(database)
    self._db = database
    return self
end

---@param exceptName ?string|nil
---@return Character[]
function CharacterRepository:FindAll(exceptName)
    ---@type Character[]
    local characters = {}
    for _, dbCharacter in ipairs(self._db:GetCharacters()) do
        if dbCharacter.name ~= exceptName then
            tinsert(characters, Character:Create(dbCharacter))
        end
    end
    return characters
end

---@param name string
---@return Character|nil
function CharacterRepository:Find(name)
    for _, dbCharacter in ipairs(self._db:GetCharacters()) do
        if dbCharacter.name == name then
            return Character:Create(dbCharacter)
        end
    end
    return nil
end
