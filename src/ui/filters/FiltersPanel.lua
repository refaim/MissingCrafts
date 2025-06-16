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

---@param characterRepository CharacterRepository
---@param professionRepository ProfessionRepository
---@param AceGUI LibAceGUI
---@return self
function FiltersPanel:Create(characterRepository, professionRepository, AceGUI)
    local panel = --[[---@type self]] {}
    setmetatable(panel, {__index = FiltersPanel})

    panel._characterRepository = characterRepository
    panel._professionRepository = professionRepository
    panel._populated = false

    local onChange = function()
        if panel._populated and panel._onChange ~= nil then
            panel._onChange()
        end
    end

    local professionDropdown = Dropdown:Create(0.5, onChange, AceGUI)
    local characterDropdown = Dropdown:Create(0.5, onChange, AceGUI)

    local group = AceGUI:Create("SimpleGroup")
    group:SetLayout("Flow")
    group:AddChildren(professionDropdown:GetAceWidget(), characterDropdown:GetAceWidget())

    panel._professionDropdown = professionDropdown
    panel._characterDropdown = characterDropdown
    panel._group = group

    group:SetCallback("OnRelease", function()
        if panel._professionDropdown ~= nil then
            panel._professionDropdown:Destroy()
            panel._professionDropdown =  --[[---@not nil]] nil
        end

        if panel._characterDropdown ~= nil then
            panel._characterDropdown:Destroy()
            panel._characterDropdown =  --[[---@not nil]] nil
        end

        panel._characterRepository =  --[[---@not nil]] nil
        panel._professionRepository =  --[[---@not nil]] nil
        panel._group =  --[[---@not nil]] nil
        panel._onChange =  --[[---@not nil]] nil

        panel._populated = false
    end)

    return panel
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
