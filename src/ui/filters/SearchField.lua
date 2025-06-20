setfenv(1, MissingCrafts)

---@class SearchField
---@field _widget AceGUIEditBox
---@field _text string
SearchField = {}

---@param relativeWidth number
---@param onChange fun()
---@param AceGUI LibAceGUI
---@return self
function SearchField:Create(relativeWidth, onChange, AceGUI)
    local object = --[[---@type self]] {}
    setmetatable(object, {__index = SearchField})

    local widget = AceGUI:Create("EditBox")
    widget:SetRelativeWidth(relativeWidth)
    widget:SetMaxLetters(250)
    widget:DisableButton(true)
    widget:SetCallback("OnTextChanged", function()
        object._text = object._widget:GetText()
        onChange()
    end)

    object._widget = widget
    object._text = ""
    return object
end

function SearchField:Destroy()
    self._widget = --[[---@not nil]] nil
    self._text = --[[---@not nil]] nil
end

---@return AceGUIWidget
function SearchField:GetAceWidget()
    return self._widget
end

---@return string
function SearchField:GetText()
    return self._text
end
