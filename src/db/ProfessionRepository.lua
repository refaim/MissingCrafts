---@class ProfessionRepository
---@field _libCraftingProfessions LibCraftingProfessions
ProfessionRepository = {}

---@shape ProfessionDTO
---@field localizedName string

---@param LibCraftingProfessions LibCraftingProfessions
---@return self
function ProfessionRepository:Create(LibCraftingProfessions)
    self._libCraftingProfessions = LibCraftingProfessions
    return self
end

---@return ProfessionDTO[]
function ProfessionRepository:FindAll()
    local professions = {}
    for _, profession in ipairs(self._libCraftingProfessions:GetSupportedProfessions()) do
        tinsert(professions, {
            localizedName = profession.localized_name
        })
    end
    return professions
end
