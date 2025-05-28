setfenv(1, MissingCrafts)

---@shape Point
---@field x number
---@field y number

---@class PlacementPolicy
PlacementPolicy = {}

---@param professionFrame Frame
---@return Point
function PlacementPolicy:GetOpenButtonTopRight(professionFrame)
    if professionFrame == TradeSkillFrame then
        if IS_PLAYING_ON_TURTLE_WOW then
            return {x = -96, y = -61}
        end

        return {x = -38, y = 20}
    end

    return {x = -44, y = -60}
end

---@param professionFrame Frame
function PlacementPolicy:GetMainWindowTopLeft(professionFrame)
    local topRight = {x = professionFrame:GetRight(), y = professionFrame:GetTop()}

    if IS_PLAYING_ON_TURTLE_WOW and professionFrame == TradeSkillFrame then
        return {x = topRight.x - 87, y = topRight.y - 10}
    end

    return {x = topRight.x - 40, y = topRight.y - 10}
end
