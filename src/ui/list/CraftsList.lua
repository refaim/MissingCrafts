setfenv(1, MissingCrafts)

---@class CraftsList
---@field _locale MissingCraftsLocale
---@field _framePool VanillaFramePool
---@field _scrollFrame AceGUIScrollFrame
---@field _buttonsGroup AceGUISimpleGroup
---@field _items CraftsListItem[]
CraftsList = {}

---@param locale MissingCraftsLocale
---@param AceGUI LibAceGUI
---@param vanillaFramePool VanillaFramePool
---@return CraftsList
function CraftsList:Create(locale, vanillaFramePool, AceGUI)
    local list = --[[---@type self]] {}
    setmetatable(list, {__index = CraftsList})

    local buttonsGroup = AceGUI:Create("SimpleGroup")
    buttonsGroup:SetLayout("Fill")
    buttonsGroup:SetFullWidth(true)

    local scrollFrame = AceGUI:Create("ScrollFrame")
    scrollFrame:SetLayout("List")
    scrollFrame:AddChild(buttonsGroup)

    list._locale = locale
    list._framePool = vanillaFramePool
    list._scrollFrame = scrollFrame
    list._buttonsGroup = buttonsGroup
    list._items = {}
    return list
end

---@return AceGUIWidget
function CraftsList:GetAceWidget()
    return self._scrollFrame
end

---@return Frame
function CraftsList:GetVanillaFrame()
    return self._scrollFrame.scrollframe
end

---@param a Craft
---@param b Craft
---@return boolean
local function compareCrafts(a, b)
    if a.skillLevel ~= b.skillLevel then
        return a.skillLevel < b.skillLevel
    end
    return a.localizedName < b.localizedName
end

---@param crafts Craft[]
function CraftsList:PopulateInterface(crafts)
    table.sort(crafts, compareCrafts)

    ---@param clickedItem CraftsListItem
    local highlightItem = function(clickedItem)
        for _, otherItem in ipairs(self._items) do
            otherItem:SetHighlight(otherItem == clickedItem)
        end
    end

    local buttonsGroup = --[[---@not nil]] self._buttonsGroup
    ---@type Frame
    local anchor = buttonsGroup.frame
    for i, craft in ipairs(crafts) do
        local item = self._items[i]
        if item == nil then
            item = CraftsListItem:Create(293, 16, self._locale, self._framePool)
            tinsert(self._items, item)
        end
        item:SetHighlight(false)
        item:OnClick(highlightItem)
        item:Attach(buttonsGroup.frame, anchor, "TOPLEFT", i == 1 and "TOPLEFT" or "BOTTOMLEFT", 0, 0)
        item:PopulateInterface(craft)
        anchor = item:GetFrame()
    end

    for i = getn(self._items), getn(crafts) + 1, -1 do
        local item = tremove(self._items, i)
        item:Destroy()
    end

    local height = 0
    if next(self._items) ~= nil then
        height = self._items[1]:GetFrame():GetHeight() * getn(crafts)
        if getn(crafts) >= 20 then
            height = height - 32
        end
    end
    buttonsGroup:SetHeight(height)

    self._scrollFrame:DoLayout()
end
