setfenv(1, MissingCrafts)

---@shape AddonInfo
---@field name string
---@field version string

local addonInfo = {
    name = "MissingCrafts",
    version = "1.0"
}

---@type LibStubDef
local LibStub = getglobal("LibStub")
assert(LibStub ~= nil, "LibStub is required to run this addon")

local AceAddon, _ = LibStub("AceAddon-3.0")
local AceDB, _ = LibStub("AceDB-3.0")
local AceGUI, _ = LibStub("AceGUI-3.0")

local LibCraftingProfessions = --[[---@type LibCraftingProfessions]] LibStub("LibCraftingProfessions-1.0")
local LibCrafts = --[[---@type LibCrafts]] LibStub("LibCrafts-1.0")

---@class MissingCrafts: AceAddonDef
---@field database Database
---@field characterRepository CharacterRepository
---@field professionRepository ProfessionRepository
---@field craftRepository CraftRepository
---@field vanillaFramePool VanillaFramePool
---@field window Window
---@field craftsList CraftsList
---@field filtersPanel FiltersPanel
---@field openButtonsByFrameId table<string, OpenButton>
---@field currentProfessionLocalizedName string|nil

---@type MissingCrafts
local addon = --[[---@type MissingCrafts]] AceAddon:NewAddon("MissingCrafts")

function addon:OnEnable()
    self.database = Database:Create(AceDB)
    self.characterRepository = CharacterRepository:Create(self.database)
    self.professionRepository = ProfessionRepository:Create(LibCraftingProfessions)
    self.craftRepository = CraftRepository:Create(self.database, self.characterRepository, LibCrafts)
    self.vanillaFramePool = VanillaFramePool:Create()
    self.openButtonsByFrameId = {}

    LibCraftingProfessions:RegisterEvent("LCP_SKILLS_UPDATE", function(profession, skills)
        local skillNames = {}
        for _, skill in ipairs(skills) do
            tinsert(skillNames, skill.localized_name)
        end
        self.database:SaveCurrentPlayerSkills(profession.localized_name, profession.cur_rank, skillNames)

        local playerProfessions = LibCraftingProfessions:GetPlayerProfessions()
        if playerProfessions ~= nil then
            local playerProfessionNames = {}
            for _, playerProfession in ipairs(playerProfessions or {}) do
                tinsert(playerProfessionNames, playerProfession.localized_name)
            end
            self.database:SaveCurrentPlayerProfessions(playerProfessionNames)
        end

        if profession.localized_name == self.currentProfessionLocalizedName then
            local player, _ = UnitName("player")
            self:PopulateInterface(player, profession.localized_name)
        end
    end)

    LibCraftingProfessions:RegisterEvent("LCP_FRAME_SHOW", function(profession, frame)
        self:CreateOpenButton(profession, frame)

        if self:IsWindowAttachedTo(frame) then
            local player, _ = UnitName("player")
            self:PopulateInterface(player, profession.localized_name)
        end
    end)

    LibCraftingProfessions:RegisterEvent("LCP_FRAME_CLOSE", function(frame)
        self:DestroyOpenButton(frame)
        if self.window ~= nil then
            if self:IsWindowAttachedTo(frame) then
                self:DestroyMainWindow()
            else
                self.window:UpdatePosition()
            end
        end
    end)
end

---@param profession LcpProfession
---@param professionFrame Frame
function addon:CreateOpenButton(profession, professionFrame)
    local onClick = function()
        if self:IsWindowAttachedTo(professionFrame) then
            self:DestroyMainWindow()
        else
            local player, _ = UnitName("player")
            self:CreateMainWindow(professionFrame)
            self:PopulateInterface(player, profession.localized_name)
            self.window:UpdatePosition()
        end
    end

    local frameId = GetFrameId(professionFrame)
    self:DestroyOpenButton(professionFrame)
    self.openButtonsByFrameId[frameId] = OpenButton:Create(onClick, professionFrame, PlacementPolicy)
end

---@param professionFrame Frame
function addon:DestroyOpenButton(professionFrame)
    local frameId = GetFrameId(professionFrame)
    local button = self.openButtonsByFrameId[frameId]
    if button ~= nil then
        button:Destroy()
        self.openButtonsByFrameId[frameId] = nil
    end
end

---@param professionFrame Frame
function addon:CreateMainWindow(professionFrame)
    if self:IsWindowAttachedTo(professionFrame) then
        return
    end
    self:DestroyMainWindow()

    local function close()
        addon:DestroyMainWindow()
    end

    local filtersPanel = FiltersPanel:Acquire(self.characterRepository, self.professionRepository, AceGUI)
    local craftsList = CraftsList:Acquire(AceGUI, self.vanillaFramePool)
    local window = Window:Acquire(addonInfo, close, filtersPanel, craftsList, professionFrame, PlacementPolicy, AceGUI)

    filtersPanel:OnChange(function(filters)
        self.craftsList:PopulateInterface(self:GetCrafts(filters))
        self.currentProfessionLocalizedName = filters.localizedProfessionName
    end)

    self.filtersPanel = filtersPanel
    self.craftsList = craftsList
    self.window = window
end

function addon:DestroyMainWindow()
    if self.window == nil then
        return
    end

    self.window:Release()

    self.filtersPanel = nil
    self.craftsList = nil
    self.window = nil
end

---@param professionFrame Frame
---@return boolean
function addon:IsWindowAttachedTo(professionFrame)
    return self.window ~= nil and self.window:IsAttachedTo(professionFrame)
end

---@param player string
---@param localizedProfessionName string
function addon:PopulateInterface(player, localizedProfessionName)
    if self.window == nil then
        return
    end

    self.filtersPanel:PopulateInterface(localizedProfessionName, player)
end

---@param filters Filters
---@return Craft[]
function addon:GetCrafts(filters)
    return self.craftRepository:FindMissing(filters.character, filters.localizedProfessionName)
end
