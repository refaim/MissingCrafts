setfenv(1, MissingCrafts)

---@class CraftsListItem
---@field _framePool VanillaFramePool
---@field _button Button
---@field _fontString FontString
---@field _tooltipEnhancer TooltipEnhancer
CraftsListItem = {}

---@param width number
---@param height number
---@param framePool VanillaFramePool
---@param tooltipEnhancer TooltipEnhancer
---@return self
function CraftsListItem:Create(width, height, framePool, tooltipEnhancer)
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
    result._tooltipEnhancer = tooltipEnhancer
    return result
end

function CraftsListItem:Destroy()
    if self._button ~= nil and GameTooltip:IsOwned(self._button) then
        GameTooltip:Hide()
    end
    self._framePool:Release(self._button)
    erase(self)
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
    self:SetupInteraction(craft.recipeId, craft.resultId)
end

---@param recipeId number|nil
---@param resultId number|nil
function CraftsListItem:SetupInteraction(recipeId, resultId)
    self._button:SetScript("OnEnter", function()
        local itemId = recipeId
        if itemId == nil or IsAltKeyDown() or IsControlKeyDown() then
            itemId = resultId
        end
        if itemId ~= nil then
            GameTooltip:SetOwner(self._button, "ANCHOR_RIGHT")
            if GetItemInfo(--[[---@not nil]] itemId) ~= nil then
                GameTooltip:SetHyperlink("item:" .. itemId)
            else
                self._tooltipEnhancer:EnhanceTooltip(GameTooltip, --[[---@not nil]] itemId)
            end
            GameTooltip:Show()
        end
    end)

    self._button:SetScript("OnLeave", function()
        GameTooltip:Hide()
    end)

    self._button:SetScript("OnClick", function()
        if IsControlKeyDown() then
            if resultId ~= nil then
                DressUpItem(--[[---@not nil]] resultId)
            end
        elseif IsShiftKeyDown() then
            local itemId = recipeId
            if IsAltKeyDown() then
                itemId = resultId
            end
            if itemId ~= nil and ChatFrameEditBox:IsVisible() then
                local name, link, quality, _, _, _, _, _, _ = GetItemInfo(--[[---@not nil]] itemId)
                if name ~= nil then
                    local _, _, _, hex = GetItemQualityColor(quality)
                    ChatFrameEditBox:Insert(hex .. "|H" .. link .. "|h[" .. name .. "]|h|r")
                end
            end
        end
    end)
end
