setfenv(1, MissingCrafts)

---@class Window
---@field _frame AceGUIFrame
---@field _professionFrame ProfessionFrame
---@field _closeButton Button
---@field _placementPolicy PlacementPolicy
---@field _onClose function
Window = {}

---@param addonInfo AddonInfo
---@param onClose fun():void
---@param filtersPanel FiltersPanel
---@param craftsList CraftsList
---@param professionFrame ProfessionFrame
---@param placementPolicy PlacementPolicy
---@param AceGUI LibAceGUI
---@return self
function Window:Create(addonInfo, onClose, filtersPanel, craftsList, professionFrame, placementPolicy, AceGUI)
    local window = --[[---@type self]] {}
    setmetatable(window, {__index = Window})

    local frameStatus = placementPolicy:GetMainWindowGeometry(professionFrame.widget, professionFrame.type)

    local frame = AceGUI:Create("Frame")
    frame:SetTitle(format('%s v%s', addonInfo.name, addonInfo.version))
    frame:SetStatusTable(frameStatus)
    frame:EnableResize(false)
    frame:SetLayout("List")
    frame.frame:SetFrameStrata(professionFrame.widget:GetFrameStrata())

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
        window:Hide()
    end)

    local filtersPanelAceWidget = filtersPanel:GetAceWidget()
    local filtersPanelVanillaFrame = filtersPanel:GetVanillaFrame()

    local craftsListAceWidget = craftsList:GetAceWidget()
    local craftsListVanillaFrame = craftsList:GetVanillaFrame()

    filtersPanelAceWidget:SetFullWidth(true)
    frame:AddChild(filtersPanelAceWidget)

    craftsListAceWidget:SetFullWidth(true)
    craftsListAceWidget:SetHeight(frameStatus.height - 45 - filtersPanelVanillaFrame:GetHeight())
    frame:AddChild(craftsListAceWidget)

    craftsListVanillaFrame:ClearAllPoints()
    craftsListVanillaFrame:SetPoint("TOPLEFT", filtersPanelVanillaFrame, "BOTTOMLEFT", 5, -5)

    window._frame = frame
    window._professionFrame = professionFrame
    window._closeButton = closeButton
    window._placementPolicy = placementPolicy
    window._onClose = onClose

    return window
end

function Window:UpdateGeometry()
    local frameStatus = self._placementPolicy:GetMainWindowGeometry(self._professionFrame.widget, self._professionFrame.type)
    self._frame:SetStatusTable(frameStatus)
    self._frame:ApplyStatus()
    self._frame:Show()
end

---@param professionFrame ProfessionFrame
function Window:Show(professionFrame)
    self._professionFrame = professionFrame
    self._frame:Show()
    self:UpdateGeometry()
end

function Window:Hide()
    self._frame:Hide()
    self._onClose()
end
