local lib = LibCraftsGetLibrary()
local name, version = "Professions-Poisons", 4
local module = --[[---@type LcProfessionModule]] lib:RegisterProfessionModule(name, version, "Poisons")
if not module then return end

local Quality = lib.constants.qualities
local SpellSource = lib.constants.spell_sources
local RecipeSource = lib.constants.recipe_sources

module:NewCraft(2835, "Deadly Poison", 130, {SpellSource.Trainer})
    :SetResult(2892)
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(5173, 1) -- Deathweed
    :Save()

module:NewCraft(2837, "Deadly Poison II", 170, {SpellSource.Trainer})
    :SetResult(2893)
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(5173, 2) -- Deathweed
    :Save()

module:NewCraft(3420, "Crippling Poison", 1, {SpellSource.Trainer})
    :SetResult(3775)
    :AddReagent(2930, 1) -- Essence of Pain
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(3421, "Crippling Poison II", 230, {SpellSource.Trainer})
    :SetResult(3776)
    :AddReagent(8923, 3) -- Essence of Agony
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(5763, "Mind-numbing Poison", 100, {SpellSource.Trainer})
    :SetResult(5237)
    :AddReagent(2928, 1) -- Dust of Decay
    :AddReagent(2930, 1) -- Essence of Pain
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(6510, "Blinding Powder", 150, {SpellSource.Trainer})
    :SetResult(5530)
    :AddReagent(3818, 1) -- Fadeleaf
    :Save()

module:NewCraft(8681, "Instant Poison", 1, {SpellSource.LearnedAutomatically})
    :SetResult(6947)
    :AddReagent(2928, 1) -- Dust of Decay
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(8687, "Instant Poison II", 120, {SpellSource.Trainer})
    :SetResult(6949)
    :AddReagent(2928, 3) -- Dust of Decay
    :AddReagent(3372, 1) -- Leaded Vial
    :Save()

module:NewCraft(8691, "Instant Poison III", 160, {SpellSource.Trainer})
    :SetResult(6950)
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(8924, 1) -- Dust of Deterioration
    :Save()

module:NewCraft(8694, "Mind-numbing Poison II", 170, {SpellSource.Trainer})
    :SetResult(6951)
    :AddReagent(2928, 4) -- Dust of Decay
    :AddReagent(2930, 4) -- Essence of Pain
    :AddReagent(3372, 1) -- Leaded Vial
    :Save()

module:NewCraft(11341, "Instant Poison IV", 200, {SpellSource.Trainer})
    :SetResult(8926)
    :AddReagent(8924, 2) -- Dust of Deterioration
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11342, "Instant Poison V", 240, {SpellSource.Trainer})
    :SetResult(8927)
    :AddReagent(8924, 3) -- Dust of Deterioration
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11343, "Instant Poison VI", 280, {SpellSource.Trainer})
    :SetResult(8928)
    :AddReagent(8924, 4) -- Dust of Deterioration
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11357, "Deadly Poison III", 210, {SpellSource.Trainer})
    :SetResult(8984)
    :AddReagent(5173, 3) -- Deathweed
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11358, "Deadly Poison IV", 250, {SpellSource.Trainer})
    :SetResult(8985)
    :AddReagent(5173, 5) -- Deathweed
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11400, "Mind-numbing Poison III", 240, {SpellSource.Trainer})
    :SetResult(9186)
    :AddReagent(8923, 2) -- Essence of Agony
    :AddReagent(8924, 2) -- Dust of Deterioration
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(13220, "Wound Poison", 140, {SpellSource.Trainer})
    :SetResult(10918)
    :AddReagent(2930, 1) -- Essence of Pain
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(5173, 1) -- Deathweed
    :Save()

module:NewCraft(13228, "Wound Poison II", 180, {SpellSource.Trainer})
    :SetResult(10920)
    :AddReagent(2930, 1) -- Essence of Pain
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(5173, 2) -- Deathweed
    :Save()

module:NewCraft(13229, "Wound Poison III", 220, {SpellSource.Trainer})
    :SetResult(10921)
    :AddReagent(5173, 2) -- Deathweed
    :AddReagent(8923, 1) -- Essence of Agony
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(13230, "Wound Poison IV", 260, {SpellSource.Trainer})
    :SetResult(10922)
    :AddReagent(5173, 2) -- Deathweed
    :AddReagent(8923, 2) -- Essence of Agony
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(25347, "Deadly Poison V", 300, {})
    :SetResult(20844)
    :AddRecipe(21302, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(5173, 7) -- Deathweed
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

if lib.env.is_turtle_wow then
    module:NewCraft(45611, "Agitating Poison", 300, {SpellSource.Trainer})
        :SetResult(65032)
        :AddReagent(2931, 2) -- Maiden's Anguish
        :AddReagent(3372, 1) -- Leaded Vial
        :Save()

    module:NewCraft(45878, "Dissolvent Poison", 240, {SpellSource.Trainer})
        :SetResult(54009)
        :AddReagent(2931, 3) -- Maiden's Anguish
        :AddReagent(8924, 2) -- Dust of Deterioration
        :AddReagent(8925, 1) -- Crystal Vial
        :Save()

    module:NewCraft(45882, "Dissolvent Poison II", 300, {SpellSource.Trainer})
        :SetResult(54010)
        :AddReagent(2931, 4) -- Maiden's Anguish
        :AddReagent(8924, 3) -- Dust of Deterioration
        :AddReagent(8925, 1) -- Crystal Vial
        :Save()

    module:NewCraft(51924, "Corrosive Poison", 260, {SpellSource.Trainer})
        :SetResult(47408)
        :AddReagent(5173, 3) -- Deathweed
        :AddReagent(8924, 3) -- Dust of Deterioration
        :AddReagent(8925, 1) -- Crystal Vial
        :Save()

    module:NewCraft(52576, "Corrosive Poison II", 300, {})
        :SetResult(47409)
        :AddRecipe(21302, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(5173, 3) -- Deathweed
        :AddReagent(8924, 3) -- Dust of Deterioration
        :AddReagent(8925, 1) -- Crystal Vial
        :Save()
end
