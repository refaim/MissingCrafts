setfenv(1, MissingCrafts)

---@class Dropdown
---@field _widget AceGUIDropdown
---@field _notifyAboutValueChange fun()
---@field _selectedValue string
Dropdown = {}

---@param relativeWidth number
---@param onChange fun()
---@param AceGUI LibAceGUI
---@return self
function Dropdown:Create(relativeWidth, onChange, AceGUI)
    local object = --[[---@type self]] {}
    setmetatable(object, {__index = Dropdown})

    local widget = AceGUI:Create("Dropdown")
    widget:SetMultiselect(false)
    widget:SetRelativeWidth(relativeWidth)
    widget:SetCallback("OnValueChanged", function() object:_OnValueChanged() end)

    object._widget = widget
    object._notifyAboutValueChange = onChange
    return object
end

function Dropdown:_OnValueChanged()
    local newValue = self._widget:GetValue()
    if newValue == nil then
        -- Prevent clearing dropdown value when clicking on selected value
        self._widget:SetValue(self._selectedValue)
    else
        self._selectedValue = newValue
        self._notifyAboutValueChange()
    end
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

---@param options string[]
---@param selectedOption string
function Dropdown:Populate(options, selectedOption)
    ---@type table<string, string>
    local data = {}
    for _, option in ipairs(options) do
        data[option] = option
    end

    table.sort(options)
    self._widget:SetList(data, options)
    self._widget:SetValue(findOrFirst(options, selectedOption))
    self._selectedValue = self._widget:GetValue()
end

---@return string
function Dropdown:GetSelectedValue()
    return self._selectedValue
end

---@return AceGUIWidget
function Dropdown:GetAceWidget()
    return self._widget
end
