setfenv(1, MissingCrafts)

---@class OpenButton
---@field _onClick fun():void
---@field _professionFrame Frame
---@field _button CheckButton
---@field _placementPolicy PlacementPolicy
OpenButton = {}

---@param onClick fun():void
---@param professionFrame Frame
---@param professionFrameType LcpProfessionFrameType
---@param placementPolicy PlacementPolicy
function OpenButton:Create(onClick, professionFrame, professionFrameType, placementPolicy)
    local object = --[[---@type self]] {}
    setmetatable(object, {__index = OpenButton})

    local button = CreateFrame("CheckButton")
    button:SetWidth(32)
    button:SetHeight(32)

    local normalTexture = button:CreateTexture()
    normalTexture:SetTexture([[Interface\Icons\INV_Scroll_05]])
    normalTexture:SetAllPoints(button)
    button:SetNormalTexture(normalTexture)
    
    local highlightTexture = button:CreateTexture()
    highlightTexture:SetTexture([[Interface\Buttons\ButtonHilight-Square]])
    highlightTexture:SetAllPoints(button)
    highlightTexture:SetBlendMode("ADD")
    button:SetHighlightTexture(highlightTexture)
    
    local checkedTexture = button:CreateTexture()
    checkedTexture:SetTexture([[Interface\Buttons\CheckButtonHilight]])
    checkedTexture:SetAllPoints(button)
    checkedTexture:SetBlendMode("ADD")
    button:SetCheckedTexture(checkedTexture)

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

---@param checked boolean
function OpenButton:SetChecked(checked)
    self._button:SetChecked(checked)
end
