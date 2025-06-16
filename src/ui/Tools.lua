setfenv(1, MissingCrafts)

---@type ScriptType[]
local SCRIPT_TYPES = {
    "OnAnimFinished",
    "OnChar",
    "OnClick",
    "OnColorSelect",
    "OnCursorChanged",
    "OnDoubleClick",
    "OnDragStart",
    "OnDragStop",
    "OnEditFocusGained",
    "OnEditFocusLost",
    "OnEnter",
    "OnEnterPressed",
    "OnEscapePressed",
    "OnEvent",
    "OnHide",
    "OnHorizontalScroll",
    "OnHyperlinkClick",
    "OnHyperlinkEnter",
    "OnHyperlinkLeave",
    "OnInputLanguageChanged",
    "OnKeyDown",
    "OnKeyUp",
    "OnLeave",
    "OnLoad",
    "OnMessageScrollChanged",
    "OnMouseDown",
    "OnMouseUp",
    "OnMouseWheel",
    "OnReceiveDrag",
    "OnScrollRangeChanged",
    "OnShow",
    "OnSizeChanged",
    "OnSpacePressed",
    "OnTabPressed",
    "OnTextChanged",
    "OnTextSet",
    "OnTooltipAddMoney",
    "OnTooltipCleared",
    "OnTooltipSetDefaultAnchor",
    "OnUpdate",
    "OnUpdateModel",
    "OnValueChanged",
    "OnVerticalScroll",
}

---@param frame Frame
function clearFrame(frame)
    for _, scriptType in ipairs(SCRIPT_TYPES) do
        if frame:HasScript(scriptType) then
            frame:SetScript(scriptType, nil)
        end
    end
    frame:UnregisterAllEvents()
    frame:ClearAllPoints()
    frame:Hide()
    frame:SetParent(nil)
end

---@param frame Frame
---@return string
function getFrameId(frame)
    assert(type(frame) == "table")
    local _, _, address = strfind(tostring(frame), "table: (%x+)")
    assert(type(address) == "string")
    return --[[---@type string]] address
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
