setfenv(1, MissingCrafts)

---@class FiltersPanel
---@field _characterRepository CharacterRepository
---@field _professionRepository ProfessionRepository
---@field _group AceGUISimpleGroup|nil
---@field _professionDropdown AceGUIDropdown|nil
---@field _characterDropdown AceGUIDropdown|nil
---@field _onChange fun()|nil
---@field _populated boolean
FiltersPanel = {}

---@shape Filters
---@field localizedProfessionName string
---@field character string

---@param AceGUI LibAceGUI
---@return self
function FiltersPanel:Create(characterRepository, professionRepository, AceGUI)
    self._characterRepository = characterRepository
    self._professionRepository = professionRepository
    self._populated = false

    local onChange = function()
        if self._populated and self._onChange ~= nil then
            self._onChange()
        end
    end

    local professionDropdown = AceGUI:Create("Dropdown")
    professionDropdown:SetMultiselect(false)
    professionDropdown:SetRelativeWidth(0.5)
    professionDropdown:SetCallback("OnValueChanged", onChange)

    local characterDropdown = AceGUI:Create("Dropdown")
    characterDropdown:SetMultiselect(false)
    characterDropdown:SetRelativeWidth(0.5)
    characterDropdown:SetCallback("OnValueChanged", onChange)

    local group = AceGUI:Create("SimpleGroup")
    group:SetLayout("Flow")
    group:AddChildren(professionDropdown, characterDropdown)

    self._professionDropdown = professionDropdown
    self._characterDropdown = characterDropdown
    self._group = group

    group:SetCallback("OnRelease", function()
        self._characterRepository = nil
        self._professionRepository = nil
        self._populated = false
        self._professionDropdown = nil
        self._characterDropdown = nil
        self._group = nil
        self._onChange = nil
    end)

    return self
end

---@return AceGUIWidget
function FiltersPanel:GetAceWidget()
    return self:_GetGroup()
end

---@return Frame
function FiltersPanel:GetVanillaFrame()
    return self:_GetGroup().frame
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
        localizedProfessionName = self:_GetProfessionDropdown():GetValue(),
        character = self:_GetCharacterDropdown():GetValue(),
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
    self:_PopulateDropdown(self:_GetProfessionDropdown(), professionNames, selectedProfessionLocalizedName)

    ---@type string[]
    local characterNames = {}
    for _, character in ipairs(self._characterRepository:FindAll()) do
        tinsert(characterNames, character.name)
    end
    self:_PopulateDropdown(self:_GetCharacterDropdown(), characterNames, selectedCharacterName)

    self._populated = true
end

---@param strings string[]
---@param value string
---@return string
local function findOrFirst(strings, value)
    for _, s in ipairs(strings) do
        if s == value then
            return value
        end
    end
    return strings[1]
end

---@param dropdown AceGUIDropdown
---@param options string[]
---@param selectedOption string
function FiltersPanel:_PopulateDropdown(dropdown, options, selectedOption)
    ---@type table<string, string>
    local data = {}
    for _, option in ipairs(options) do
        data[option] = option
    end

    table.sort(options)
    dropdown:SetList(data, options)
    dropdown:SetValue(findOrFirst(options, selectedOption))
end

function FiltersPanel:_GetGroup()
    assert(self._group ~= nil)
    return --[[---@not nil]] self._group
end

function FiltersPanel:_GetProfessionDropdown()
    assert(self._professionDropdown ~= nil)
    return --[[---@not nil]] self._professionDropdown
end

function FiltersPanel:_GetCharacterDropdown()
    assert(self._characterDropdown ~= nil)
    return --[[---@not nil]] self._characterDropdown
end
