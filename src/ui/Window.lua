setfenv(1, MissingCrafts)

---@class Window
---@field _frame AceGUIFrame
---@field _professionFrame Frame
---@field _professionFrameType LcpProfessionFrameType
---@field _closeButton Button
---@field _placementPolicy PlacementPolicy
Window = {}

---@param addonInfo AddonInfo
---@param close fun():void
---@param filtersPanel FiltersPanel
---@param craftsList CraftsList
---@param professionFrame Frame
---@param professionFrameType LcpProfessionFrameType
---@param placementPolicy PlacementPolicy
---@param AceGUI LibAceGUI
---@return self
function Window:Acquire(addonInfo, close, filtersPanel, craftsList, professionFrame, professionFrameType, placementPolicy, AceGUI)
    local frameStatus = placementPolicy:GetMainWindowGeometry(professionFrame, professionFrameType)

    local frame = AceGUI:Create("Frame")
    frame:SetTitle(format('%s v%s', addonInfo.name, addonInfo.version))
    frame:SetStatusTable(frameStatus)
    frame:EnableResize(false)
    frame:SetLayout("List")

    -- Hide statusbar and default close button
    frame.statustext:Hide()
    for _, child in ipairs({frame.frame:GetChildren()}) do
        if child:GetFrameType() == "Button" then
            child:Hide()
        end
    end

    local closeButton = CreateFrame("Button", nil, frame.frame, "UIPanelCloseButton")
    closeButton:SetPoint("TOPRIGHT", frame.frame, "TOPRIGHT", -5, -5)
    closeButton:SetScript("OnClick", function()
        close()
    end)

    local filtersPanelAceWidget = filtersPanel:GetAceWidget()
    filtersPanelAceWidget:SetFullWidth(true)
    frame:AddChild(filtersPanelAceWidget)

    local craftsListWidget = craftsList:GetAceWidget()
    craftsListWidget:SetFullWidth(true)
    craftsListWidget:SetHeight(frameStatus.height - 30 - 45)
    frame:AddChild(craftsListWidget)

    local filtersPanelVanillaFrame = filtersPanel:GetVanillaFrame()
    local craftsListVanillaFrame = craftsList:GetVanillaFrame()
    craftsListVanillaFrame:ClearAllPoints()
    craftsListVanillaFrame:SetPoint("TOPLEFT", filtersPanelVanillaFrame, "BOTTOMLEFT", 5, -5)

    self._frame = frame
    self._professionFrame = professionFrame
    self._professionFrameType = professionFrameType
    self._closeButton = closeButton
    self._placementPolicy = placementPolicy

    self:UpdateGeometry()

    return self
end

function Window:Release()
    if self._frame ~= nil then
        self._frame:Release()
        self._frame = nil
    end
    if self._closeButton ~= nil then
        clearFrame(self._closeButton)
        self._closeButton = nil
    end
    self._frameStatus = nil
    self._professionFrame = nil
    self._professionFrameType = nil
    self._placementPolicy = nil
end

---@param professionFrame Frame
---@return boolean
function Window:IsAttachedTo(professionFrame)
    return self._professionFrame == professionFrame
end

function Window:UpdateGeometry()
    local frameStatus = self._placementPolicy:GetMainWindowGeometry(self._professionFrame, self._professionFrameType)
    self._frame:SetStatusTable(frameStatus)
    self._frame:ApplyStatus()
    self._frame:Show()
end
