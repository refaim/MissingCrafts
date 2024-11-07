setfenv(1, MissingCrafts)

---@class CraftsListItemHighlight
CraftsListItemHighlight = {}

-----@type Frame|nil
--local highlightFrame
-----@type Texture|nil
--local highlightTexture

-- TODO use frame pool instead of these "global" vars
--if highlightFrame == nil then
--    local newHighlightFrame = CreateFrame("Frame", nil)
--    newHighlightFrame:SetWidth(293) -- TODO copypasta
--    newHighlightFrame:SetHeight(16)
--    local newHighlightTexture = newHighlightFrame:CreateTexture(nil, "ARTWORK")
--    newHighlightTexture:SetTexture("Interface\\Buttons\\UI-Listbox-Highlight2")
--    --newHighlightTexture:SetVertexColor(0.9, 0, 0)
--    highlightFrame = newHighlightFrame
--    highlightTexture = newHighlightTexture
--end
--(--[[---@not nil]] highlightFrame):SetParent(scrollFrame.scrollframe)

-- TODO onReleaase
--if highlightFrame ~= nil then
--    local hFrame = self:_GetHighlightFrame()
--    hFrame:ClearAllPoints()
--    hFrame:SetParent(nil)
--    hFrame:Hide()
--end
