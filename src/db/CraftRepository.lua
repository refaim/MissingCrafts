setfenv(1, MissingCrafts)

---@class CraftRepository
---@field _db Database
---@field _characterRepository CharacterRepository
---@field _libCrafts LibCrafts
CraftRepository = {}

---@alias CraftSource "Chest" | "CraftedByEngineer" | "Drop" | "Fishing" | "GiftedToReturningEngineers" | "Pickpocketing" | "Quest" | "Trainer" | "Vendor" | "WorldObject"
---@type table<CraftSource, CraftSource>
CraftSource = {
    Chest = "Chest",
    CraftedByEngineer = "CraftedByEngineer",
    Drop = "Drop",
    Fishing = "Fishing",
    GiftedToReturningEngineers = "GiftedToReturningEngineers",
    Pickpocketing = "Pickpocketing",
    Quest = "Quest",
    Trainer = "Trainer",
    Vendor = "Vendor",
    WorldObject = "WorldObject",
}

---@shape Craft
---@field localizedProfessionName string
---@field localizedName string
---@field skillLevel number
---@field isAvailable boolean
---@field recipeId number|nil
---@field resultId number|nil
---@field sources CraftSource[]

---@param database Database
---@param LibCrafts LibCrafts
function CraftRepository:Create(database, characterRepository, LibCrafts)
    self._db = database
    self._characterRepository = characterRepository
    self._libCrafts = LibCrafts
    return self
end

---@param craft LcCraft
---@param professionRank number
---@param LibCrafts LibCrafts
---@return Craft
local function create(craft, professionRank, LibCrafts)
    --local RecipeSource = LibCrafts.constants.recipe_sources
    --local SpellSource = LibCrafts.constants.spell_sources

    ---@type number|nil
    local recipeId
    for _, recipe in ipairs(craft.recipes) do
        recipeId = recipe.id
        -- TODO sources
        break
    end

    ---@type number|nil
    local resultId
    if craft.result ~= nil then
        resultId = (--[[---@not nil]] craft.result).id
    end

    return {
        localizedProfessionName = craft.localized_profession_name,
        localizedName = craft.localized_spell_name,
        skillLevel = craft.skill_level,
        isAvailable = craft.skill_level <= professionRank,
        recipeId = recipeId,
        resultId = resultId,
        sources = {CraftSource.Vendor}, -- TODO
    }
end

---@param characterName string
---@param localizedProfessionName string
---@return Craft[]
function CraftRepository:FindMissing(characterName, localizedProfessionName)
    local professionRank = 0
    local character = self._characterRepository:Find(characterName)
    if character ~= nil then
        professionRank = (--[[---@not nil]] character):GetProfessionRank(localizedProfessionName)
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
            tinsert(crafts, create(craft, professionRank, self._libCrafts))
        end
    end

    return crafts
end

---@param itemId number
---@return Craft[]
function CraftRepository:FindByRecipeId(itemId)
    local playerName, _ = UnitName("player")
    local character = self._characterRepository:Find(playerName)

    ---@type Craft[]
    local crafts = {}
    for _, craft in ipairs(self._libCrafts:GetCraftsByRecipeId(itemId)) do
        local professionRank = 0
        if character ~= nil then
            professionRank = (--[[---@not nil]] character):GetProfessionRank(craft.localized_profession_name)
        end
        tinsert(crafts, create(craft, professionRank, self._libCrafts))
    end

    return crafts
end
