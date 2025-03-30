---@class CraftRepository
---@field _db Database
---@field _characterRepository CharacterRepository
---@field _libCrafts LibCrafts
CraftRepository = {}

---@shape Craft
---@field localizedName string
---@field skillLevel number
---@field isAvailable boolean

---@param database Database
---@param LibCrafts LibCrafts
function CraftRepository:Create(database, characterRepository, LibCrafts)
    self._db = database
    self._characterRepository = characterRepository
    self._libCrafts = LibCrafts
    return self
end

---@param characterName string
---@param localizedProfessionName string
---@return Craft[]
function CraftRepository:FindMissing(characterName, localizedProfessionName)
    local character = self._characterRepository:Find(characterName)
    local characterProfessionRank = 0
    if character ~= nil then
        characterProfessionRank = (--[[---@not nil]] character).professionLocalizedNameToRank[localizedProfessionName] or 0
    end

    ---@type table<string, boolean>
    local characterSkillSet = {}
    for _, skillName in ipairs(self._db:GetLocalizedSkillNames(characterName, localizedProfessionName)) do
        characterSkillSet[skillName] = true
    end

    ---@type Craft[]
    local crafts = {}
    for _, craft in ipairs(self._libCrafts:GetCraftsByProfession(localizedProfessionName)) do
        if characterSkillSet[craft.localized_spell_name] == nil then
            tinsert(crafts, {
                localizedName = craft.localized_spell_name,
                skillLevel = craft.skill_level,
                isAvailable = craft.skill_level <= characterProfessionRank
            })
        end
    end

    return crafts
end
