setfenv(1, MissingCrafts)

---@class VanillaFramePool
---@field _framesByType table<string, Frame[]>
VanillaFramePool = {}

local RELEASED_FIELD = "__released_to_pool__"

---@return self
function VanillaFramePool:Create()
    local object = {}
    setmetatable(object, {__index = VanillaFramePool})

    local result = --[[---@type self]] object
    result._framesByType = {}
    return result
end

function VanillaFramePool:Destroy()
    for _, pool in pairs(self._framesByType or {}) do
        erase(pool)
    end
    erase(self)
end

---@param frameType "Frame"
---@return Frame
---@overload fun(frameType: "Button"): Button
function VanillaFramePool:Acquire(frameType)
    local pool = self._framesByType[frameType] or {}

    local frame
    if next(pool) == nil then
        frame = CreateFrame(frameType, nil, nil, nil)
    else
        frame = tremove(pool)
        local frameAsTable = --[[---@type table<string, any>]] frame
        frameAsTable[RELEASED_FIELD] = false
    end

    return frame
end

---@param frame Frame
function VanillaFramePool:Release(frame)
    local frameAsTable = --[[---@type table<string, any>]] frame
    if frameAsTable[RELEASED_FIELD] then
        return
    end

    local frameType = frame:GetFrameType()

    local pool = self._framesByType[frameType]
    if pool == nil then
        pool = {}
        self._framesByType[frameType] = pool
    end

    for _, child in ipairs({frame:GetChildren()}) do
        self:Release(child)
    end

    ClearFrame(frame)

    frameAsTable[RELEASED_FIELD] = true
    tinsert(pool, frame)
end
