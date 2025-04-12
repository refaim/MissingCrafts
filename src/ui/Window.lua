setfenv(1, MissingCrafts)

---@class Window
---@field _frame AceGUIFrame|nil
---@field _frameStatus AceGUIStatusTable|nil
---@field _professionFrame Frame|nil
Window = {}

---@param addonName string
---@param addonVersion string
---@param filtersPanel FiltersPanel
---@param craftsList CraftsList
---@param professionFrame Frame
---@param AceGUI LibAceGUI
---@return self
function Window:Acquire(addonName, addonVersion, filtersPanel, craftsList, professionFrame, AceGUI)
    local frameStatus = {width = 384, height = 430}

    local frame = AceGUI:Create("Frame")
    frame:SetTitle(format('%s v%s', addonName, addonVersion))
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
    self._frameStatus = frameStatus
    self._professionFrame = professionFrame

    return self
end

function Window:Release()
    if (self._frame ~= nil) then
        self:_GetFrame():Release()
        self._frame = nil
    end
    self._frameStatus = nil
    self._professionFrame = nil
end

---@param professionFrame Frame
---@return boolean
function Window:IsAttachedTo(professionFrame)
    return self._professionFrame == professionFrame
end

function Window:UpdatePosition()
    local professionFrame = --[[---@not nil]] self._professionFrame
    local frameStatus = --[[---@not nil]] self._frameStatus

    local xDiff = (IS_PLAYING_ON_TURTLE_WOW and self._professionFrame == TradeSkillFrame) and 87 or 40
    frameStatus["left"] = professionFrame:GetRight() - xDiff
    frameStatus["top"] = professionFrame:GetTop() - 10

    local frame = self:_GetFrame()
    frame:ApplyStatus()
    frame:Show()
end

---@return AceGUIFrame
function Window:_GetFrame()
    assert(self._frame ~= nil)
    return --[[---@not nil]] self._frame
end
