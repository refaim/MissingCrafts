setfenv(1, MissingCrafts)

---@shape Coords
---@field x number
---@field y number

---@shape Anchor
---@field framePoint WidgetAnchorPoint
---@field selfPoint WidgetAnchorPoint
---@field selfCoords Coords

---@shape Geometry
---@field width number
---@field height number
---@field top number
---@field left number

---@class PlacementPolicy
PlacementPolicy = {}

local FrameType = LibCraftingProfessionsConstants.FrameType

---@return boolean
local function pfUI()
    return IsAddOnLoaded("pfUI") == 1
end

---@param frameType LcpProfessionFrameType
---@return boolean
local function frameTypeSupportedByPfUI(frameType)
    return frameType == FrameType.VanillaCraftFrame or
           frameType == FrameType.VanillaTradeSkillFrame or
           frameType == FrameType.TurtleTradeSkillFrame
end

---@return boolean
local function MTSL()
    return getglobal("MTSLUI_TOGGLE_BUTTON") ~= nil
end

---@param frameType LcpProfessionFrameType
---@return Anchor
function PlacementPolicy:GetOpenButtonAnchor(frameType)
    ---@type Anchor
    local anchor = {
        framePoint = "TOPRIGHT",
        selfPoint = "TOPRIGHT",
        selfCoords = {x = 0, y = 0},
    }

    if pfUI() and frameTypeSupportedByPfUI(frameType) then
        if MTSL() then
            anchor.selfCoords = {x = -15, y = -70}
        else
            anchor.selfCoords = {x = -30, y = -1}
        end
    elseif frameType == FrameType.AdvancedTradeSkillWindow then
        anchor.selfCoords = {x = -54, y = -91}
    elseif frameType == FrameType.AdvancedTradeSkillWindow2 then
        anchor.selfCoords = {x = -48, y = -77}
    elseif frameType == FrameType.Artisan then
        anchor.selfCoords = {x = -44, y = -60}
    elseif frameType == FrameType.TurtleTradeSkillFrame then
        anchor.selfCoords = {x = -96, y = -61}
    elseif frameType == FrameType.VanillaTradeSkillFrame then
        if MTSL() then
            anchor.selfCoords = {x = -93, y = 20}
        else
            anchor.selfCoords = {x = -38, y = 20}
        end
    elseif frameType == FrameType.VanillaCraftFrame then
        anchor.selfCoords = {x = -44, y = -60}
    end

    return anchor
end

---@param professionFrame Frame
---@param frameType LcpProfessionFrameType
---@return Geometry
function PlacementPolicy:GetMainWindowGeometry(professionFrame, frameType)
    local topRight = {x = professionFrame:GetRight(), y = professionFrame:GetTop()}

    ---@type Geometry
    local status = {width = 0, height = 0, top = 0, left = 0}

    if pfUI() and frameTypeSupportedByPfUI(frameType) then
        status = {width = 384, height = 450, top = topRight.y + 5, left = topRight.x}
    elseif frameType == FrameType.AdvancedTradeSkillWindow then
        status = {width = 384, height = 430, top = topRight.y - 10, left = topRight.x - 40}
    elseif frameType == FrameType.AdvancedTradeSkillWindow2 then
        status = {width = 384, height = 494, top = topRight.y - 10, left = topRight.x - 5}
    elseif frameType == FrameType.Artisan then
        status = {width = 384, height = 469, top = topRight.y - 10, left = topRight.x - 5}
    elseif frameType == FrameType.TurtleTradeSkillFrame then
        status = {width = 384, height = 430, top = topRight.y - 10, left = topRight.x - 87}
    else
        status = {width = 384, height = 430, top = topRight.y - 10, left = topRight.x - 40}
    end

    return status
end
