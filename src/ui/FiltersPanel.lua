setfenv(1, MissingCrafts)

---@class FiltersPanel
---@field _characterRepository CharacterRepository
---@field _professionRepository ProfessionRepository
---@field _group AceGUISimpleGroup
---@field _professionDropdown Dropdown
---@field _characterDropdown Dropdown
---@field _onChange fun()
---@field _populated boolean
FiltersPanel = {}

---@shape Filters
---@field localizedProfessionName string
---@field character string

---@param AceGUI LibAceGUI
---@return self
function FiltersPanel:Acquire(characterRepository, professionRepository, AceGUI)
    self._characterRepository = characterRepository
    self._professionRepository = professionRepository
    self._populated = false

    local onChange = function()
        if self._populated and self._onChange ~= nil then
            self._onChange()
        end
    end

    local professionDropdown = Dropdown:Create(0.5, onChange, AceGUI)
    local characterDropdown = Dropdown:Create(0.5, onChange, AceGUI)

    local group = AceGUI:Create("SimpleGroup")
    group:SetLayout("Flow")
    group:AddChildren(professionDropdown:GetAceWidget(), characterDropdown:GetAceWidget())

    self._professionDropdown = professionDropdown
    self._characterDropdown = characterDropdown
    self._group = group

    group:SetCallback("OnRelease", function()
        if self._professionDropdown ~= nil then
            self._professionDropdown:Destroy()
            self._professionDropdown = nil
        end

        if self._characterDropdown ~= nil then
            self._characterDropdown:Destroy()
            self._characterDropdown = nil
        end

        self._characterRepository = nil
        self._professionRepository = nil
        self._group = nil
        self._onChange = nil

        self._populated = false
    end)

    return self
end

---@return AceGUIWidget
function FiltersPanel:GetAceWidget()
    return self._group
end

---@return Frame
function FiltersPanel:GetVanillaFrame()
    return self._group.frame
end

---@param callback fun(filters: Filters)
function FiltersPanel:OnChange(callback)
    self._onChange = function()
        callback(self:GetFilters())
    end
end

---@return Filters
function FiltersPanel:GetFilters()
    return {
        localizedProfessionName = self._professionDropdown:GetSelectedValue(),
        character = self._characterDropdown:GetSelectedValue(),
    }
end

---@param selectedProfessionLocalizedName string
---@param selectedCharacterName string
function FiltersPanel:PopulateInterface(selectedProfessionLocalizedName, selectedCharacterName)
    ---@type string[]
    local professionNames = {}
    for _, profession in ipairs(self._professionRepository:FindAll()) do
        tinsert(professionNames, profession.localizedName)
    end
    self._professionDropdown:Populate(professionNames, selectedProfessionLocalizedName)

    ---@type string[]
    local characterNames = {}
    for _, character in ipairs(self._characterRepository:FindAll()) do
        tinsert(characterNames, character.name)
    end
    self._characterDropdown:Populate(characterNames, selectedCharacterName)

    self._populated = true
    if self._onChange ~= nil then
        self._onChange()
    end
end
