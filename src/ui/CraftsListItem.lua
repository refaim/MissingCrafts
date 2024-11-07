setfenv(1, MissingCrafts)

---@class CraftsListItem
---@field _framePool VanillaFramePool
---@field _button Button
---@field _fontString FontString
CraftsListItem = {}

---@param width number
---@param height number
---@param framePool VanillaFramePool
---@return self
function CraftsListItem:Create(width, height, framePool)
    local button = framePool:Acquire("Button")
    button:SetWidth(width)
    button:SetHeight(height)
    button:SetTextFontObject(GameFontNormal)
    button:SetHighlightFontObject(GameFontHighlight)
    button:SetText("")

    local fontString = button:GetFontString()
    fontString:SetPoint("TOPLEFT", 0, 0)
    fontString:SetJustifyH("LEFT")

    local object = {}
    setmetatable(object, {__index = CraftsListItem})

    local result = --[[---@type self]] object
    result._framePool = framePool
    result._button = button
    result._fontString = fontString
    return result
end

function CraftsListItem:Destroy()
    self._framePool:Release(self._button)
    erase(self)
end

---@param callback fun(item: CraftsListItem)
function CraftsListItem:OnClick(callback)
    self._button:SetScript("OnClick", function() callback(self) end)
end

---@return Frame
function CraftsListItem:GetFrame()
    return self._button
end

---@param parent Frame
---@param anchor Frame
---@param selfAnchorPoint WidgetAnchorPoint
---@param foreignAnchorPoint WidgetAnchorPoint
---@param x number
---@param y number
function CraftsListItem:Attach(parent, anchor, selfAnchorPoint, foreignAnchorPoint, x, y)
    self._button:SetParent(parent)
    self._button:ClearAllPoints()
    self._button:SetPoint(selfAnchorPoint, anchor, foreignAnchorPoint, x, y)
    self._button:Show()
end

---@param craft Craft
function CraftsListItem:PopulateInterface(craft)
    local color = craft.isAvailable and { r = 0.25, g = 0.75, b = 0.25} or { r = 0.9, g = 0.0, b = 0.0}
    local text = format("[%d] %s", craft.skillLevel, craft.localizedName)
    self._button:SetText(text)
    self._button:SetTextColor(color.r, color.g, color.b)
    self._fontString:SetText(text)
end

---@param enable boolean
function CraftsListItem:SetHighlight(enable)
    if enable then
        self._button:LockHighlight()
    else
        self._button:UnlockHighlight()
    end

    -- TODO show highlight
    --button:SetScript("OnClick", function()
    --    local highlight = self:_GetHighlightFrame()
    --    highlight:ClearAllPoints()
    --    highlight:SetParent(buttonsGroup.frame)
    --    highlight:SetPoint("TOPLEFT", button, "TOPLEFT", 0, 0)
    --    highlight:Show() -- TODO when to hide?
    --end)
end
