setfenv(1, MissingCrafts)

---@class DataStateManager
---@field _craftRepository CraftRepository
---@field _updateFilters fun(filters: Filters): void
---@field _updateCrafts fun(crafts: Craft[]): void
---@field _selectedCharacter string|nil
---@field _selectedProfession string|nil
DataStateManager = {}

---@param craftRepository CraftRepository
---@param updateFilters fun(filters: Filters): void
---@param updateCrafts fun(crafts: Craft[]): void
function DataStateManager:Create(craftRepository, updateFilters, updateCrafts)
    self._craftRepository = craftRepository
    self._updateFilters = updateFilters
    self._updateCrafts = updateCrafts
    return self
end

---@param profession string
function DataStateManager:OnWindowOpened(profession)
    local player, _ = UnitName("player")
    self._selectedCharacter = player
    self._selectedProfession = profession
    self:UpdateFilters()
end

function DataStateManager:OnWindowClosed()
    self._selectedCharacter = nil
    self._selectedProfession = nil
end

---@param newProfession string
function DataStateManager:OnProfessionSwitchedInFrame(newProfession)
    self._selectedProfession = newProfession
    self:UpdateFilters()
end

---@param profession string
function DataStateManager:OnCraftsUpdated(profession)
    if profession == self._selectedProfession then
        self:UpdateCrafts()
    end
end

---@param filters Filters
function DataStateManager:OnFiltersChanged(filters)
    self._selectedCharacter = filters.character
    self._selectedProfession = filters.localizedProfessionName
    self:UpdateCrafts()
end

function DataStateManager:UpdateFilters()
    self._updateFilters({
        localizedProfessionName = --[[---@not nil]] self._selectedProfession,
        character = --[[---@not nil]] self._selectedCharacter,
    })
end

function DataStateManager:UpdateCrafts()
    local character = --[[---@not nil]] self._selectedCharacter
    local profession = --[[---@not nil]] self._selectedProfession
    self._updateCrafts(self._craftRepository:FindMissing(character, profession))
end
