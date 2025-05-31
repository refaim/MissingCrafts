setfenv(1, MissingCrafts)

---@alias RecipeStatus "IsLearned" | "CanLearnNow" | "CanLearnLater" | "CannotLearn"

---@type table<RecipeStatus, RecipeStatus>
local RecipeStatus = {
    IsLearned = "IsLearned",
    CanLearnNow = "CanLearnNow",
    CanLearnLater = "CanLearnLater",
    CannotLearn = "CannotLearn",
}

---@shape TooltipItem
---@field characterName string
---@field characterProfessionRank number
---@field skillLevel number
---@field status RecipeStatus

---@class TooltipEnhancer
---@field _craftRepository CraftRepository
---@field _characterRepository CharacterRepository
---@field _L MissingCraftsLocale
TooltipEnhancer = {}

---@param craftRepository CraftRepository
---@param characterRepository CharacterRepository
---@param L MissingCraftsLocale
---@param LibItemTooltip LibItemTooltip
---@return self
function TooltipEnhancer:Create(craftRepository, characterRepository, L, LibItemTooltip)
    self._craftRepository = craftRepository
    self._characterRepository = characterRepository
    self._L = L

    LibItemTooltip:RegisterEvent("OnShow", function(tooltip, itemLink, itemId)
        if self:EnhanceTooltip(tooltip, itemId) then
            tooltip:Show()
        end
    end)

    return self
end

---@param tooltip GameTooltip
---@param itemId number
---@return boolean
function TooltipEnhancer:EnhanceTooltip(tooltip, itemId)
    local items = self:CreateItems(itemId)
    items = self:FilterItems(items)
    if getn(items) == 0 then
        return false
    end
    self:SortItems(items)
    self:DrawItems(tooltip, items)
    return true
end

---@param itemId number
---@return TooltipItem[]
function TooltipEnhancer:CreateItems(itemId)
    local crafts = self._craftRepository:FindByRecipeId(itemId)
    if getn(crafts) == 0 then
        return {}
    end

    -- Assume that if single recipe teaches multiple spells that they are all have the same requirements.
    local craft = crafts[1]

    local items = {}
    local player, _ = UnitName("player")
    for _, character in ipairs(self._characterRepository:FindAll(player)) do
        tinsert(items, {
            characterName = character.name,
            characterProfessionRank = character:GetProfessionRank(craft.localizedProfessionName),
            skillLevel = craft.skillLevel,
            status = self:GetRecipeStatus(character, craft),
        })
    end

    return items
end

---@param items TooltipItem[]
---@return TooltipItem[]
function TooltipEnhancer:FilterItems(items)
    local new_items = {}
    for _, item in ipairs(items) do
        if item.characterProfessionRank > 0 and item.status ~= RecipeStatus.CannotLearn then
            tinsert(new_items, item)
        end
    end
    return new_items
end

---@param items TooltipItem[]
function TooltipEnhancer:SortItems(items)
    table.sort(items, function(a, b)
        return a.characterName < b.characterName
    end)
end

---@param tooltip GameTooltip
---@param items TooltipItem[]
function TooltipEnhancer:DrawItems(tooltip, items)
    ---@type table<RecipeStatus, string>
    local statusToColor = {
        [RecipeStatus.IsLearned] = "|cff808080",
        [RecipeStatus.CanLearnNow] = "|cff40bf40",
        [RecipeStatus.CanLearnLater] = "|cffff8040",
    }

    ---@type table<RecipeStatus, string>
    local statusToText = {
        [RecipeStatus.IsLearned] = self._L.tooltip_already_known,
        [RecipeStatus.CanLearnNow] = self._L.tooltip_can_learn_now,
        [RecipeStatus.CanLearnLater] = self._L.tooltip_can_learn_later,
    }

    tooltip:AddLine(" ")

    for _, item in ipairs(items) do
        local color = statusToColor[item.status]
        local message = statusToText[item.status]

        local leftText = format("%s%s|r", color, message)
        local rightText = format("%s%s (%d)|r", color, item.characterName, item.characterProfessionRank)

        tooltip:AddDoubleLine(leftText, rightText)
    end
end

---@param character Character
---@param craft Craft
---@return RecipeStatus
function TooltipEnhancer:GetRecipeStatus(character, craft)
    if character:Knows(craft) then
        return RecipeStatus.IsLearned
    end

    if character:CanLearnNow(craft) then
        return RecipeStatus.CanLearnNow
    end

    if character:GetProfessionRank(craft.localizedProfessionName) > 0 then
        return RecipeStatus.CanLearnLater
    end

    return RecipeStatus.CannotLearn
end
