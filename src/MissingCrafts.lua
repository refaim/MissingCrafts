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
    end)

    LibCraftingProfessions:RegisterEvent("LCP_FRAME_SHOW", function(profession, frame)
        if not self.interfaceCreated then
            self:CreateInterface(frame)
        end

        if self:GetWindow():IsAttachedTo(frame) then
            local player, _ = UnitName("player")
            self:PopulateInterface(player, profession)
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

-- TODO test that
function addon:OnDisable()
    self:ReleaseInterface()
    self:GetVanillaFramePool():Destroy()
    -- TODO destroy database and repositories
    self.vanillaFramePool = nil
end

---@param professionFrame Frame
function addon:CreateInterface(professionFrame)
    if self.window ~= nil then
        self:ReleaseInterface()
    end

    local filtersPanel = FiltersPanel:Create(self.characterRepository, AceGUI)
    local craftsList = CraftsList:Create(AceGUI, self:GetVanillaFramePool())
    local window = Window:Create(ADDON_NAME, ADDON_VERSION, filtersPanel, craftsList, professionFrame, AceGUI)

    -- TODO prevent double populate on first addon:PopulateInterface
    filtersPanel:OnChange(function(filters)
        self:GetCraftsList():PopulateInterface(self:GetCrafts(filters))
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
---@param profession LcpKnownProfession
function addon:PopulateInterface(player, profession)
    if not self.interfaceCreated then
        return
    end

    self:GetFiltersPanel():PopulateInterface(profession.localized_name, player)

    -- TODO is this call and public GetFilters() REALLY necessary? It's already called in the OnChange callback
    self:GetCraftsList():PopulateInterface(self:GetCrafts(self:GetFiltersPanel():GetFilters()))
end

---@param filters Filters
---@return Craft[]
function addon:GetCrafts(filters)
    return {} -- TODO
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
