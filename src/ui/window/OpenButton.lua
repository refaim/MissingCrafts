setfenv(1, MissingCrafts)

---@class OpenButton
---@field _frame CheckButton
OpenButton = {}

---@param onClick fun():void
---@param professionFrame ProfessionFrame
---@param placementPolicy PlacementPolicy
function OpenButton:Create(onClick, professionFrame, placementPolicy)
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

    local anchor = placementPolicy:GetOpenButtonAnchor(professionFrame.type)
    button:SetParent(professionFrame.widget)
    button:SetPoint(anchor.framePoint, professionFrame.widget, anchor.selfPoint, anchor.selfCoords.x, anchor.selfCoords.y)

    button:SetScript("OnClick", function()
        onClick()
    end)

    button:Show()

    object._frame = button
    return object
end

function OpenButton:Destroy()
    clearFrame(self._frame)
    self._frame = nil
    erase(self)
end

---@param checked boolean
function OpenButton:SetChecked(checked)
    self._frame:SetChecked(checked)
end
