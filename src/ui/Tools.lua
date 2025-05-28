setfenv(1, MissingCrafts)

---@param frame Frame
function ClearFrame(frame)
    frame:UnregisterAllEvents()
    frame:ClearAllPoints()
    frame:Hide()
    frame:SetParent(nil)
end

---@param frame Frame
---@return string
function GetFrameId(frame)
    return tostring(frame)
end
