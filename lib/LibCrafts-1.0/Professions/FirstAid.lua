local lib = LibCraftsGetLibrary()
local name, version = "Professions-FirstAid", 4
local module = --[[---@type LcProfessionModule]] lib:RegisterProfessionModule(name, version, "First Aid")
if not module then return end

local Quality = lib.constants.qualities
local SpellSource = lib.constants.spell_sources
local RecipeSource = lib.constants.recipe_sources

module:NewCraft(3275, "Linen Bandage", 1, {SpellSource.LearnedAutomatically})
    :SetResult(1251)
    :AddReagent(2589, 1) -- Linen Cloth
    :Save()

module:NewCraft(3276, "Heavy Linen Bandage", 40, {SpellSource.Trainer})
    :SetResult(2581)
    :AddReagent(2589, 2) -- Linen Cloth
    :Save()

module:NewCraft(3277, "Wool Bandage", 80, {SpellSource.Trainer})
    :SetResult(3530)
    :AddReagent(2592, 1) -- Wool Cloth
    :Save()

module:NewCraft(3278, "Heavy Wool Bandage", 115, {SpellSource.Trainer})
    :SetResult(3531)
    :AddReagent(2592, 2) -- Wool Cloth
    :Save()

module:NewCraft(7928, "Silk Bandage", 150, {SpellSource.Trainer})
    :SetResult(6450)
    :AddReagent(4306, 1) -- Silk Cloth
    :Save()

module:NewCraft(7929, "Heavy Silk Bandage", 180, {})
    :SetResult(6451)
    :AddRecipe(16112, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4306, 2) -- Silk Cloth
    :Save()

module:NewCraft(7934, "Anti-Venom", 80, {SpellSource.Trainer})
    :SetResult(6452)
    :AddReagent(1475, 1) -- Small Venom Sac
    :Save()

module:NewCraft(7935, "Strong Anti-Venom", 130, {})
    :SetResult(6453)
    :AddRecipe(6454, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1288, 1) -- Large Venom Sac
    :Save()

module:NewCraft(10840, "Mageweave Bandage", 210, {})
    :SetResult(8544)
    :AddRecipe(16113, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4338, 1) -- Mageweave Cloth
    :Save()

module:NewCraft(10841, "Heavy Mageweave Bandage", 240, {SpellSource.Trainer})
    :SetResult(8545)
    :AddReagent(4338, 2) -- Mageweave Cloth
    :Save()

module:NewCraft(18629, "Runecloth Bandage", 260, {SpellSource.Trainer})
    :SetResult(14529)
    :AddReagent(14047, 1) -- Runecloth
    :Save()

module:NewCraft(18630, "Heavy Runecloth Bandage", 290, {SpellSource.Trainer})
    :SetResult(14530)
    :AddReagent(14047, 2) -- Runecloth
    :Save()

module:NewCraft(23787, "Powerful Anti-Venom", 300, {})
    :SetResult(19440)
    :AddRecipe(19442, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(19441, 1) -- Huge Venom Sac
    :Save()

if lib.env.is_turtle_wow then
    module:NewCraft(10844, "Powerful Smelling Salts", 250, {})
        :SetResult(8546)
        :AddRecipe(8547, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(7078, 2) -- Essence of Fire
        :AddReagent(8150, 4) -- Deeprock Salt
        :AddReagent(18512, 1) -- Larval Acid
        :Save()
end
