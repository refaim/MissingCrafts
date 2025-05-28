setfenv(1, MissingCrafts)

---@class OpenButton
---@field _onClick fun():void
---@field _professionFrame Frame
---@field _button Button
---@field _placementPolicy PlacementPolicy
OpenButton = {}

---@param onClick fun():void
---@param professionFrame Frame
---@param placementPolicy PlacementPolicy
function OpenButton:Create(onClick, professionFrame, placementPolicy)
    local object = --[[---@type self]] {}
    setmetatable(object, {__index = OpenButton})

    local button = CreateFrame("Button", nil, professionFrame, "UIPanelButtonTemplate")
    button:SetWidth(32)
    button:SetHeight(32)

    local normalTexture = button:CreateTexture()
    normalTexture:SetTexture([[Interface\Icons\INV_Scroll_05]])
    normalTexture:SetAllPoints(button)
    button:SetNormalTexture(normalTexture)
    
    local pushedTexture = button:CreateTexture()
    pushedTexture:SetTexture([[Interface\Icons\INV_Scroll_05]])
    pushedTexture:SetPoint("TOPLEFT", button, "TOPLEFT", 1, -1)
    pushedTexture:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", 1, -1)
    button:SetPushedTexture(pushedTexture)
    
    local highlightTexture = button:CreateTexture()
    highlightTexture:SetTexture([[Interface\Icons\INV_Scroll_05]])
    highlightTexture:SetAllPoints(button)
    highlightTexture:SetVertexColor(0.8, 0.8, 1.0, 0.5)
    button:SetHighlightTexture(highlightTexture)

    local topRight = placementPolicy:GetOpenButtonTopRight(professionFrame)
    button:SetPoint("TOPRIGHT", professionFrame, "TOPRIGHT", topRight.x, topRight.y)
    
    button:SetScript("OnClick", function()
        onClick()
    end)
    
    button:Show()

    object._onClick = onClick
    object._professionFrame = professionFrame
    object._button = button
    object._placementPolicy = placementPolicy
    return object
end

function OpenButton:Destroy()
    ClearFrame(self._button)
    self._button = nil
    self._onClick = nil
    self._professionFrame = nil
    self._placementPolicy = nil
    erase(self)
end

---@param professionFrame Frame
---@return boolean
function OpenButton:IsAttachedTo(professionFrame)
    return self._professionFrame == professionFrame
end
