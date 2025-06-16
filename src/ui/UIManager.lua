setfenv(1, MissingCrafts)

---@shape ProfessionFrame
---@field id string
---@field type LcpProfessionFrameType
---@field profession string
---@field widget Frame

---@shape WindowState
---@field widget Window
---@field frameId string

---@class UIManager
---@field _addonInfo AddonInfo
---@field _repos Repositories
---@field _locale MissingCraftsLocale
---@field _libs Libraries
---@field _placementPolicy PlacementPolicy
---@field _vanillaFramePool VanillaFramePool
---@field _buttonsByFrameId table<string, OpenButton>
---@field _windowState WindowState
---@field _filtersPanel FiltersPanel
---@field _craftsList CraftsList
---@field _dataStateManager DataStateManager
UIManager = {}

---@param addonInfo AddonInfo
---@param repositories Repositories
---@param locale MissingCraftsLocale
---@param libraries Libraries
---@return self
function UIManager:Create(addonInfo, repositories, locale, libraries)
    self._addonInfo = addonInfo
    self._repos = repositories
    self._locale = locale
    self._libs = libraries
    self._placementPolicy = PlacementPolicy
    self._vanillaFramePool = VanillaFramePool:Create()
    self._tooltipEnhancer = TooltipEnhancer:Create(self._repos.craftRepository, self._repos.characterRepository, locale, self._libs.LibItemTooltip)
    self._buttonsByFrameId = {}

    ---@param filters Filters
    local function updateFilters(filters)
        if self._filtersPanel ~= nil then
            self._filtersPanel:PopulateInterface(filters.localizedProfessionName, filters.character)
        end
    end

    ---@param crafts Craft[]
    local function updateCrafts(crafts)
        if self._craftsList ~= nil then
            self._craftsList:PopulateInterface(crafts)
        end
    end

    self._dataStateManager = DataStateManager:Create(self._repos.craftRepository, updateFilters, updateCrafts)

    self._libs.AceHook:SecureHook("MovePanelToLeft", function() self:UpdateGeometry() end)
    self._libs.AceHook:SecureHook("MovePanelToCenter", function() self:UpdateGeometry() end)

    return self
end

---@param profession string
function UIManager:OnDataUpdated(profession)
    self._dataStateManager:OnCraftsUpdated(profession)
end

---@param profession string
---@param frame Frame
---@param frameType LcpProfessionFrameType
function UIManager:OnProfessionFrameOpened(profession, frame, frameType)
    ---@type ProfessionFrame
    local professionFrame = {
        id = getFrameId(frame),
        type = frameType,
        profession = profession,
        widget = frame,
    }

    if self:IsWindowAttachedTo(professionFrame.id) then
        self._dataStateManager:OnProfessionSwitchedInFrame(profession)
    else
        self:DestroyButton(professionFrame.id)
        self:CreateButton(professionFrame)
    end

    self:UpdateGeometry()
end

---@param frame Frame
---@param frameType LcpProfessionFrameType
function UIManager:OnProfessionFrameClosed(frame, frameType)
    local frameId = getFrameId(frame)
    self:DestroyButton(frameId)
    if self:IsWindowAttachedTo(frameId) then
        self:DestroyWindow()
    else
        self:UpdateGeometry()
    end
end

---@param profession string
function UIManager:OnWindowOpened(profession)
    self:CheckButtons()
    self._dataStateManager:OnWindowOpened(profession)
end

function UIManager:OnWindowClosed()
    self._dataStateManager:OnWindowClosed()
    self:DestroyWindow()
    self:CheckButtons()
end

---@param frame ProfessionFrame
function UIManager:OnButtonClicked(frame)
    if self:IsWindowAttachedTo(frame.id) then
        self:DestroyWindow()
        self:CheckButtons()
    else
        self:CreateWindow(frame)
    end
end

---@param professionFrame ProfessionFrame
function UIManager:CreateButton(professionFrame)
    local FrameType = LibCraftingProfessionsConstants.FrameType

    ---@type 0|1
    local delayInFrames = 0
    if professionFrame.type == FrameType.AdvancedTradeSkillWindow2 or professionFrame.type == FrameType.Artisan then
        delayInFrames = 1 -- Work around async window initialization behavior
    end

    local onClick = function()
        self:OnButtonClicked(professionFrame)
    end

    callDelayed(delayInFrames, function()
        self._buttonsByFrameId[professionFrame.id] = OpenButton:Create(onClick, professionFrame, self._placementPolicy)
    end)
end

---@param frameId string
function UIManager:DestroyButton(frameId)
    local button = tpop(self._buttonsByFrameId, frameId)
    if button ~= nil then
        (--[[---@not nil]] button):Destroy()
    end
end

function UIManager:CheckButtons()
    local activeId = self._windowState ~= nil and self._windowState.frameId or nil
    for frameId, button in pairs(self._buttonsByFrameId) do
        button:SetChecked(frameId == activeId)
    end
end

---@param frame ProfessionFrame
function UIManager:CreateWindow(frame)
    if self:IsWindowAttachedTo(frame.id) then
        return
    end

    self:DestroyWindow()

    local close = function()
        self:OnWindowClosed()
    end

    local filtersPanel = FiltersPanel:Create(self._repos.characterRepository, self._repos.professionRepository, self._libs.AceGUI)
    local craftsList = CraftsList:Create(self._locale, self._vanillaFramePool, self._libs.AceGUI)
    local window = Window:Create(self._addonInfo, close, filtersPanel, craftsList, frame, self._placementPolicy, self._libs.AceGUI)

    filtersPanel:OnChange(function(filters)
        self._dataStateManager:OnFiltersChanged(filters)
    end)

    self._windowState = {
        widget = window,
        frameId = frame.id,
    }
    self._filtersPanel = filtersPanel
    self._craftsList = craftsList

    self:OnWindowOpened(frame.profession)
end

function UIManager:DestroyWindow()
    if self._windowState == nil then
        return
    end

    self._windowState.widget:Release()
    erase(self._windowState)
    self._windowState = --[[---@not nil]] nil

    -- These widgets are released by the window during the AceGUI release process
    self._filtersPanel = --[[---@not nil]] nil
    self._craftsList =  --[[---@not nil]] nil
end

---@param frameId string
---@return boolean
function UIManager:IsWindowAttachedTo(frameId)
    return self._windowState ~= nil and self._windowState.frameId == frameId
end

function UIManager:UpdateGeometry()
    if self._windowState ~= nil then
        self._windowState.widget:UpdateGeometry()
    end
end
