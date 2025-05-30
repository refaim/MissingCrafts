setfenv(1, MissingCrafts)

---@param frame Frame
function clearFrame(frame)
    frame:UnregisterAllEvents()
    frame:ClearAllPoints()
    frame:Hide()
    frame:SetParent(nil)
end

---@param frame Frame
---@return string
function getFrameId(frame)
    return tostring(frame)
end

---@param delayInFrames 0|1
---@param callback fun():void
function callDelayed(delayInFrames, callback)
    if delayInFrames == 0 then
        callback()
    else
        local delayFrame = CreateFrame("Frame")
        local function onUpdate()
            delayFrame:SetScript("OnUpdate", nil)
            clearFrame(delayFrame)
            callback()
        end
        delayFrame:SetScript("OnUpdate", onUpdate)
    end
end
