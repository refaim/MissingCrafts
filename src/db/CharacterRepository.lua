---@class CharacterRepository
---@field _db Database
CharacterRepository = {}

---@shape CharacterDTO
---@field name string
---@field professionLocalizedNameToRank table<string, number>

---@param database Database
---@return self
function CharacterRepository:Create(database)
    self._db = database
    return self
end

---@return CharacterDTO[]
function CharacterRepository:FindAll()
    ---@type CharacterDTO[]
    local characters = {}
    for _, character in ipairs(self._db:GetCharacters()) do
        ---@type table<string, number>
        local nameToRank = {}
        for professionName, profession in pairs(character.professionsByLocalizedName) do
            nameToRank[professionName] = profession.rank
        end
        tinsert(characters, {
            name = character.name,
            professionLocalizedNameToRank = nameToRank,
        })
    end
    return characters
end

---@param name string
---@return CharacterDTO|nil
function CharacterRepository:Find(name)
    for _, character in ipairs(self:FindAll()) do
        if character.name == name then
            return character
        end
    end
    return nil
end
