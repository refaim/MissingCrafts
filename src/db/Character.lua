setfenv(1, MissingCrafts)

---@shape CharacterProfession
---@field localizedName string
---@field rank number
---@field knownLocalizedSkillNamesSet table<string, boolean>

---@class Character
---@field name string
---@field professionLocalizedNameToProfession table<string, CharacterProfession>
Character = {}

---@param dbCharacter DatabaseCharacter
---@return self
function Character:Create(dbCharacter)
    ---@type table<string, CharacterProfession>
    local nameToProfession = {}

    for professionName, profession in pairs(dbCharacter.professionsByLocalizedName) do
        ---@type table<string, boolean>
        local skillSet = {}
        for _, skillName in ipairs(profession.knownLocalizedSkillNames) do
            skillSet[skillName] = true
        end

        nameToProfession[professionName] = {
            localizedName = professionName,
            rank = profession.rank,
            knownLocalizedSkillNamesSet = skillSet,
        }
    end

    local object = --[[---@type self]] {}
    setmetatable(object, {__index = Character})
    object.name = dbCharacter.name
    object.professionLocalizedNameToProfession = nameToProfession
    return object
end

---@param localizedName string
---@return number
function Character:GetProfessionRank(localizedName)
    local profession = self.professionLocalizedNameToProfession[localizedName]
    if profession == nil then
        return 0
    end
    return profession.rank
end

---@param craft Craft
---@return boolean
function Character:Knows(craft)
    local profession = self.professionLocalizedNameToProfession[craft.localizedProfessionName]
    if profession == nil then
        return false
    end
    return profession.knownLocalizedSkillNamesSet[craft.localizedName] == true
end

---@param craft Craft
---@return boolean
function Character:CanLearnNow(craft)
    local profession = self.professionLocalizedNameToProfession[craft.localizedProfessionName]
    if profession == nil then
        return false
    end
    return not self:Knows(craft) and profession.rank >= craft.skillLevel
end
