setfenv(1, MissingCrafts)

---@class CraftsListItem
---@field _locale MissingCraftsLocale
---@field _framePool VanillaFramePool
---@field _button Button
---@field _fontString FontString
---@field _craft Craft
CraftsListItem = {}

---@type table<CraftSource, string>
local SOURCE_TO_TEXT = {}

---@param width number
---@param height number
---@param locale MissingCraftsLocale
---@param framePool VanillaFramePool
---@return self
function CraftsListItem:Create(width, height, locale, framePool)
    local button = framePool:Acquire("Button")
    button:SetWidth(width)
    button:SetHeight(height)
    button:SetTextFontObject(GameFontNormal)
    button:SetHighlightFontObject(GameFontHighlight)
    button:SetText("")

    local fontString = button:GetFontString()
    fontString:SetPoint("TOPLEFT", 0, 0)
    fontString:SetJustifyH("LEFT")

    if next(SOURCE_TO_TEXT) == nil then
        SOURCE_TO_TEXT[CraftSource.Chest] = locale.craft_source_chest
        SOURCE_TO_TEXT[CraftSource.Craft] = locale.craft_source_craft
        SOURCE_TO_TEXT[CraftSource.Drop] = locale.craft_source_drop
        SOURCE_TO_TEXT[CraftSource.Fishing] = locale.craft_source_fishing
        SOURCE_TO_TEXT[CraftSource.Gift] = locale.craft_source_gift
        SOURCE_TO_TEXT[CraftSource.Pickpocketing] = locale.craft_source_pickpocketing
        SOURCE_TO_TEXT[CraftSource.Quest] = locale.craft_source_quest
        SOURCE_TO_TEXT[CraftSource.Trainer] = locale.craft_source_trainer
        SOURCE_TO_TEXT[CraftSource.Vendor] = locale.craft_source_vendor
        SOURCE_TO_TEXT[CraftSource.WorldObject] = locale.craft_source_world_object
        SOURCE_TO_TEXT[CraftSource.Unknown] = locale.craft_source_unknown
    end

    local object = {}
    setmetatable(object, {__index = CraftsListItem})

    local result = --[[---@type self]] object
    result._locale = locale
    result._framePool = framePool
    result._button = button
    result._fontString = fontString

    button:SetScript("OnEnter", function()
        GameTooltip:SetOwner(button, "ANCHOR_TOPRIGHT")
        if result:_DrawTooltip(GameTooltip) then
            GameTooltip:Show()
        end
    end)
    button:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    return result
end

function CraftsListItem:Destroy()
    if GameTooltip:IsOwned(self._button) then
        GameTooltip:Hide()
    end
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
    local color = craft.isAvailable and {r = 0.25, g = 0.75, b = 0.25} or {r = 0.9, g = 0.0, b = 0.0}
    local text = format("[%d] %s", craft.skillLevel, craft.localizedName)
    self._button:SetText(text)
    self._button:SetTextColor(color.r, color.g, color.b)
    self._fontString:SetText(text)
    self._craft = craft
end

---@param enable boolean
function CraftsListItem:SetHighlight(enable)
    if enable then
        self._button:LockHighlight()
    else
        self._button:UnlockHighlight()
    end
end

---@param tooltip GameTooltip
---@return boolean
function CraftsListItem:_DrawTooltip(tooltip)
    if self._craft == nil then
        return false
    end

    local strings = {}
    for _, source in ipairs(self._craft.sources) do
        local name = SOURCE_TO_TEXT[source]
        if name ~= nil then
            tinsert(strings, name)
        end
    end

    if getn(strings) == 0 then
        tinsert(strings, SOURCE_TO_TEXT[CraftSource.Unknown])
    end

    table.sort(strings)

    local count = getn(strings)
    local text = ""
    for i, s in ipairs(strings) do
        text = text .. s .. (i < count and ", " or "")
    end

    tooltip:AddLine(format("%s: %s", self._locale.craft_tooltip_source, text))

    return true
end
