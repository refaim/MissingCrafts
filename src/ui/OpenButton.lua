setfenv(1, MissingCrafts)

---@class OpenButton
---@field _onClick fun():void
---@field _professionFrame Frame
---@field _button Button
---@field _placementPolicy PlacementPolicy
OpenButton = {}

---@param onClick fun():void
---@param professionFrame Frame
---@param professionFrameType LcpProfessionFrameType
---@param placementPolicy PlacementPolicy
function OpenButton:Create(onClick, professionFrame, professionFrameType, placementPolicy)
    local object = --[[---@type self]] {}
    setmetatable(object, {__index = OpenButton})

    local button = CreateFrame("Button", nil, nil, "UIPanelButtonTemplate")
    button:SetWidth(32)
    button:SetHeight(32)

    local texturePath = [[Interface\Icons\INV_Scroll_05]]

    local normalTexture = button:CreateTexture()
    normalTexture:SetTexture(texturePath)
    normalTexture:SetAllPoints(button)
    button:SetNormalTexture(normalTexture)
    
    local pushedTexture = button:CreateTexture()
    pushedTexture:SetTexture(texturePath)
    pushedTexture:SetPoint("TOPLEFT", button, "TOPLEFT", 1, -1)
    pushedTexture:SetPoint("BOTTOMRIGHT", button, "BOTTOMRIGHT", 1, -1)
    button:SetPushedTexture(pushedTexture)
    
    local highlightTexture = button:CreateTexture()
    highlightTexture:SetTexture(texturePath)
    highlightTexture:SetAllPoints(button)
    highlightTexture:SetVertexColor(0.8, 0.8, 1.0, 0.5)
    button:SetHighlightTexture(highlightTexture)

    local anchor = placementPolicy:GetOpenButtonAnchor(professionFrameType)
    button:SetParent(professionFrame)
    button:SetPoint(anchor.framePoint, professionFrame, anchor.selfPoint, anchor.selfCoords.x, anchor.selfCoords.y)

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
    clearFrame(self._button)
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
