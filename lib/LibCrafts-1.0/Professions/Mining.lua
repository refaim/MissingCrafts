local lib = LibCraftsGetLibrary()
local name, version = "Professions-Mining", 2
local module = --[[---@type LcProfessionModule]] lib:RegisterProfessionModule(name, version, "Mining")
if not module then return end

local Quality = lib.constants.qualities
local SpellSource = lib.constants.spell_sources
local RecipeSource = lib.constants.recipe_sources

module:NewCraft(2657, "Smelt Copper", 1, {SpellSource.LearnedAutomatically})
    :SetResult(2840)
    :AddReagent(2770, 1) -- Copper Ore
    :Save()

module:NewCraft(2658, "Smelt Silver", 75, {SpellSource.Trainer})
    :SetResult(2842)
    :AddReagent(2775, 1) -- Silver Ore
    :Save()

module:NewCraft(2659, "Smelt Bronze", 65, {SpellSource.Trainer})
    :SetResult(2841)
    :AddReagent(2840, 1) -- Copper Bar
    :AddReagent(3576, 1) -- Tin Bar
    :Save()

module:NewCraft(3304, "Smelt Tin", 65, {SpellSource.Trainer})
    :SetResult(3576)
    :AddReagent(2771, 1) -- Tin Ore
    :Save()

module:NewCraft(3307, "Smelt Iron", 125, {SpellSource.Trainer})
    :SetResult(3575)
    :AddReagent(2772, 1) -- Iron Ore
    :Save()

module:NewCraft(3308, "Smelt Gold", 155, {SpellSource.Trainer})
    :SetResult(3577)
    :AddReagent(2776, 1) -- Gold Ore
    :Save()

module:NewCraft(3569, "Smelt Steel", 165, {SpellSource.Trainer})
    :SetResult(3859)
    :AddReagent(3575, 1) -- Iron Bar
    :AddReagent(3857, 1) -- Coal
    :Save()

module:NewCraft(10097, "Smelt Mithril", 175, {SpellSource.Trainer})
    :SetResult(3860)
    :AddReagent(3858, 1) -- Mithril Ore
    :Save()

module:NewCraft(10098, "Smelt Truesilver", 230, {SpellSource.Trainer})
    :SetResult(6037)
    :AddReagent(7911, 1) -- Truesilver Ore
    :Save()

module:NewCraft(14891, "Smelt Dark Iron", 230, {SpellSource.Quest})
    :SetResult(11371)
    :AddReagent(11370, 8) -- Dark Iron Ore
    :Save()

module:NewCraft(16153, "Smelt Thorium", 250, {SpellSource.Trainer})
    :SetResult(12359)
    :AddReagent(10620, 1) -- Thorium Ore
    :Save()

module:NewCraft(22967, "Smelt Elementium", 300, {SpellSource.Trainer})
    :SetResult(17771)
    :AddReagent(12360, 10) -- Arcanite Bar
    :AddReagent(17010, 1) -- Fiery Core
    :AddReagent(18562, 1) -- Elementium Ore
    :AddReagent(18567, 3) -- Elemental Flux
    :Save()

if lib.env.is_turtle_wow then
    module:NewCraft(45451, "Smelt Dreamsteel", 300, {})
        :SetResult(61216)
        :AddRecipe(61226, Quality.Uncommon, {RecipeSource.Quest})
        :AddReagent(3859, 1) -- Steel Bar
        :AddReagent(20381, 1) -- Dreamscale
        :AddReagent(61198, 1) -- Small Dream Shard
        :Save()
end
