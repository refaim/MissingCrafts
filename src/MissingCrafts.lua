setfenv(1, MissingCrafts)

local ADDON_NAME, ADDON_VERSION = "MissingCrafts", "1.0"

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
---@field vanillaFramePool VanillaFramePool|nil
---@field interfaceCreated boolean
---@field window Window|nil
---@field craftsList CraftsList|nil
---@field filtersPanel FiltersPanel|nil
---@field currentProfessionLocalizedName string|nil

---@type MissingCrafts
local addon = --[[---@type MissingCrafts]] AceAddon:NewAddon("MissingCrafts")

function addon:OnEnable()
    self.database = Database:Create(AceDB)
    self.characterRepository = CharacterRepository:Create(self.database)
    self.professionRepository = ProfessionRepository:Create(LibCraftingProfessions)
    self.craftRepository = CraftRepository:Create(self.database, self.characterRepository, LibCrafts)
    self.vanillaFramePool = VanillaFramePool:Create()

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
        if not self.interfaceCreated then
            self:CreateInterface(frame)
        end

        if self:GetWindow():IsAttachedTo(frame) then
            local player, _ = UnitName("player")
            self:PopulateInterface(player, profession.localized_name)
        end

        self:GetWindow():UpdatePosition()
    end)

    LibCraftingProfessions:RegisterEvent("LCP_FRAME_CLOSE", function(frame)
        if self.interfaceCreated then
            if self:GetWindow():IsAttachedTo(frame) then
                self:ReleaseInterface()
            else
                self:GetWindow():UpdatePosition()
            end
        end
    end)
end

function addon:OnDisable()
    self:ReleaseInterface()
    self:GetVanillaFramePool():Destroy()
    self.vanillaFramePool = nil
    self.currentProfessionLocalizedName = nil
end

---@param professionFrame Frame
function addon:CreateInterface(professionFrame)
    if self.window ~= nil then
        self:ReleaseInterface()
    end

    local function close()
        addon:ReleaseInterface()
    end

    local filtersPanel = FiltersPanel:Acquire(self.characterRepository, self.professionRepository, AceGUI)
    local craftsList = CraftsList:Acquire(AceGUI, self:GetVanillaFramePool())
    local window = Window:Acquire(ADDON_NAME, ADDON_VERSION, filtersPanel, craftsList, professionFrame, close, AceGUI)

    filtersPanel:OnChange(function(filters)
        self:GetCraftsList():PopulateInterface(self:GetCrafts(filters))
        self.currentProfessionLocalizedName = filters.localizedProfessionName
    end)

    self.filtersPanel = filtersPanel
    self.craftsList = craftsList
    self.window = window
    self.interfaceCreated = true
end

function addon:ReleaseInterface()
    if not self.interfaceCreated then
        return
    end

    self.filtersPanel = nil
    self.craftsList = nil
    self:GetWindow():Release()
    self.window = nil
    self.interfaceCreated = false
end

---@param player string
---@param localizedProfessionName string
function addon:PopulateInterface(player, localizedProfessionName)
    if not self.interfaceCreated then
        return
    end

    self:GetFiltersPanel():PopulateInterface(localizedProfessionName, player)
end

---@param filters Filters
---@return Craft[]
function addon:GetCrafts(filters)
    return self.craftRepository:FindMissing(filters.character, filters.localizedProfessionName)
end

function addon:GetVanillaFramePool()
    assert(self.vanillaFramePool ~= nil)
    return --[[---@not nil]] self.vanillaFramePool
end

function addon:GetWindow()
    assert(self.interfaceCreated)
    return --[[---@not nil]] self.window
end

function addon:GetCraftsList()
    assert(self.interfaceCreated)
    return --[[---@not nil]] self.craftsList
end

function addon:GetFiltersPanel()
    assert(self.interfaceCreated)
    return --[[---@not nil]] self.filtersPanel
end
