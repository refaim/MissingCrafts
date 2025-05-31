local lib = LibCraftsGetLibrary()
local name, version = "Professions-Blacksmithing", 2
local module = --[[---@type LcProfessionModule]] lib:RegisterProfessionModule(name, version, "Blacksmithing")
if not module then return end

local Quality = lib.constants.qualities
local SpellSource = lib.constants.spell_sources
local RecipeSource = lib.constants.recipe_sources

module:NewCraft(2660, "Rough Sharpening Stone", 1, {SpellSource.LearnedAutomatically})
    :SetResult(2862)
    :AddReagent(2835, 1) -- Rough Stone
    :Save()

module:NewCraft(2661, "Copper Chain Belt", 35, {SpellSource.Trainer})
    :SetResult(2851)
    :AddReagent(2840, 6) -- Copper Bar
    :Save()

module:NewCraft(2662, "Copper Chain Pants", 1, {SpellSource.Trainer})
    :SetResult(2852)
    :AddReagent(2840, 4) -- Copper Bar
    :Save()

module:NewCraft(2663, "Copper Bracers", 1, {SpellSource.LearnedAutomatically})
    :SetResult(2853)
    :AddReagent(2840, 2) -- Copper Bar
    :Save()

module:NewCraft(2664, "Runed Copper Bracers", 90, {SpellSource.Trainer})
    :SetResult(2854)
    :AddReagent(2840, 10) -- Copper Bar
    :AddReagent(3470, 3) -- Rough Grinding Stone
    :Save()

module:NewCraft(2665, "Coarse Sharpening Stone", 65, {SpellSource.Trainer})
    :SetResult(2863)
    :AddReagent(2836, 1) -- Coarse Stone
    :Save()

module:NewCraft(2666, "Runed Copper Belt", 70, {SpellSource.Trainer})
    :SetResult(2857)
    :AddReagent(2840, 10) -- Copper Bar
    :Save()

module:NewCraft(2667, "Runed Copper Breastplate", 80, {})
    :SetResult(2864)
    :AddRecipe(2881, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1210, 1) -- Shadowgem
    :AddReagent(2840, 12) -- Copper Bar
    :AddReagent(3470, 2) -- Rough Grinding Stone
    :Save()

module:NewCraft(2668, "Rough Bronze Leggings", 105, {SpellSource.Trainer})
    :SetResult(2865)
    :AddReagent(2841, 6) -- Bronze Bar
    :Save()

module:NewCraft(2670, "Rough Bronze Cuirass", 105, {SpellSource.Trainer})
    :SetResult(2866)
    :AddReagent(2841, 7) -- Bronze Bar
    :Save()

module:NewCraft(2672, "Patterned Bronze Bracers", 120, {SpellSource.Trainer})
    :SetResult(2868)
    :AddReagent(2841, 5) -- Bronze Bar
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :Save()

module:NewCraft(2673, "Silvered Bronze Breastplate", 130, {})
    :SetResult(2869)
    :AddRecipe(5578, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1705, 1) -- Lesser Moonstone
    :AddReagent(2841, 10) -- Bronze Bar
    :AddReagent(2842, 2) -- Silver Bar
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :Save()

module:NewCraft(2674, "Heavy Sharpening Stone", 125, {SpellSource.Trainer})
    :SetResult(2871)
    :AddReagent(2838, 1) -- Heavy Stone
    :Save()

module:NewCraft(2675, "Shining Silver Breastplate", 145, {SpellSource.Trainer})
    :SetResult(2870)
    :AddReagent(1206, 2) -- Moss Agate
    :AddReagent(1705, 2) -- Lesser Moonstone
    :AddReagent(2841, 20) -- Bronze Bar
    :AddReagent(2842, 4) -- Silver Bar
    :AddReagent(5500, 2) -- Iridescent Pearl
    :Save()

module:NewCraft(2737, "Copper Mace", 15, {SpellSource.Trainer})
    :SetResult(2844)
    :AddReagent(2589, 2) -- Linen Cloth
    :AddReagent(2840, 6) -- Copper Bar
    :AddReagent(2880, 1) -- Weak Flux
    :Save()

module:NewCraft(2738, "Copper Axe", 20, {SpellSource.Trainer})
    :SetResult(2845)
    :AddReagent(2589, 2) -- Linen Cloth
    :AddReagent(2840, 6) -- Copper Bar
    :AddReagent(2880, 1) -- Weak Flux
    :Save()

module:NewCraft(2739, "Copper Shortsword", 25, {SpellSource.Trainer})
    :SetResult(2847)
    :AddReagent(2589, 2) -- Linen Cloth
    :AddReagent(2840, 6) -- Copper Bar
    :AddReagent(2880, 1) -- Weak Flux
    :Save()

module:NewCraft(2740, "Bronze Mace", 110, {SpellSource.Trainer})
    :SetResult(2848)
    :AddReagent(2319, 1) -- Medium Leather
    :AddReagent(2841, 6) -- Bronze Bar
    :AddReagent(2880, 4) -- Weak Flux
    :Save()

module:NewCraft(2741, "Bronze Axe", 115, {SpellSource.Trainer})
    :SetResult(2849)
    :AddReagent(2319, 1) -- Medium Leather
    :AddReagent(2841, 7) -- Bronze Bar
    :AddReagent(2880, 4) -- Weak Flux
    :Save()

module:NewCraft(2742, "Bronze Shortsword", 120, {SpellSource.Trainer})
    :SetResult(2850)
    :AddReagent(2319, 2) -- Medium Leather
    :AddReagent(2841, 5) -- Bronze Bar
    :AddReagent(2880, 4) -- Weak Flux
    :Save()

module:NewCraft(3115, "Rough Weightstone", 1, {SpellSource.LearnedAutomatically})
    :SetResult(3239)
    :AddReagent(2589, 1) -- Linen Cloth
    :AddReagent(2835, 1) -- Rough Stone
    :Save()

module:NewCraft(3116, "Coarse Weightstone", 65, {SpellSource.Trainer})
    :SetResult(3240)
    :AddReagent(2592, 1) -- Wool Cloth
    :AddReagent(2836, 1) -- Coarse Stone
    :Save()

module:NewCraft(3117, "Heavy Weightstone", 125, {SpellSource.Trainer})
    :SetResult(3241)
    :AddReagent(2592, 1) -- Wool Cloth
    :AddReagent(2838, 1) -- Heavy Stone
    :Save()

module:NewCraft(3292, "Heavy Copper Broadsword", 90, {SpellSource.Trainer})
    :SetResult(3487)
    :AddReagent(818, 2) -- Tigerseye
    :AddReagent(2319, 2) -- Medium Leather
    :AddReagent(2840, 14) -- Copper Bar
    :AddReagent(2880, 2) -- Weak Flux
    :Save()

module:NewCraft(3293, "Copper Battle Axe", 35, {SpellSource.Trainer})
    :SetResult(3488)
    :AddReagent(774, 2) -- Malachite
    :AddReagent(2318, 2) -- Light Leather
    :AddReagent(2840, 12) -- Copper Bar
    :AddReagent(2880, 2) -- Weak Flux
    :AddReagent(3470, 2) -- Rough Grinding Stone
    :Save()

module:NewCraft(3294, "Thick War Axe", 70, {SpellSource.Trainer})
    :SetResult(3489)
    :AddReagent(2318, 2) -- Light Leather
    :AddReagent(2840, 10) -- Copper Bar
    :AddReagent(2842, 2) -- Silver Bar
    :AddReagent(2880, 2) -- Weak Flux
    :AddReagent(3470, 2) -- Rough Grinding Stone
    :Save()

module:NewCraft(3295, "Deadly Bronze Poniard", 125, {})
    :SetResult(3490)
    :AddRecipe(2883, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1210, 2) -- Shadowgem
    :AddReagent(2319, 2) -- Medium Leather
    :AddReagent(2459, 1) -- Swiftness Potion
    :AddReagent(2841, 4) -- Bronze Bar
    :AddReagent(3466, 1) -- Strong Flux
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :Save()

module:NewCraft(3296, "Heavy Bronze Mace", 130, {SpellSource.Trainer})
    :SetResult(3491)
    :AddReagent(1206, 1) -- Moss Agate
    :AddReagent(1210, 1) -- Shadowgem
    :AddReagent(2319, 2) -- Medium Leather
    :AddReagent(2841, 8) -- Bronze Bar
    :AddReagent(3466, 1) -- Strong Flux
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :Save()

module:NewCraft(3297, "Mighty Iron Hammer", 145, {})
    :SetResult(3492)
    :AddRecipe(3608, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1705, 2) -- Lesser Moonstone
    :AddReagent(2319, 2) -- Medium Leather
    :AddReagent(3391, 1) -- Elixir of Ogre's Strength
    :AddReagent(3466, 2) -- Strong Flux
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :AddReagent(3575, 6) -- Iron Bar
    :Save()

module:NewCraft(3319, "Copper Chain Boots", 20, {SpellSource.Trainer})
    :SetResult(3469)
    :AddReagent(2840, 8) -- Copper Bar
    :Save()

module:NewCraft(3320, "Rough Grinding Stone", 25, {SpellSource.Trainer})
    :SetResult(3470)
    :AddReagent(2835, 2) -- Rough Stone
    :Save()

module:NewCraft(3321, "Copper Chain Vest", 35, {})
    :SetResult(3471)
    :AddRecipe(3609, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing, RecipeSource.Quest})
    :AddReagent(774, 1) -- Malachite
    :AddReagent(2840, 8) -- Copper Bar
    :AddReagent(3470, 2) -- Rough Grinding Stone
    :Save()

module:NewCraft(3323, "Runed Copper Gauntlets", 40, {SpellSource.Trainer})
    :SetResult(3472)
    :AddReagent(2840, 8) -- Copper Bar
    :AddReagent(3470, 2) -- Rough Grinding Stone
    :Save()

module:NewCraft(3324, "Runed Copper Pants", 45, {SpellSource.Trainer})
    :SetResult(3473)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(2840, 8) -- Copper Bar
    :AddReagent(3470, 3) -- Rough Grinding Stone
    :Save()

module:NewCraft(3325, "Gemmed Copper Gauntlets", 60, {})
    :SetResult(3474)
    :AddRecipe(3610, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(774, 1) -- Malachite
    :AddReagent(818, 1) -- Tigerseye
    :AddReagent(2840, 8) -- Copper Bar
    :Save()

module:NewCraft(3326, "Coarse Grinding Stone", 75, {SpellSource.Trainer})
    :SetResult(3478)
    :AddReagent(2836, 2) -- Coarse Stone
    :Save()

module:NewCraft(3328, "Rough Bronze Shoulders", 110, {SpellSource.Trainer})
    :SetResult(3480)
    :AddReagent(1210, 1) -- Shadowgem
    :AddReagent(2841, 5) -- Bronze Bar
    :AddReagent(3478, 1) -- Coarse Grinding Stone
    :Save()

module:NewCraft(3330, "Silvered Bronze Shoulders", 125, {})
    :SetResult(3481)
    :AddRecipe(2882, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2841, 8) -- Bronze Bar
    :AddReagent(2842, 2) -- Silver Bar
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :Save()

module:NewCraft(3331, "Silvered Bronze Boots", 130, {SpellSource.Trainer})
    :SetResult(3482)
    :AddReagent(2841, 6) -- Bronze Bar
    :AddReagent(2842, 1) -- Silver Bar
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :Save()

module:NewCraft(3333, "Silvered Bronze Gauntlets", 135, {SpellSource.Trainer})
    :SetResult(3483)
    :AddReagent(2841, 8) -- Bronze Bar
    :AddReagent(2842, 1) -- Silver Bar
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :Save()

module:NewCraft(3334, "Green Iron Boots", 145, {})
    :SetResult(3484)
    :AddRecipe(3611, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1705, 2) -- Lesser Moonstone
    :AddReagent(2605, 1) -- Green Dye
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :AddReagent(3575, 4) -- Iron Bar
    :Save()

module:NewCraft(3336, "Green Iron Gauntlets", 150, {})
    :SetResult(3485)
    :AddRecipe(3612, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2605, 1) -- Green Dye
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :AddReagent(3575, 4) -- Iron Bar
    :AddReagent(5498, 2) -- Small Lustrous Pearl
    :Save()

module:NewCraft(3337, "Heavy Grinding Stone", 125, {SpellSource.Trainer})
    :SetResult(3486)
    :AddReagent(2838, 3) -- Heavy Stone
    :Save()

module:NewCraft(3491, "Big Bronze Knife", 100, {SpellSource.Trainer})
    :SetResult(3848)
    :AddReagent(818, 1) -- Tigerseye
    :AddReagent(2319, 1) -- Medium Leather
    :AddReagent(2841, 6) -- Bronze Bar
    :AddReagent(2880, 4) -- Weak Flux
    :AddReagent(3470, 2) -- Rough Grinding Stone
    :Save()

module:NewCraft(3492, "Hardened Iron Shortsword", 160, {})
    :SetResult(3849)
    :AddRecipe(12162, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(1705, 2) -- Lesser Moonstone
    :AddReagent(3466, 2) -- Strong Flux
    :AddReagent(3486, 1) -- Heavy Grinding Stone
    :AddReagent(3575, 6) -- Iron Bar
    :AddReagent(4234, 3) -- Heavy Leather
    :Save()

module:NewCraft(3493, "Jade Serpentblade", 175, {})
    :SetResult(3850)
    :AddRecipe(3866, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1529, 2) -- Jade
    :AddReagent(3466, 2) -- Strong Flux
    :AddReagent(3486, 2) -- Heavy Grinding Stone
    :AddReagent(3575, 8) -- Iron Bar
    :AddReagent(4234, 3) -- Heavy Leather
    :Save()

module:NewCraft(3494, "Solid Iron Maul", 155, {})
    :SetResult(3851)
    :AddRecipe(10858, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2842, 4) -- Silver Bar
    :AddReagent(3466, 2) -- Strong Flux
    :AddReagent(3486, 1) -- Heavy Grinding Stone
    :AddReagent(3575, 8) -- Iron Bar
    :AddReagent(4234, 2) -- Heavy Leather
    :Save()

module:NewCraft(3495, "Golden Iron Destroyer", 170, {})
    :SetResult(3852)
    :AddRecipe(3867, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1705, 2) -- Lesser Moonstone
    :AddReagent(3466, 2) -- Strong Flux
    :AddReagent(3486, 2) -- Heavy Grinding Stone
    :AddReagent(3575, 10) -- Iron Bar
    :AddReagent(3577, 4) -- Gold Bar
    :AddReagent(4234, 2) -- Heavy Leather
    :Save()

module:NewCraft(3496, "Moonsteel Broadsword", 180, {})
    :SetResult(3853)
    :AddRecipe(12163, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(1705, 3) -- Lesser Moonstone
    :AddReagent(3466, 2) -- Strong Flux
    :AddReagent(3486, 2) -- Heavy Grinding Stone
    :AddReagent(3859, 8) -- Steel Bar
    :AddReagent(4234, 3) -- Heavy Leather
    :Save()

module:NewCraft(3497, "Frost Tiger Blade", 200, {})
    :SetResult(3854)
    :AddRecipe(3868, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(1529, 2) -- Jade
    :AddReagent(3466, 2) -- Strong Flux
    :AddReagent(3486, 2) -- Heavy Grinding Stone
    :AddReagent(3829, 1) -- Frost Oil
    :AddReagent(3859, 8) -- Steel Bar
    :AddReagent(4234, 4) -- Heavy Leather
    :Save()

module:NewCraft(3498, "Massive Iron Axe", 185, {})
    :SetResult(3855)
    :AddRecipe(12164, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3466, 2) -- Strong Flux
    :AddReagent(3486, 2) -- Heavy Grinding Stone
    :AddReagent(3575, 14) -- Iron Bar
    :AddReagent(3577, 4) -- Gold Bar
    :AddReagent(4234, 2) -- Heavy Leather
    :Save()

module:NewCraft(3500, "Shadow Crescent Axe", 200, {})
    :SetResult(3856)
    :AddRecipe(3869, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3466, 2) -- Strong Flux
    :AddReagent(3486, 3) -- Heavy Grinding Stone
    :AddReagent(3824, 1) -- Shadow Oil
    :AddReagent(3859, 10) -- Steel Bar
    :AddReagent(3864, 2) -- Citrine
    :AddReagent(4234, 3) -- Heavy Leather
    :Save()

module:NewCraft(3501, "Green Iron Bracers", 165, {SpellSource.Trainer})
    :SetResult(3835)
    :AddReagent(2605, 1) -- Green Dye
    :AddReagent(3575, 6) -- Iron Bar
    :Save()

module:NewCraft(3502, "Green Iron Helm", 170, {SpellSource.Trainer})
    :SetResult(3836)
    :AddReagent(2605, 1) -- Green Dye
    :AddReagent(3575, 12) -- Iron Bar
    :AddReagent(3864, 1) -- Citrine
    :Save()

module:NewCraft(3503, "Golden Scale Coif", 190, {})
    :SetResult(3837)
    :AddRecipe(6047, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3486, 2) -- Heavy Grinding Stone
    :AddReagent(3577, 2) -- Gold Bar
    :AddReagent(3859, 8) -- Steel Bar
    :Save()

module:NewCraft(3504, "Green Iron Shoulders", 160, {})
    :SetResult(3840)
    :AddRecipe(3870, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(2605, 1) -- Green Dye
    :AddReagent(3486, 1) -- Heavy Grinding Stone
    :AddReagent(3575, 7) -- Iron Bar
    :Save()

module:NewCraft(3505, "Golden Scale Shoulders", 175, {})
    :SetResult(3841)
    :AddRecipe(3871, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3486, 1) -- Heavy Grinding Stone
    :AddReagent(3577, 2) -- Gold Bar
    :AddReagent(3859, 6) -- Steel Bar
    :Save()

module:NewCraft(3506, "Green Iron Leggings", 155, {SpellSource.Trainer})
    :SetResult(3842)
    :AddReagent(2605, 1) -- Green Dye
    :AddReagent(3486, 1) -- Heavy Grinding Stone
    :AddReagent(3575, 8) -- Iron Bar
    :Save()

module:NewCraft(3507, "Golden Scale Leggings", 170, {})
    :SetResult(3843)
    :AddRecipe(3872, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(3486, 1) -- Heavy Grinding Stone
    :AddReagent(3575, 10) -- Iron Bar
    :AddReagent(3577, 2) -- Gold Bar
    :Save()

module:NewCraft(3508, "Green Iron Hauberk", 180, {SpellSource.Trainer})
    :SetResult(3844)
    :AddReagent(1206, 2) -- Moss Agate
    :AddReagent(1529, 2) -- Jade
    :AddReagent(3486, 4) -- Heavy Grinding Stone
    :AddReagent(3575, 20) -- Iron Bar
    :AddReagent(4255, 1) -- Green Leather Armor
    :Save()

module:NewCraft(3511, "Golden Scale Cuirass", 195, {})
    :SetResult(3845)
    :AddRecipe(3873, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1529, 2) -- Jade
    :AddReagent(3486, 4) -- Heavy Grinding Stone
    :AddReagent(3577, 2) -- Gold Bar
    :AddReagent(3859, 12) -- Steel Bar
    :Save()

module:NewCraft(3513, "Polished Steel Boots", 185, {})
    :SetResult(3846)
    :AddRecipe(3874, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1705, 1) -- Lesser Moonstone
    :AddReagent(3486, 2) -- Heavy Grinding Stone
    :AddReagent(3859, 8) -- Steel Bar
    :AddReagent(3864, 1) -- Citrine
    :Save()

module:NewCraft(3515, "Golden Scale Boots", 200, {})
    :SetResult(3847)
    :AddRecipe(3875, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(3486, 4) -- Heavy Grinding Stone
    :AddReagent(3577, 4) -- Gold Bar
    :AddReagent(3859, 10) -- Steel Bar
    :AddReagent(3864, 1) -- Citrine
    :Save()

module:NewCraft(6517, "Pearl-handled Dagger", 110, {SpellSource.Trainer})
    :SetResult(5540)
    :AddReagent(2841, 6) -- Bronze Bar
    :AddReagent(3466, 1) -- Strong Flux
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :AddReagent(5498, 2) -- Small Lustrous Pearl
    :Save()

module:NewCraft(6518, "Iridescent Hammer", 140, {})
    :SetResult(5541)
    :AddRecipe(5543, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2319, 2) -- Medium Leather
    :AddReagent(2841, 10) -- Bronze Bar
    :AddReagent(3466, 1) -- Strong Flux
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :AddReagent(5500, 1) -- Iridescent Pearl
    :Save()

module:NewCraft(7221, "Iron Shield Spike", 150, {})
    :SetResult(6042)
    :AddRecipe(6044, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3478, 4) -- Coarse Grinding Stone
    :AddReagent(3575, 6) -- Iron Bar
    :Save()

module:NewCraft(7222, "Iron Counterweight", 165, {})
    :SetResult(6043)
    :AddRecipe(6045, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1705, 1) -- Lesser Moonstone
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :AddReagent(3575, 4) -- Iron Bar
    :Save()

module:NewCraft(7223, "Golden Scale Bracers", 185, {SpellSource.Trainer})
    :SetResult(6040)
    :AddReagent(3486, 2) -- Heavy Grinding Stone
    :AddReagent(3859, 5) -- Steel Bar
    :Save()

module:NewCraft(7224, "Steel Weapon Chain", 190, {})
    :SetResult(6041)
    :AddRecipe(6046, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(3486, 2) -- Heavy Grinding Stone
    :AddReagent(3859, 8) -- Steel Bar
    :AddReagent(4234, 4) -- Heavy Leather
    :Save()

module:NewCraft(7408, "Heavy Copper Maul", 65, {SpellSource.Trainer})
    :SetResult(6214)
    :AddReagent(2318, 2) -- Light Leather
    :AddReagent(2840, 12) -- Copper Bar
    :AddReagent(2880, 2) -- Weak Flux
    :Save()

module:NewCraft(7817, "Rough Bronze Boots", 95, {SpellSource.Trainer})
    :SetResult(6350)
    :AddReagent(2841, 6) -- Bronze Bar
    :AddReagent(3470, 6) -- Rough Grinding Stone
    :Save()

module:NewCraft(7818, "Silver Rod", 100, {SpellSource.Trainer})
    :SetResult(6338)
    :AddReagent(2842, 1) -- Silver Bar
    :AddReagent(3470, 2) -- Rough Grinding Stone
    :Save()

module:NewCraft(8367, "Ironforge Breastplate", 100, {})
    :SetResult(6731)
    :AddRecipe(6735, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(818, 2) -- Tigerseye
    :AddReagent(2840, 16) -- Copper Bar
    :AddReagent(3470, 3) -- Rough Grinding Stone
    :Save()

module:NewCraft(8768, "Iron Buckle", 150, {SpellSource.Trainer})
    :SetResult(7071)
    :AddReagent(3575, 1) -- Iron Bar
    :Save()

module:NewCraft(8880, "Copper Dagger", 30, {SpellSource.Trainer})
    :SetResult(7166)
    :AddReagent(2318, 1) -- Light Leather
    :AddReagent(2840, 6) -- Copper Bar
    :AddReagent(2880, 1) -- Weak Flux
    :AddReagent(3470, 1) -- Rough Grinding Stone
    :Save()

module:NewCraft(9811, "Barbaric Iron Shoulders", 160, {})
    :SetResult(7913)
    :AddRecipe(7978, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(1210, 2) -- Shadowgem
    :AddReagent(3486, 2) -- Heavy Grinding Stone
    :AddReagent(3575, 8) -- Iron Bar
    :AddReagent(5635, 4) -- Sharp Claw
    :Save()

module:NewCraft(9813, "Barbaric Iron Breastplate", 160, {})
    :SetResult(7914)
    :AddRecipe(7979, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(3486, 4) -- Heavy Grinding Stone
    :AddReagent(3575, 20) -- Iron Bar
    :Save()

module:NewCraft(9814, "Barbaric Iron Helm", 175, {})
    :SetResult(7915)
    :AddRecipe(7980, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(3575, 10) -- Iron Bar
    :AddReagent(5635, 2) -- Sharp Claw
    :AddReagent(5637, 2) -- Large Fang
    :Save()

module:NewCraft(9818, "Barbaric Iron Boots", 180, {})
    :SetResult(7916)
    :AddRecipe(7981, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(818, 4) -- Tigerseye
    :AddReagent(3486, 2) -- Heavy Grinding Stone
    :AddReagent(3575, 12) -- Iron Bar
    :AddReagent(5637, 4) -- Large Fang
    :Save()

module:NewCraft(9820, "Barbaric Iron Gloves", 185, {})
    :SetResult(7917)
    :AddRecipe(7982, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(3486, 3) -- Heavy Grinding Stone
    :AddReagent(3575, 14) -- Iron Bar
    :AddReagent(5637, 2) -- Large Fang
    :Save()

module:NewCraft(9916, "Steel Breastplate", 200, {SpellSource.Trainer})
    :SetResult(7963)
    :AddReagent(3486, 3) -- Heavy Grinding Stone
    :AddReagent(3859, 16) -- Steel Bar
    :Save()

module:NewCraft(9918, "Solid Sharpening Stone", 200, {SpellSource.Trainer})
    :SetResult(7964)
    :AddReagent(7912, 1) -- Solid Stone
    :Save()

module:NewCraft(9920, "Solid Grinding Stone", 200, {SpellSource.Trainer})
    :SetResult(7966)
    :AddReagent(7912, 4) -- Solid Stone
    :Save()

module:NewCraft(9921, "Solid Weightstone", 200, {SpellSource.Trainer})
    :SetResult(7965)
    :AddReagent(4306, 1) -- Silk Cloth
    :AddReagent(7912, 1) -- Solid Stone
    :Save()

module:NewCraft(9926, "Heavy Mithril Shoulder", 205, {SpellSource.Trainer})
    :SetResult(7918)
    :AddReagent(3860, 8) -- Mithril Bar
    :AddReagent(4234, 6) -- Heavy Leather
    :Save()

module:NewCraft(9928, "Heavy Mithril Gauntlet", 205, {SpellSource.Trainer})
    :SetResult(7919)
    :AddReagent(3860, 6) -- Mithril Bar
    :AddReagent(4338, 4) -- Mageweave Cloth
    :Save()

module:NewCraft(9931, "Mithril Scale Pants", 205, {SpellSource.Trainer})
    :SetResult(7920)
    :AddReagent(3860, 12) -- Mithril Bar
    :Save()

module:NewCraft(9933, "Heavy Mithril Pants", 210, {})
    :SetResult(7921)
    :AddRecipe(7975, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1705, 2) -- Lesser Moonstone
    :AddReagent(3860, 10) -- Mithril Bar
    :Save()

module:NewCraft(9935, "Steel Plate Helm", 215, {SpellSource.Trainer})
    :SetResult(7922)
    :AddReagent(3859, 14) -- Steel Bar
    :AddReagent(7966, 1) -- Solid Grinding Stone
    :Save()

module:NewCraft(9937, "Mithril Scale Bracers", 215, {})
    :SetResult(7924)
    :AddRecipe(7995, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(3860, 8) -- Mithril Bar
    :AddReagent(3864, 2) -- Citrine
    :Save()

module:NewCraft(9939, "Mithril Shield Spike", 215, {})
    :SetResult(7967)
    :AddRecipe(7976, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(3860, 4) -- Mithril Bar
    :AddReagent(6037, 2) -- Truesilver Bar
    :AddReagent(7966, 4) -- Solid Grinding Stone
    :Save()

module:NewCraft(9945, "Ornate Mithril Pants", 220, {})
    :SetResult(7926)
    :AddRecipe(7983, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(3860, 12) -- Mithril Bar
    :AddReagent(6037, 1) -- Truesilver Bar
    :AddReagent(7909, 1) -- Aquamarine
    :AddReagent(7966, 1) -- Solid Grinding Stone
    :Save()

module:NewCraft(9950, "Ornate Mithril Gloves", 220, {})
    :SetResult(7927)
    :AddRecipe(7984, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(3860, 10) -- Mithril Bar
    :AddReagent(4338, 6) -- Mageweave Cloth
    :AddReagent(6037, 1) -- Truesilver Bar
    :AddReagent(7966, 1) -- Solid Grinding Stone
    :Save()

module:NewCraft(9952, "Ornate Mithril Shoulders", 225, {})
    :SetResult(7928)
    :AddRecipe(7985, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(3860, 12) -- Mithril Bar
    :AddReagent(4304, 6) -- Thick Leather
    :AddReagent(6037, 1) -- Truesilver Bar
    :Save()

module:NewCraft(9954, "Truesilver Gauntlets", 225, {SpellSource.Trainer})
    :SetResult(7938)
    :AddReagent(3860, 10) -- Mithril Bar
    :AddReagent(3864, 3) -- Citrine
    :AddReagent(5966, 1) -- Guardian Gloves
    :AddReagent(6037, 8) -- Truesilver Bar
    :AddReagent(7909, 3) -- Aquamarine
    :AddReagent(7966, 2) -- Solid Grinding Stone
    :Save()

module:NewCraft(9957, "Orcish War Leggings", 230, {SpellSource.Quest})
    :SetResult(7929)
    :AddReagent(3860, 12) -- Mithril Bar
    :AddReagent(7067, 1) -- Elemental Earth
    :Save()

module:NewCraft(9959, "Heavy Mithril Breastplate", 230, {SpellSource.Trainer})
    :SetResult(7930)
    :AddReagent(3860, 16) -- Mithril Bar
    :Save()

module:NewCraft(9961, "Mithril Coif", 230, {SpellSource.Trainer})
    :SetResult(7931)
    :AddReagent(3860, 10) -- Mithril Bar
    :AddReagent(4338, 6) -- Mageweave Cloth
    :Save()

module:NewCraft(9964, "Mithril Spurs", 235, {})
    :SetResult(7969)
    :AddRecipe(7989, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3860, 4) -- Mithril Bar
    :AddReagent(7966, 3) -- Solid Grinding Stone
    :Save()

module:NewCraft(9966, "Mithril Scale Shoulders", 235, {})
    :SetResult(7932)
    :AddRecipe(7991, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3860, 14) -- Mithril Bar
    :AddReagent(3864, 4) -- Citrine
    :AddReagent(4304, 4) -- Thick Leather
    :Save()

module:NewCraft(9968, "Heavy Mithril Boots", 235, {SpellSource.Trainer})
    :SetResult(7933)
    :AddReagent(3860, 14) -- Mithril Bar
    :AddReagent(4304, 4) -- Thick Leather
    :Save()

module:NewCraft(9970, "Heavy Mithril Helm", 245, {})
    :SetResult(7934)
    :AddRecipe(7990, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3860, 14) -- Mithril Bar
    :AddReagent(7909, 1) -- Aquamarine
    :Save()

module:NewCraft(9972, "Ornate Mithril Breastplate", 240, {SpellSource.Quest})
    :SetResult(7935)
    :AddReagent(3860, 16) -- Mithril Bar
    :AddReagent(6037, 6) -- Truesilver Bar
    :AddReagent(7077, 1) -- Heart of Fire
    :AddReagent(7966, 1) -- Solid Grinding Stone
    :Save()

module:NewCraft(9974, "Truesilver Breastplate", 245, {SpellSource.Trainer})
    :SetResult(7939)
    :AddReagent(3860, 12) -- Mithril Bar
    :AddReagent(6037, 24) -- Truesilver Bar
    :AddReagent(7910, 4) -- Star Ruby
    :AddReagent(7966, 2) -- Solid Grinding Stone
    :AddReagent(7971, 4) -- Black Pearl
    :Save()

module:NewCraft(9979, "Ornate Mithril Boots", 245, {SpellSource.Quest})
    :SetResult(7936)
    :AddReagent(3860, 14) -- Mithril Bar
    :AddReagent(4304, 4) -- Thick Leather
    :AddReagent(6037, 2) -- Truesilver Bar
    :AddReagent(7909, 1) -- Aquamarine
    :AddReagent(7966, 1) -- Solid Grinding Stone
    :Save()

module:NewCraft(9980, "Ornate Mithril Helm", 245, {SpellSource.Quest})
    :SetResult(7937)
    :AddReagent(3860, 16) -- Mithril Bar
    :AddReagent(6037, 2) -- Truesilver Bar
    :AddReagent(7966, 1) -- Solid Grinding Stone
    :AddReagent(7971, 1) -- Black Pearl
    :Save()

module:NewCraft(9983, "Copper Claymore", 30, {SpellSource.Trainer})
    :SetResult(7955)
    :AddReagent(2318, 1) -- Light Leather
    :AddReagent(2840, 10) -- Copper Bar
    :AddReagent(2880, 2) -- Weak Flux
    :AddReagent(3470, 1) -- Rough Grinding Stone
    :Save()

module:NewCraft(9985, "Bronze Warhammer", 125, {SpellSource.Trainer})
    :SetResult(7956)
    :AddReagent(2319, 1) -- Medium Leather
    :AddReagent(2841, 8) -- Bronze Bar
    :AddReagent(3466, 1) -- Strong Flux
    :Save()

module:NewCraft(9986, "Bronze Greatsword", 130, {SpellSource.Trainer})
    :SetResult(7957)
    :AddReagent(2319, 2) -- Medium Leather
    :AddReagent(2841, 12) -- Bronze Bar
    :AddReagent(3466, 2) -- Strong Flux
    :Save()

module:NewCraft(9987, "Bronze Battle Axe", 135, {SpellSource.Trainer})
    :SetResult(7958)
    :AddReagent(2319, 2) -- Medium Leather
    :AddReagent(2841, 14) -- Bronze Bar
    :AddReagent(3466, 1) -- Strong Flux
    :Save()

module:NewCraft(9993, "Heavy Mithril Axe", 210, {SpellSource.Trainer})
    :SetResult(7941)
    :AddReagent(3860, 12) -- Mithril Bar
    :AddReagent(3864, 2) -- Citrine
    :AddReagent(4234, 4) -- Heavy Leather
    :AddReagent(7966, 1) -- Solid Grinding Stone
    :Save()

module:NewCraft(9995, "Blue Glittering Axe", 220, {})
    :SetResult(7942)
    :AddRecipe(7992, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3860, 16) -- Mithril Bar
    :AddReagent(4304, 4) -- Thick Leather
    :AddReagent(7909, 2) -- Aquamarine
    :AddReagent(7966, 1) -- Solid Grinding Stone
    :Save()

module:NewCraft(9997, "Wicked Mithril Blade", 225, {})
    :SetResult(7943)
    :AddRecipe(8029, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3860, 14) -- Mithril Bar
    :AddReagent(4304, 2) -- Thick Leather
    :AddReagent(6037, 4) -- Truesilver Bar
    :AddReagent(7966, 1) -- Solid Grinding Stone
    :Save()

module:NewCraft(10001, "Big Black Mace", 230, {SpellSource.Trainer})
    :SetResult(7945)
    :AddReagent(1210, 4) -- Shadowgem
    :AddReagent(3860, 16) -- Mithril Bar
    :AddReagent(4304, 2) -- Thick Leather
    :AddReagent(7966, 1) -- Solid Grinding Stone
    :AddReagent(7971, 1) -- Black Pearl
    :Save()

module:NewCraft(10003, "The Shatterer", 235, {SpellSource.Trainer})
    :SetResult(7954)
    :AddReagent(1529, 5) -- Jade
    :AddReagent(3860, 24) -- Mithril Bar
    :AddReagent(3864, 5) -- Citrine
    :AddReagent(4304, 4) -- Thick Leather
    :AddReagent(6037, 6) -- Truesilver Bar
    :AddReagent(7075, 4) -- Core of Earth
    :AddReagent(7966, 4) -- Solid Grinding Stone
    :Save()

module:NewCraft(10005, "Dazzling Mithril Rapier", 240, {})
    :SetResult(7944)
    :AddRecipe(7993, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1206, 2) -- Moss Agate
    :AddReagent(1705, 2) -- Lesser Moonstone
    :AddReagent(3860, 14) -- Mithril Bar
    :AddReagent(4338, 2) -- Mageweave Cloth
    :AddReagent(7909, 1) -- Aquamarine
    :AddReagent(7966, 1) -- Solid Grinding Stone
    :Save()

module:NewCraft(10007, "Phantom Blade", 245, {SpellSource.Trainer})
    :SetResult(7961)
    :AddReagent(3823, 2) -- Lesser Invisibility Potion
    :AddReagent(3860, 28) -- Mithril Bar
    :AddReagent(4304, 2) -- Thick Leather
    :AddReagent(6037, 8) -- Truesilver Bar
    :AddReagent(7081, 6) -- Breath of Wind
    :AddReagent(7909, 6) -- Aquamarine
    :AddReagent(7966, 4) -- Solid Grinding Stone
    :Save()

module:NewCraft(10009, "Runed Mithril Hammer", 245, {})
    :SetResult(7946)
    :AddRecipe(8028, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3860, 18) -- Mithril Bar
    :AddReagent(4304, 4) -- Thick Leather
    :AddReagent(7075, 2) -- Core of Earth
    :AddReagent(7966, 1) -- Solid Grinding Stone
    :Save()

module:NewCraft(10011, "Blight", 250, {SpellSource.Trainer})
    :SetResult(7959)
    :AddReagent(3860, 28) -- Mithril Bar
    :AddReagent(4304, 6) -- Thick Leather
    :AddReagent(6037, 10) -- Truesilver Bar
    :AddReagent(7966, 6) -- Solid Grinding Stone
    :AddReagent(7972, 10) -- Ichor of Undeath
    :Save()

module:NewCraft(10013, "Ebon Shiv", 255, {})
    :SetResult(7947)
    :AddRecipe(8030, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3860, 12) -- Mithril Bar
    :AddReagent(4304, 2) -- Thick Leather
    :AddReagent(6037, 6) -- Truesilver Bar
    :AddReagent(7910, 2) -- Star Ruby
    :AddReagent(7966, 1) -- Solid Grinding Stone
    :Save()

module:NewCraft(10015, "Truesilver Champion", 260, {SpellSource.Trainer})
    :SetResult(7960)
    :AddReagent(3860, 30) -- Mithril Bar
    :AddReagent(4304, 6) -- Thick Leather
    :AddReagent(6037, 16) -- Truesilver Bar
    :AddReagent(7081, 4) -- Breath of Wind
    :AddReagent(7910, 6) -- Star Ruby
    :AddReagent(7966, 8) -- Solid Grinding Stone
    :Save()

module:NewCraft(11454, "Inlaid Mithril Cylinder", 200, {})
    :SetResult(9060)
    :AddRecipe(10713, Quality.Common, {RecipeSource.CraftedByEngineer})
    :AddReagent(3577, 1) -- Gold Bar
    :AddReagent(3860, 5) -- Mithril Bar
    :AddReagent(6037, 1) -- Truesilver Bar
    :Save()

module:NewCraft(11643, "Golden Scale Gauntlets", 205, {})
    :SetResult(9366)
    :AddRecipe(9367, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(3486, 4) -- Heavy Grinding Stone
    :AddReagent(3577, 4) -- Gold Bar
    :AddReagent(3859, 10) -- Steel Bar
    :AddReagent(3864, 1) -- Citrine
    :Save()

module:NewCraft(12259, "Silvered Bronze Leggings", 155, {})
    :SetResult(10423)
    :AddRecipe(10424, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2841, 12) -- Bronze Bar
    :AddReagent(2842, 4) -- Silver Bar
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :Save()

module:NewCraft(12260, "Rough Copper Vest", 1, {SpellSource.LearnedAutomatically})
    :SetResult(10421)
    :AddReagent(2840, 4) -- Copper Bar
    :Save()

module:NewCraft(14379, "Golden Rod", 150, {SpellSource.Trainer})
    :SetResult(11128)
    :AddReagent(3478, 2) -- Coarse Grinding Stone
    :AddReagent(3577, 1) -- Gold Bar
    :Save()

module:NewCraft(14380, "Truesilver Rod", 200, {SpellSource.Trainer})
    :SetResult(11144)
    :AddReagent(3486, 1) -- Heavy Grinding Stone
    :AddReagent(6037, 1) -- Truesilver Bar
    :Save()

module:NewCraft(15292, "Dark Iron Pulverizer", 265, {})
    :SetResult(11608)
    :AddRecipe(11610, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7077, 4) -- Heart of Fire
    :AddReagent(11371, 18) -- Dark Iron Bar
    :Save()

module:NewCraft(15293, "Dark Iron Mail", 270, {})
    :SetResult(11606)
    :AddRecipe(11614, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7077, 2) -- Heart of Fire
    :AddReagent(11371, 10) -- Dark Iron Bar
    :Save()

module:NewCraft(15294, "Dark Iron Sunderer", 275, {})
    :SetResult(11607)
    :AddRecipe(11611, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7077, 4) -- Heart of Fire
    :AddReagent(11371, 26) -- Dark Iron Bar
    :Save()

module:NewCraft(15295, "Dark Iron Shoulders", 280, {})
    :SetResult(11605)
    :AddRecipe(11615, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7077, 1) -- Heart of Fire
    :AddReagent(11371, 6) -- Dark Iron Bar
    :Save()

module:NewCraft(15296, "Dark Iron Plate", 285, {})
    :SetResult(11604)
    :AddRecipe(11612, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7077, 8) -- Heart of Fire
    :AddReagent(11371, 20) -- Dark Iron Bar
    :Save()

module:NewCraft(15972, "Glinting Steel Dagger", 180, {SpellSource.Trainer})
    :SetResult(12259)
    :AddReagent(1206, 1) -- Moss Agate
    :AddReagent(3466, 2) -- Strong Flux
    :AddReagent(3859, 10) -- Steel Bar
    :AddReagent(4234, 1) -- Heavy Leather
    :AddReagent(7067, 1) -- Elemental Earth
    :Save()

module:NewCraft(15973, "Searing Golden Blade", 190, {})
    :SetResult(12260)
    :AddRecipe(12261, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(3577, 4) -- Gold Bar
    :AddReagent(3859, 10) -- Steel Bar
    :AddReagent(4234, 2) -- Heavy Leather
    :AddReagent(7068, 2) -- Elemental Fire
    :Save()

module:NewCraft(16639, "Dense Grinding Stone", 250, {SpellSource.Trainer})
    :SetResult(12644)
    :AddReagent(12365, 4) -- Dense Stone
    :Save()

module:NewCraft(16640, "Dense Weightstone", 250, {SpellSource.Trainer})
    :SetResult(12643)
    :AddReagent(12365, 1) -- Dense Stone
    :AddReagent(14047, 1) -- Runecloth
    :Save()

module:NewCraft(16641, "Dense Sharpening Stone", 250, {SpellSource.Trainer})
    :SetResult(12404)
    :AddReagent(12365, 1) -- Dense Stone
    :Save()

module:NewCraft(16642, "Thorium Armor", 250, {})
    :SetResult(12405)
    :AddRecipe(12682, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(11188, 4) -- Yellow Power Crystal
    :AddReagent(12359, 16) -- Thorium Bar
    :AddReagent(12361, 1) -- Blue Sapphire
    :Save()

module:NewCraft(16643, "Thorium Belt", 250, {})
    :SetResult(12406)
    :AddRecipe(12683, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(11186, 4) -- Red Power Crystal
    :AddReagent(12359, 12) -- Thorium Bar
    :Save()

module:NewCraft(16644, "Thorium Bracers", 255, {})
    :SetResult(12408)
    :AddRecipe(12684, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(11184, 4) -- Blue Power Crystal
    :AddReagent(12359, 12) -- Thorium Bar
    :Save()

module:NewCraft(16645, "Radiant Belt", 260, {})
    :SetResult(12416)
    :AddRecipe(12685, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7077, 2) -- Heart of Fire
    :AddReagent(12359, 10) -- Thorium Bar
    :Save()

module:NewCraft(16646, "Imperial Plate Shoulders", 265, {})
    :SetResult(12428)
    :AddRecipe(12687, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(8170, 6) -- Rugged Leather
    :AddReagent(12359, 14) -- Thorium Bar
    :AddReagent(12361, 1) -- Blue Sapphire
    :Save()

module:NewCraft(16647, "Imperial Plate Belt", 265, {})
    :SetResult(12424)
    :AddRecipe(12688, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(12359, 12) -- Thorium Bar
    :AddReagent(12361, 1) -- Blue Sapphire
    :Save()

module:NewCraft(16648, "Radiant Breastplate", 270, {})
    :SetResult(12415)
    :AddRecipe(12689, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7077, 2) -- Heart of Fire
    :AddReagent(7910, 1) -- Star Ruby
    :AddReagent(12359, 18) -- Thorium Bar
    :Save()

module:NewCraft(16649, "Imperial Plate Bracers", 270, {})
    :SetResult(12425)
    :AddRecipe(12690, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(7909, 2) -- Aquamarine
    :AddReagent(12359, 16) -- Thorium Bar
    :Save()

module:NewCraft(16650, "Wildthorn Mail", 270, {})
    :SetResult(12624)
    :AddRecipe(12691, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8153, 4) -- Wildvine
    :AddReagent(12359, 40) -- Thorium Bar
    :AddReagent(12364, 1) -- Huge Emerald
    :AddReagent(12655, 2) -- Enchanted Thorium Bar
    :AddReagent(12803, 4) -- Living Essence
    :Save()

module:NewCraft(16651, "Thorium Shield Spike", 275, {})
    :SetResult(12645)
    :AddRecipe(12692, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7076, 2) -- Essence of Earth
    :AddReagent(12359, 4) -- Thorium Bar
    :AddReagent(12644, 4) -- Dense Grinding Stone
    :Save()

module:NewCraft(16652, "Thorium Boots", 280, {})
    :SetResult(12409)
    :AddRecipe(12693, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8170, 8) -- Rugged Leather
    :AddReagent(11185, 4) -- Green Power Crystal
    :AddReagent(12359, 20) -- Thorium Bar
    :Save()

module:NewCraft(16653, "Thorium Helm", 280, {})
    :SetResult(12410)
    :AddRecipe(12694, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7910, 1) -- Star Ruby
    :AddReagent(11188, 4) -- Yellow Power Crystal
    :AddReagent(12359, 24) -- Thorium Bar
    :Save()

module:NewCraft(16654, "Radiant Gloves", 285, {})
    :SetResult(12418)
    :AddRecipe(12695, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7077, 4) -- Heart of Fire
    :AddReagent(12359, 18) -- Thorium Bar
    :Save()

module:NewCraft(16655, "Fiery Plate Gauntlets", 290, {})
    :SetResult(12631)
    :AddRecipe(12699, Quality.Rare, {RecipeSource.Quest})
    :AddReagent(7078, 2) -- Essence of Fire
    :AddReagent(7910, 4) -- Star Ruby
    :AddReagent(12359, 20) -- Thorium Bar
    :AddReagent(12655, 6) -- Enchanted Thorium Bar
    :Save()

module:NewCraft(16656, "Radiant Boots", 290, {})
    :SetResult(12419)
    :AddRecipe(12697, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7077, 4) -- Heart of Fire
    :AddReagent(12359, 14) -- Thorium Bar
    :Save()

module:NewCraft(16657, "Imperial Plate Boots", 295, {})
    :SetResult(12426)
    :AddRecipe(12700, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(12359, 30) -- Thorium Bar
    :AddReagent(12361, 2) -- Blue Sapphire
    :Save()

module:NewCraft(16658, "Imperial Plate Helm", 295, {})
    :SetResult(12427)
    :AddRecipe(12701, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(7909, 2) -- Aquamarine
    :AddReagent(12359, 30) -- Thorium Bar
    :AddReagent(12364, 1) -- Huge Emerald
    :Save()

module:NewCraft(16659, "Radiant Circlet", 295, {})
    :SetResult(12417)
    :AddRecipe(12702, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7077, 4) -- Heart of Fire
    :AddReagent(12359, 18) -- Thorium Bar
    :Save()

module:NewCraft(16661, "Storm Gauntlets", 295, {})
    :SetResult(12632)
    :AddRecipe(12703, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Vendor})
    :AddReagent(7080, 4) -- Essence of Water
    :AddReagent(12359, 20) -- Thorium Bar
    :AddReagent(12361, 4) -- Blue Sapphire
    :AddReagent(12655, 4) -- Enchanted Thorium Bar
    :Save()

module:NewCraft(16662, "Thorium Leggings", 300, {})
    :SetResult(12414)
    :AddRecipe(12704, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(11186, 4) -- Red Power Crystal
    :AddReagent(12359, 26) -- Thorium Bar
    :Save()

module:NewCraft(16663, "Imperial Plate Chest", 300, {})
    :SetResult(12422)
    :AddRecipe(12705, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(12359, 30) -- Thorium Bar
    :AddReagent(12361, 1) -- Blue Sapphire
    :AddReagent(12364, 1) -- Huge Emerald
    :Save()

module:NewCraft(16664, "Runic Plate Shoulders", 300, {})
    :SetResult(12610)
    :AddRecipe(12706, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(3577, 6) -- Gold Bar
    :AddReagent(12359, 20) -- Thorium Bar
    :AddReagent(12360, 2) -- Arcanite Bar
    :Save()

module:NewCraft(16665, "Runic Plate Boots", 300, {})
    :SetResult(12611)
    :AddRecipe(12707, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(2842, 10) -- Silver Bar
    :AddReagent(12359, 20) -- Thorium Bar
    :AddReagent(12360, 2) -- Arcanite Bar
    :Save()

module:NewCraft(16667, "Demon Forged Breastplate", 285, {})
    :SetResult(12628)
    :AddRecipe(12696, Quality.Rare, {RecipeSource.Quest})
    :AddReagent(7910, 4) -- Star Ruby
    :AddReagent(12359, 40) -- Thorium Bar
    :AddReagent(12361, 4) -- Blue Sapphire
    :AddReagent(12662, 10) -- Demonic Rune
    :Save()

module:NewCraft(16724, "Whitesoul Helm", 300, {})
    :SetResult(12633)
    :AddRecipe(12711, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3577, 6) -- Gold Bar
    :AddReagent(6037, 6) -- Truesilver Bar
    :AddReagent(12359, 20) -- Thorium Bar
    :AddReagent(12655, 4) -- Enchanted Thorium Bar
    :AddReagent(12800, 2) -- Azerothian Diamond
    :Save()

module:NewCraft(16725, "Radiant Leggings", 300, {})
    :SetResult(12420)
    :AddRecipe(12713, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7077, 4) -- Heart of Fire
    :AddReagent(12359, 20) -- Thorium Bar
    :Save()

module:NewCraft(16726, "Runic Plate Helm", 300, {})
    :SetResult(12612)
    :AddRecipe(12714, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(6037, 2) -- Truesilver Bar
    :AddReagent(12359, 30) -- Thorium Bar
    :AddReagent(12360, 2) -- Arcanite Bar
    :AddReagent(12364, 1) -- Huge Emerald
    :Save()

module:NewCraft(16728, "Helm of the Great Chief", 300, {})
    :SetResult(12636)
    :AddRecipe(12716, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(8168, 60) -- Jet Black Feather
    :AddReagent(12359, 40) -- Thorium Bar
    :AddReagent(12364, 2) -- Huge Emerald
    :AddReagent(12655, 4) -- Enchanted Thorium Bar
    :AddReagent(12799, 6) -- Large Opal
    :Save()

module:NewCraft(16729, "Lionheart Helm", 300, {})
    :SetResult(12640)
    :AddRecipe(12717, Quality.Epic, {RecipeSource.Drop})
    :AddReagent(8146, 40) -- Wicked Claw
    :AddReagent(12359, 80) -- Thorium Bar
    :AddReagent(12360, 12) -- Arcanite Bar
    :AddReagent(12361, 10) -- Blue Sapphire
    :AddReagent(12800, 4) -- Azerothian Diamond
    :Save()

module:NewCraft(16730, "Imperial Plate Leggings", 300, {})
    :SetResult(12429)
    :AddRecipe(12715, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(12359, 40) -- Thorium Bar
    :AddReagent(12364, 2) -- Huge Emerald
    :Save()

module:NewCraft(16731, "Runic Breastplate", 300, {})
    :SetResult(12613)
    :AddRecipe(12718, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7910, 1) -- Star Ruby
    :AddReagent(12359, 40) -- Thorium Bar
    :AddReagent(12360, 2) -- Arcanite Bar
    :Save()

module:NewCraft(16732, "Runic Plate Leggings", 300, {})
    :SetResult(12614)
    :AddRecipe(12719, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7910, 1) -- Star Ruby
    :AddReagent(12359, 40) -- Thorium Bar
    :AddReagent(12360, 2) -- Arcanite Bar
    :Save()

module:NewCraft(16741, "Stronghold Gauntlets", 300, {})
    :SetResult(12639)
    :AddRecipe(12720, Quality.Epic, {RecipeSource.Drop})
    :AddReagent(7076, 10) -- Essence of Earth
    :AddReagent(12360, 15) -- Arcanite Bar
    :AddReagent(12361, 4) -- Blue Sapphire
    :AddReagent(12655, 20) -- Enchanted Thorium Bar
    :AddReagent(12799, 4) -- Large Opal
    :Save()

module:NewCraft(16742, "Enchanted Thorium Helm", 300, {})
    :SetResult(12620)
    :AddRecipe(12725, Quality.Rare, {RecipeSource.Quest})
    :AddReagent(7076, 1) -- Essence of Earth
    :AddReagent(12655, 12) -- Enchanted Thorium Bar
    :Save()

module:NewCraft(16744, "Enchanted Thorium Leggings", 300, {})
    :SetResult(12619)
    :AddRecipe(12726, Quality.Rare, {RecipeSource.Quest})
    :AddReagent(7078, 1) -- Essence of Fire
    :AddReagent(12655, 12) -- Enchanted Thorium Bar
    :Save()

module:NewCraft(16745, "Enchanted Thorium Breastplate", 300, {})
    :SetResult(12618)
    :AddRecipe(12727, Quality.Rare, {RecipeSource.Quest})
    :AddReagent(7076, 1) -- Essence of Earth
    :AddReagent(12655, 18) -- Enchanted Thorium Bar
    :Save()

module:NewCraft(16746, "Invulnerable Mail", 300, {})
    :SetResult(12641)
    :AddRecipe(12728, Quality.Epic, {RecipeSource.Drop})
    :AddReagent(12360, 30) -- Arcanite Bar
    :AddReagent(12364, 6) -- Huge Emerald
    :AddReagent(12655, 30) -- Enchanted Thorium Bar
    :AddReagent(12800, 6) -- Azerothian Diamond
    :Save()

module:NewCraft(16969, "Ornate Thorium Handaxe", 275, {})
    :SetResult(12773)
    :AddRecipe(12819, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(12359, 20) -- Thorium Bar
    :AddReagent(12644, 2) -- Dense Grinding Stone
    :AddReagent(12799, 2) -- Large Opal
    :Save()

module:NewCraft(16970, "Dawn's Edge", 275, {})
    :SetResult(12774)
    :AddRecipe(12821, Quality.Rare, {RecipeSource.Quest})
    :AddReagent(7910, 4) -- Star Ruby
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(12359, 30) -- Thorium Bar
    :AddReagent(12361, 4) -- Blue Sapphire
    :AddReagent(12644, 2) -- Dense Grinding Stone
    :AddReagent(12655, 4) -- Enchanted Thorium Bar
    :Save()

module:NewCraft(16971, "Huge Thorium Battleaxe", 280, {})
    :SetResult(12775)
    :AddRecipe(12823, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 6) -- Rugged Leather
    :AddReagent(12359, 40) -- Thorium Bar
    :AddReagent(12644, 6) -- Dense Grinding Stone
    :Save()

module:NewCraft(16973, "Enchanted Battlehammer", 280, {})
    :SetResult(12776)
    :AddRecipe(12824, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(12359, 20) -- Thorium Bar
    :AddReagent(12364, 2) -- Huge Emerald
    :AddReagent(12655, 6) -- Enchanted Thorium Bar
    :AddReagent(12804, 4) -- Powerful Mojo
    :Save()

module:NewCraft(16978, "Blazing Rapier", 280, {})
    :SetResult(12777)
    :AddRecipe(12825, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(7077, 4) -- Heart of Fire
    :AddReagent(7078, 4) -- Essence of Fire
    :AddReagent(12644, 2) -- Dense Grinding Stone
    :AddReagent(12655, 10) -- Enchanted Thorium Bar
    :AddReagent(12800, 2) -- Azerothian Diamond
    :Save()

module:NewCraft(16983, "Serenity", 285, {})
    :SetResult(12781)
    :AddRecipe(12827, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(12360, 2) -- Arcanite Bar
    :AddReagent(12361, 2) -- Blue Sapphire
    :AddReagent(12364, 1) -- Huge Emerald
    :AddReagent(12655, 6) -- Enchanted Thorium Bar
    :AddReagent(12799, 2) -- Large Opal
    :AddReagent(12804, 4) -- Powerful Mojo
    :Save()

module:NewCraft(16984, "Volcanic Hammer", 290, {})
    :SetResult(12792)
    :AddRecipe(12828, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7077, 4) -- Heart of Fire
    :AddReagent(7910, 4) -- Star Ruby
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(12359, 30) -- Thorium Bar
    :Save()

module:NewCraft(16985, "Corruption", 290, {})
    :SetResult(12782)
    :AddRecipe(12830, Quality.Rare, {RecipeSource.Chest})
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(12359, 40) -- Thorium Bar
    :AddReagent(12360, 2) -- Arcanite Bar
    :AddReagent(12361, 2) -- Blue Sapphire
    :AddReagent(12644, 2) -- Dense Grinding Stone
    :AddReagent(12662, 16) -- Demonic Rune
    :AddReagent(12808, 8) -- Essence of Undeath
    :Save()

module:NewCraft(16988, "Hammer of the Titans", 300, {})
    :SetResult(12796)
    :AddRecipe(12833, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7076, 10) -- Essence of Earth
    :AddReagent(12359, 50) -- Thorium Bar
    :AddReagent(12360, 15) -- Arcanite Bar
    :AddReagent(12809, 4) -- Guardian Stone
    :AddReagent(12810, 6) -- Enchanted Leather
    :Save()

module:NewCraft(16990, "Arcanite Champion", 300, {})
    :SetResult(12790)
    :AddRecipe(12834, Quality.Rare, {RecipeSource.Drop, RecipeSource.Vendor})
    :AddReagent(12360, 15) -- Arcanite Bar
    :AddReagent(12644, 2) -- Dense Grinding Stone
    :AddReagent(12799, 4) -- Large Opal
    :AddReagent(12800, 8) -- Azerothian Diamond
    :AddReagent(12810, 8) -- Enchanted Leather
    :AddReagent(12811, 1) -- Righteous Orb
    :Save()

module:NewCraft(16991, "Annihilator", 300, {})
    :SetResult(12798)
    :AddRecipe(12835, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(12359, 40) -- Thorium Bar
    :AddReagent(12360, 12) -- Arcanite Bar
    :AddReagent(12364, 8) -- Huge Emerald
    :AddReagent(12644, 2) -- Dense Grinding Stone
    :AddReagent(12808, 10) -- Essence of Undeath
    :AddReagent(12810, 4) -- Enchanted Leather
    :Save()

module:NewCraft(16992, "Frostguard", 300, {})
    :SetResult(12797)
    :AddRecipe(12836, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7080, 4) -- Essence of Water
    :AddReagent(12360, 18) -- Arcanite Bar
    :AddReagent(12361, 8) -- Blue Sapphire
    :AddReagent(12644, 2) -- Dense Grinding Stone
    :AddReagent(12800, 8) -- Azerothian Diamond
    :AddReagent(12810, 4) -- Enchanted Leather
    :Save()

module:NewCraft(16993, "Masterwork Stormhammer", 300, {})
    :SetResult(12794)
    :AddRecipe(12837, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7076, 6) -- Essence of Earth
    :AddReagent(12364, 8) -- Huge Emerald
    :AddReagent(12655, 20) -- Enchanted Thorium Bar
    :AddReagent(12799, 8) -- Large Opal
    :AddReagent(12810, 4) -- Enchanted Leather
    :Save()

module:NewCraft(16994, "Arcanite Reaper", 300, {})
    :SetResult(12784)
    :AddRecipe(12838, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(12360, 20) -- Arcanite Bar
    :AddReagent(12644, 2) -- Dense Grinding Stone
    :AddReagent(12810, 6) -- Enchanted Leather
    :Save()

module:NewCraft(16995, "Heartseeker", 300, {})
    :SetResult(12783)
    :AddRecipe(12839, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7910, 6) -- Star Ruby
    :AddReagent(12360, 10) -- Arcanite Bar
    :AddReagent(12644, 4) -- Dense Grinding Stone
    :AddReagent(12655, 10) -- Enchanted Thorium Bar
    :AddReagent(12799, 6) -- Large Opal
    :AddReagent(12800, 6) -- Azerothian Diamond
    :AddReagent(12810, 2) -- Enchanted Leather
    :Save()

module:NewCraft(19666, "Silver Skeleton Key", 100, {SpellSource.Trainer})
    :SetResult(15869)
    :AddReagent(2842, 1) -- Silver Bar
    :AddReagent(3470, 1) -- Rough Grinding Stone
    :Save()

module:NewCraft(19667, "Golden Skeleton Key", 150, {SpellSource.Trainer})
    :SetResult(15870)
    :AddReagent(3486, 1) -- Heavy Grinding Stone
    :AddReagent(3577, 1) -- Gold Bar
    :Save()

module:NewCraft(19668, "Truesilver Skeleton Key", 200, {SpellSource.Trainer})
    :SetResult(15871)
    :AddReagent(6037, 1) -- Truesilver Bar
    :AddReagent(7966, 1) -- Solid Grinding Stone
    :Save()

module:NewCraft(19669, "Arcanite Skeleton Key", 275, {SpellSource.Trainer})
    :SetResult(15872)
    :AddReagent(12360, 1) -- Arcanite Bar
    :AddReagent(12644, 1) -- Dense Grinding Stone
    :Save()

module:NewCraft(20201, "Arcanite Rod", 275, {SpellSource.Trainer})
    :SetResult(16206)
    :AddReagent(12360, 3) -- Arcanite Bar
    :AddReagent(12644, 1) -- Dense Grinding Stone
    :Save()

module:NewCraft(20872, "Fiery Chain Girdle", 295, {})
    :SetResult(16989)
    :AddRecipe(17049, Quality.Rare, {RecipeSource.Vendor})
    :AddReagent(11371, 16) -- Dark Iron Bar
    :AddReagent(17010, 3) -- Fiery Core
    :AddReagent(17011, 3) -- Lava Core
    :Save()

module:NewCraft(20873, "Fiery Chain Shoulders", 300, {})
    :SetResult(16988)
    :AddRecipe(17053, Quality.Rare, {RecipeSource.Vendor})
    :AddReagent(11371, 16) -- Dark Iron Bar
    :AddReagent(17010, 4) -- Fiery Core
    :AddReagent(17011, 5) -- Lava Core
    :Save()

module:NewCraft(20874, "Dark Iron Bracers", 295, {})
    :SetResult(17014)
    :AddRecipe(17051, Quality.Rare, {RecipeSource.Vendor})
    :AddReagent(11371, 16) -- Dark Iron Bar
    :AddReagent(17010, 3) -- Fiery Core
    :AddReagent(17011, 3) -- Lava Core
    :Save()

module:NewCraft(20876, "Dark Iron Leggings", 300, {})
    :SetResult(17013)
    :AddRecipe(17052, Quality.Rare, {RecipeSource.Vendor})
    :AddReagent(11371, 16) -- Dark Iron Bar
    :AddReagent(17010, 4) -- Fiery Core
    :AddReagent(17011, 6) -- Lava Core
    :Save()

module:NewCraft(20890, "Dark Iron Reaver", 300, {})
    :SetResult(17015)
    :AddRecipe(17059, Quality.Rare, {RecipeSource.Vendor})
    :AddReagent(11371, 16) -- Dark Iron Bar
    :AddReagent(11382, 2) -- Blood of the Mountain
    :AddReagent(12810, 2) -- Enchanted Leather
    :AddReagent(17010, 12) -- Fiery Core
    :Save()

module:NewCraft(20897, "Dark Iron Destroyer", 300, {})
    :SetResult(17016)
    :AddRecipe(17060, Quality.Rare, {RecipeSource.Vendor})
    :AddReagent(11371, 18) -- Dark Iron Bar
    :AddReagent(11382, 2) -- Blood of the Mountain
    :AddReagent(12810, 2) -- Enchanted Leather
    :AddReagent(17011, 12) -- Lava Core
    :Save()

module:NewCraft(21161, "Sulfuron Hammer", 300, {})
    :SetResult(17193)
    :AddRecipe(18592, Quality.Epic, {RecipeSource.Quest})
    :AddReagent(7078, 25) -- Essence of Fire
    :AddReagent(11371, 20) -- Dark Iron Bar
    :AddReagent(11382, 10) -- Blood of the Mountain
    :AddReagent(12360, 50) -- Arcanite Bar
    :AddReagent(17010, 10) -- Fiery Core
    :AddReagent(17011, 10) -- Lava Core
    :AddReagent(17203, 9) -- Sulfuron Ingot
    :Save()

module:NewCraft(21913, "Edge of Winter", 190, {})
    :SetResult(17704)
    :AddRecipe(17706, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(3829, 1) -- Frost Oil
    :AddReagent(3859, 10) -- Steel Bar
    :AddReagent(4234, 2) -- Heavy Leather
    :AddReagent(7069, 2) -- Elemental Air
    :AddReagent(7070, 2) -- Elemental Water
    :Save()

module:NewCraft(22757, "Elemental Sharpening Stone", 300, {})
    :SetResult(18262)
    :AddRecipe(18264, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7067, 2) -- Elemental Earth
    :AddReagent(12365, 3) -- Dense Stone
    :Save()

module:NewCraft(23628, "Heavy Timbermaw Belt", 290, {})
    :SetResult(19043)
    :AddRecipe(19202, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7076, 3) -- Essence of Earth
    :AddReagent(12359, 12) -- Thorium Bar
    :AddReagent(12803, 3) -- Living Essence
    :Save()

module:NewCraft(23629, "Heavy Timbermaw Boots", 300, {})
    :SetResult(19048)
    :AddRecipe(19204, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7076, 6) -- Essence of Earth
    :AddReagent(12360, 4) -- Arcanite Bar
    :AddReagent(12803, 6) -- Living Essence
    :Save()

module:NewCraft(23632, "Girdle of the Dawn", 290, {})
    :SetResult(19051)
    :AddRecipe(19203, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(6037, 6) -- Truesilver Bar
    :AddReagent(12359, 8) -- Thorium Bar
    :AddReagent(12811, 1) -- Righteous Orb
    :Save()

module:NewCraft(23633, "Gloves of the Dawn", 300, {})
    :SetResult(19057)
    :AddRecipe(19205, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(6037, 10) -- Truesilver Bar
    :AddReagent(12360, 4) -- Arcanite Bar
    :AddReagent(12811, 2) -- Righteous Orb
    :Save()

module:NewCraft(23636, "Dark Iron Helm", 300, {})
    :SetResult(19148)
    :AddRecipe(19206, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(11371, 4) -- Dark Iron Bar
    :AddReagent(17010, 2) -- Fiery Core
    :AddReagent(17011, 4) -- Lava Core
    :Save()

module:NewCraft(23637, "Dark Iron Gauntlets", 300, {})
    :SetResult(19164)
    :AddRecipe(19207, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(11371, 4) -- Dark Iron Bar
    :AddReagent(11382, 2) -- Blood of the Mountain
    :AddReagent(17010, 5) -- Fiery Core
    :AddReagent(17011, 3) -- Lava Core
    :AddReagent(17012, 4) -- Core Leather
    :Save()

module:NewCraft(23638, "Black Amnesty", 300, {})
    :SetResult(19166)
    :AddRecipe(19208, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(11371, 4) -- Dark Iron Bar
    :AddReagent(11382, 1) -- Blood of the Mountain
    :AddReagent(12360, 12) -- Arcanite Bar
    :AddReagent(17010, 12) -- Fiery Core
    :AddReagent(17011, 6) -- Lava Core
    :Save()

module:NewCraft(23639, "Blackfury", 300, {})
    :SetResult(19167)
    :AddRecipe(19209, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(11371, 6) -- Dark Iron Bar
    :AddReagent(12360, 16) -- Arcanite Bar
    :AddReagent(17010, 4) -- Fiery Core
    :AddReagent(17011, 10) -- Lava Core
    :Save()

module:NewCraft(23650, "Ebon Hand", 300, {})
    :SetResult(19170)
    :AddRecipe(19210, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(11371, 8) -- Dark Iron Bar
    :AddReagent(12360, 12) -- Arcanite Bar
    :AddReagent(12800, 4) -- Azerothian Diamond
    :AddReagent(17010, 14) -- Fiery Core
    :AddReagent(17011, 8) -- Lava Core
    :Save()

module:NewCraft(23652, "Blackguard", 300, {})
    :SetResult(19168)
    :AddRecipe(19211, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(11371, 6) -- Dark Iron Bar
    :AddReagent(12360, 10) -- Arcanite Bar
    :AddReagent(12809, 12) -- Guardian Stone
    :AddReagent(17010, 12) -- Fiery Core
    :AddReagent(17011, 12) -- Lava Core
    :Save()

module:NewCraft(23653, "Nightfall", 300, {})
    :SetResult(19169)
    :AddRecipe(19212, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(11371, 12) -- Dark Iron Bar
    :AddReagent(12360, 10) -- Arcanite Bar
    :AddReagent(12364, 4) -- Huge Emerald
    :AddReagent(17010, 10) -- Fiery Core
    :AddReagent(17011, 16) -- Lava Core
    :Save()

module:NewCraft(24136, "Bloodsoul Breastplate", 300, {})
    :SetResult(19690)
    :AddRecipe(19776, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7910, 2) -- Star Ruby
    :AddReagent(12359, 20) -- Thorium Bar
    :AddReagent(19726, 2) -- Bloodvine
    :AddReagent(19774, 10) -- Souldarite
    :Save()

module:NewCraft(24137, "Bloodsoul Shoulders", 300, {})
    :SetResult(19691)
    :AddRecipe(19777, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7910, 1) -- Star Ruby
    :AddReagent(12359, 16) -- Thorium Bar
    :AddReagent(19726, 2) -- Bloodvine
    :AddReagent(19774, 8) -- Souldarite
    :Save()

module:NewCraft(24138, "Bloodsoul Gauntlets", 300, {})
    :SetResult(19692)
    :AddRecipe(19778, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12359, 12) -- Thorium Bar
    :AddReagent(12810, 4) -- Enchanted Leather
    :AddReagent(19726, 2) -- Bloodvine
    :AddReagent(19774, 6) -- Souldarite
    :Save()

module:NewCraft(24139, "Darksoul Breastplate", 300, {})
    :SetResult(19693)
    :AddRecipe(19779, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12359, 20) -- Thorium Bar
    :AddReagent(12799, 2) -- Large Opal
    :AddReagent(19774, 14) -- Souldarite
    :Save()

module:NewCraft(24140, "Darksoul Leggings", 300, {})
    :SetResult(19694)
    :AddRecipe(19780, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12359, 18) -- Thorium Bar
    :AddReagent(12799, 2) -- Large Opal
    :AddReagent(19774, 12) -- Souldarite
    :Save()

module:NewCraft(24141, "Darksoul Shoulders", 300, {})
    :SetResult(19695)
    :AddRecipe(19781, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12359, 16) -- Thorium Bar
    :AddReagent(12799, 1) -- Large Opal
    :AddReagent(19774, 10) -- Souldarite
    :Save()

module:NewCraft(24399, "Dark Iron Boots", 300, {})
    :SetResult(20039)
    :AddRecipe(20040, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(11371, 6) -- Dark Iron Bar
    :AddReagent(17010, 3) -- Fiery Core
    :AddReagent(17011, 3) -- Lava Core
    :AddReagent(17012, 4) -- Core Leather
    :Save()

module:NewCraft(24912, "Darkrune Gauntlets", 300, {})
    :SetResult(20549)
    :AddRecipe(20553, Quality.Rare, {RecipeSource.Quest})
    :AddReagent(6037, 6) -- Truesilver Bar
    :AddReagent(12359, 12) -- Thorium Bar
    :AddReagent(12810, 2) -- Enchanted Leather
    :AddReagent(20520, 6) -- Dark Rune
    :Save()

module:NewCraft(24913, "Darkrune Helm", 300, {})
    :SetResult(20551)
    :AddRecipe(20555, Quality.Rare, {RecipeSource.Quest})
    :AddReagent(6037, 8) -- Truesilver Bar
    :AddReagent(11754, 1) -- Black Diamond
    :AddReagent(12359, 16) -- Thorium Bar
    :AddReagent(20520, 8) -- Dark Rune
    :Save()

module:NewCraft(24914, "Darkrune Breastplate", 300, {})
    :SetResult(20550)
    :AddRecipe(20554, Quality.Rare, {RecipeSource.Quest})
    :AddReagent(6037, 10) -- Truesilver Bar
    :AddReagent(12359, 20) -- Thorium Bar
    :AddReagent(20520, 10) -- Dark Rune
    :Save()

module:NewCraft(27585, "Heavy Obsidian Belt", 300, {})
    :SetResult(22197)
    :AddRecipe(22209, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7076, 2) -- Essence of Earth
    :AddReagent(12655, 4) -- Enchanted Thorium Bar
    :AddReagent(22202, 14) -- Small Obsidian Shard
    :Save()

module:NewCraft(27586, "Jagged Obsidian Shield", 300, {})
    :SetResult(22198)
    :AddRecipe(22219, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7076, 4) -- Essence of Earth
    :AddReagent(12655, 8) -- Enchanted Thorium Bar
    :AddReagent(22202, 24) -- Small Obsidian Shard
    :AddReagent(22203, 8) -- Large Obsidian Shard
    :Save()

module:NewCraft(27587, "Thick Obsidian Breastplate", 300, {})
    :SetResult(22196)
    :AddRecipe(22222, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7076, 10) -- Essence of Earth
    :AddReagent(12364, 4) -- Huge Emerald
    :AddReagent(12655, 12) -- Enchanted Thorium Bar
    :AddReagent(22202, 40) -- Small Obsidian Shard
    :AddReagent(22203, 18) -- Large Obsidian Shard
    :Save()

module:NewCraft(27588, "Light Obsidian Belt", 300, {})
    :SetResult(22195)
    :AddRecipe(22214, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12810, 4) -- Enchanted Leather
    :AddReagent(22202, 14) -- Small Obsidian Shard
    :Save()

module:NewCraft(27589, "Black Grasp of the Destroyer", 300, {})
    :SetResult(22194)
    :AddRecipe(22220, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(12810, 8) -- Enchanted Leather
    :AddReagent(13512, 1) -- Flask of Supreme Power
    :AddReagent(22202, 24) -- Small Obsidian Shard
    :AddReagent(22203, 8) -- Large Obsidian Shard
    :Save()

module:NewCraft(27590, "Obsidian Mail Tunic", 300, {})
    :SetResult(22191)
    :AddRecipe(22221, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12800, 4) -- Azerothian Diamond
    :AddReagent(12809, 10) -- Guardian Stone
    :AddReagent(12810, 12) -- Enchanted Leather
    :AddReagent(22202, 36) -- Small Obsidian Shard
    :AddReagent(22203, 15) -- Large Obsidian Shard
    :Save()

module:NewCraft(27829, "Titanic Leggings", 300, {})
    :SetResult(22385)
    :AddRecipe(22388, Quality.Epic, {RecipeSource.Drop})
    :AddReagent(7076, 10) -- Essence of Earth
    :AddReagent(12360, 12) -- Arcanite Bar
    :AddReagent(12655, 20) -- Enchanted Thorium Bar
    :AddReagent(13510, 2) -- Flask of the Titans
    :Save()

module:NewCraft(27830, "Persuader", 300, {})
    :SetResult(22384)
    :AddRecipe(22390, Quality.Epic, {RecipeSource.Drop})
    :AddReagent(11371, 10) -- Dark Iron Bar
    :AddReagent(12360, 15) -- Arcanite Bar
    :AddReagent(12753, 2) -- Skin of Shadow
    :AddReagent(12808, 20) -- Essence of Undeath
    :AddReagent(15417, 10) -- Devilsaur Leather
    :AddReagent(20520, 20) -- Dark Rune
    :Save()

module:NewCraft(27832, "Sageblade", 300, {})
    :SetResult(22383)
    :AddRecipe(22389, Quality.Epic, {RecipeSource.Drop})
    :AddReagent(12360, 12) -- Arcanite Bar
    :AddReagent(12810, 4) -- Enchanted Leather
    :AddReagent(13512, 2) -- Flask of Supreme Power
    :AddReagent(20725, 2) -- Nexus Crystal
    :Save()

module:NewCraft(28242, "Icebane Breastplate", 300, {SpellSource.Trainer})
    :SetResult(22669)
    :AddReagent(7080, 4) -- Essence of Water
    :AddReagent(12359, 16) -- Thorium Bar
    :AddReagent(12360, 2) -- Arcanite Bar
    :AddReagent(22682, 7) -- Frozen Rune
    :Save()

module:NewCraft(28243, "Icebane Gauntlets", 300, {SpellSource.Trainer})
    :SetResult(22670)
    :AddReagent(7080, 2) -- Essence of Water
    :AddReagent(12359, 12) -- Thorium Bar
    :AddReagent(12360, 2) -- Arcanite Bar
    :AddReagent(22682, 5) -- Frozen Rune
    :Save()

module:NewCraft(28244, "Icebane Bracers", 300, {SpellSource.Trainer})
    :SetResult(22671)
    :AddReagent(7080, 2) -- Essence of Water
    :AddReagent(12359, 12) -- Thorium Bar
    :AddReagent(12360, 2) -- Arcanite Bar
    :AddReagent(22682, 4) -- Frozen Rune
    :Save()

module:NewCraft(28461, "Ironvine Breastplate", 300, {})
    :SetResult(22762)
    :AddRecipe(22766, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12360, 2) -- Arcanite Bar
    :AddReagent(12655, 12) -- Enchanted Thorium Bar
    :AddReagent(12803, 2) -- Living Essence
    :AddReagent(19726, 2) -- Bloodvine
    :Save()

module:NewCraft(28462, "Ironvine Gloves", 300, {})
    :SetResult(22763)
    :AddRecipe(22767, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12655, 8) -- Enchanted Thorium Bar
    :AddReagent(12803, 2) -- Living Essence
    :AddReagent(19726, 1) -- Bloodvine
    :Save()

module:NewCraft(28463, "Ironvine Belt", 300, {})
    :SetResult(22764)
    :AddRecipe(22768, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12655, 6) -- Enchanted Thorium Bar
    :AddReagent(12803, 2) -- Living Essence
    :Save()

if lib.env.is_turtle_wow then
    module:NewCraft(2671, "Rough Bronze Bracers", 100, {})
        :SetResult(2867)
        :AddRecipe(5577, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(2841, 4) -- Bronze Bar
        :Save()

    module:NewCraft(8366, "Ironforge Chain", 70, {})
        :SetResult(6730)
        :AddRecipe(6734, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(774, 2) -- Malachite
        :AddReagent(2840, 12) -- Copper Bar
        :AddReagent(3470, 2) -- Rough Grinding Stone
        :Save()

    module:NewCraft(8368, "Ironforge Gauntlets", 140, {})
        :SetResult(6733)
        :AddRecipe(6736, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(1210, 3) -- Shadowgem
        :AddReagent(2841, 8) -- Bronze Bar
        :AddReagent(3478, 4) -- Coarse Grinding Stone
        :Save()

    module:NewCraft(9942, "Mithril Scale Gloves", 220, {})
        :SetResult(7925)
        :AddRecipe(7977, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(3860, 8) -- Mithril Bar
        :AddReagent(4234, 6) -- Heavy Leather
        :AddReagent(4338, 4) -- Mageweave Cloth
        :Save()

    module:NewCraft(16660, "Dawnbringer Shoulders", 290, {})
        :SetResult(12625)
        :AddRecipe(12698, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(7080, 2) -- Essence of Water
        :AddReagent(12359, 20) -- Thorium Bar
        :AddReagent(12360, 4) -- Arcanite Bar
        :AddReagent(12364, 2) -- Huge Emerald
        :Save()

    module:NewCraft(16960, "Thorium Greatsword", 260, {})
        :SetResult(12764)
        :AddRecipe(12816, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(8170, 4) -- Rugged Leather
        :AddReagent(12359, 16) -- Thorium Bar
        :AddReagent(12644, 2) -- Dense Grinding Stone
        :Save()

    module:NewCraft(16965, "Bleakwood Hew", 270, {})
        :SetResult(12769)
        :AddRecipe(12817, Quality.Rare, {RecipeSource.Vendor})
        :AddReagent(8153, 6) -- Wildvine
        :AddReagent(8170, 8) -- Rugged Leather
        :AddReagent(12359, 30) -- Thorium Bar
        :AddReagent(12644, 2) -- Dense Grinding Stone
        :AddReagent(12799, 6) -- Large Opal
        :AddReagent(12803, 6) -- Living Essence
        :Save()

    module:NewCraft(16967, "Inlaid Thorium Hammer", 270, {})
        :SetResult(12772)
        :AddRecipe(12818, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(3577, 4) -- Gold Bar
        :AddReagent(6037, 2) -- Truesilver Bar
        :AddReagent(8170, 4) -- Rugged Leather
        :AddReagent(12359, 30) -- Thorium Bar
        :AddReagent(12361, 2) -- Blue Sapphire
        :Save()

    module:NewCraft(16980, "Rune Edge", 285, {})
        :SetResult(12779)
        :AddRecipe(12826, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(8170, 4) -- Rugged Leather
        :AddReagent(12359, 30) -- Thorium Bar
        :AddReagent(12644, 2) -- Dense Grinding Stone
        :AddReagent(12799, 2) -- Large Opal
        :Save()

    module:NewCraft(16986, "Blood Talon", 300, {})
        :SetResult(12795)
        :AddRecipe(12831, Quality.Rare, {RecipeSource.Vendor})
        :AddReagent(7910, 10) -- Star Ruby
        :AddReagent(12360, 10) -- Arcanite Bar
        :AddReagent(12644, 2) -- Dense Grinding Stone
        :AddReagent(12655, 10) -- Enchanted Thorium Bar
        :AddReagent(12662, 8) -- Demonic Rune
        :Save()

    module:NewCraft(16987, "Darkspear", 300, {})
        :SetResult(12802)
        :AddRecipe(12832, Quality.Rare, {RecipeSource.Vendor})
        :AddReagent(12364, 2) -- Huge Emerald
        :AddReagent(12644, 2) -- Dense Grinding Stone
        :AddReagent(12655, 20) -- Enchanted Thorium Bar
        :AddReagent(12800, 2) -- Azerothian Diamond
        :AddReagent(12804, 20) -- Powerful Mojo
        :Save()

    module:NewCraft(45063, "Blast Shield", 75, {})
        :SetResult(51264)
        :AddRecipe(51265, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(818, 2) -- Tigerseye
        :AddReagent(2840, 12) -- Copper Bar
        :AddReagent(3470, 2) -- Rough Grinding Stone
        :Save()

    module:NewCraft(45465, "Dreamsteel Mantle", 300, {})
        :SetResult(61364)
        :AddRecipe(61424, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(12360, 8) -- Arcanite Bar
        :AddReagent(12644, 8) -- Dense Grinding Stone
        :AddReagent(12799, 8) -- Large Opal
        :AddReagent(12800, 2) -- Azerothian Diamond
        :AddReagent(12810, 12) -- Enchanted Leather
        :AddReagent(61216, 20) -- Dreamsteel Bar
        :Save()

    module:NewCraft(45467, "Dreamsteel Leggings", 300, {})
        :SetResult(61365)
        :AddRecipe(61425, Quality.Epic, {RecipeSource.Quest})
        :AddReagent(12364, 8) -- Huge Emerald
        :AddReagent(12655, 8) -- Enchanted Thorium Bar
        :AddReagent(12810, 8) -- Enchanted Leather
        :AddReagent(61216, 14) -- Dreamsteel Bar
        :Save()

    module:NewCraft(45469, "Dreamsteel Bracers", 300, {})
        :SetResult(61366)
        :AddRecipe(61426, Quality.Epic, {RecipeSource.Quest})
        :AddReagent(12644, 4) -- Dense Grinding Stone
        :AddReagent(12655, 4) -- Enchanted Thorium Bar
        :AddReagent(12810, 4) -- Enchanted Leather
        :AddReagent(61216, 8) -- Dreamsteel Bar
        :Save()

    module:NewCraft(45471, "Dreamsteel Boots", 300, {})
        :SetResult(61367)
        :AddRecipe(61427, Quality.Epic, {RecipeSource.Quest})
        :AddReagent(12644, 2) -- Dense Grinding Stone
        :AddReagent(12655, 8) -- Enchanted Thorium Bar
        :AddReagent(12800, 2) -- Azerothian Diamond
        :AddReagent(12810, 8) -- Enchanted Leather
        :AddReagent(61216, 8) -- Dreamsteel Bar
        :Save()

    module:NewCraft(45487, "Dawnstone Hammer", 300, {})
        :SetResult(61185)
        :AddRecipe(61189, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(12360, 16) -- Arcanite Bar
        :AddReagent(12644, 10) -- Dense Grinding Stone
        :AddReagent(12800, 6) -- Azerothian Diamond
        :AddReagent(12810, 6) -- Enchanted Leather
        :AddReagent(12811, 6) -- Righteous Orb
        :AddReagent(13926, 6) -- Golden Pearl
        :Save()

    module:NewCraft(46600, "Lordaeron Breastplate", 100, {})
        :SetResult(46600)
        :AddRecipe(83519, Quality.Uncommon, {RecipeSource.Quest})
        :AddReagent(818, 2) -- Tigerseye
        :AddReagent(2840, 16) -- Copper Bar
        :AddReagent(3470, 3) -- Rough Grinding Stone
        :Save()

    module:NewCraft(46626, "Steel Plate Boots", 220, {SpellSource.Trainer})
        :SetResult(83410)
        :AddReagent(3859, 14) -- Steel Bar
        :AddReagent(7966, 2) -- Solid Grinding Stone
        :Save()

    module:NewCraft(46627, "Steel Plate Gauntlets", 220, {SpellSource.Trainer})
        :SetResult(83411)
        :AddReagent(3859, 16) -- Steel Bar
        :AddReagent(7966, 4) -- Solid Grinding Stone
        :Save()

    module:NewCraft(46628, "Steel Plate Legguards", 225, {SpellSource.Trainer})
        :SetResult(83412)
        :AddReagent(3859, 18) -- Steel Bar
        :AddReagent(3864, 1) -- Citrine
        :AddReagent(7966, 2) -- Solid Grinding Stone
        :Save()

    module:NewCraft(46629, "Steel Plate Armor", 225, {SpellSource.Trainer})
        :SetResult(83413)
        :AddReagent(1705, 1) -- Lesser Moonstone
        :AddReagent(3859, 20) -- Steel Bar
        :AddReagent(3864, 1) -- Citrine
        :AddReagent(7966, 4) -- Solid Grinding Stone
        :Save()

    module:NewCraft(46630, "Steel Plate Pauldrons", 230, {SpellSource.Trainer})
        :SetResult(83414)
        :AddReagent(3859, 20) -- Steel Bar
        :AddReagent(3864, 1) -- Citrine
        :AddReagent(6037, 1) -- Truesilver Bar
        :AddReagent(7966, 3) -- Solid Grinding Stone
        :Save()

    module:NewCraft(46631, "Steel Plate Barbute", 230, {SpellSource.Trainer})
        :SetResult(83415)
        :AddReagent(3859, 10) -- Steel Bar
        :AddReagent(3864, 4) -- Citrine
        :AddReagent(6037, 8) -- Truesilver Bar
        :AddReagent(7909, 2) -- Aquamarine
        :AddReagent(7922, 1) -- Steel Plate Helm
        :AddReagent(7966, 3) -- Solid Grinding Stone
        :Save()

    module:NewCraft(46651, "Bloodstone Warblade", 225, {})
        :SetResult(60294)
        :AddRecipe(83507, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(3860, 14) -- Mithril Bar
        :AddReagent(3864, 2) -- Citrine
        :AddReagent(4278, 10) -- Lesser Bloodstone Ore
        :AddReagent(7966, 4) -- Solid Grinding Stone
        :Save()

    module:NewCraft(46652, "Untempered Runeblade", 300, {})
        :SetResult(60293)
        :AddRecipe(83500, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(12364, 1) -- Huge Emerald
        :AddReagent(12644, 6) -- Dense Grinding Stone
        :AddReagent(12655, 25) -- Enchanted Thorium Bar
        :AddReagent(12808, 10) -- Essence of Undeath
        :AddReagent(12810, 2) -- Enchanted Leather
        :AddReagent(20520, 8) -- Dark Rune
        :Save()

    module:NewCraft(46657, "Ornate Bloodstone Dagger", 300, {})
        :SetResult(65004)
        :AddRecipe(61799, Quality.Epic, {RecipeSource.Quest})
        :AddReagent(3577, 6) -- Gold Bar
        :AddReagent(8846, 10) -- Gromsblood
        :AddReagent(11382, 2) -- Blood of the Mountain
        :AddReagent(11752, 1) -- Black Blood of the Tormented
        :AddReagent(12360, 14) -- Arcanite Bar
        :AddReagent(12644, 4) -- Dense Grinding Stone
        :AddReagent(12938, 1) -- Blood of Heroes
        :Save()

    module:NewCraft(46660, "Imperial Plate Gauntlets", 270, {})
        :SetResult(65007)
        :AddRecipe(83518, Quality.Uncommon, {RecipeSource.Quest})
        :AddReagent(7910, 1) -- Star Ruby
        :AddReagent(8170, 4) -- Rugged Leather
        :AddReagent(12359, 24) -- Thorium Bar
        :Save()

    module:NewCraft(46661, "Dream's Herald", 300, {})
        :SetResult(65008)
        :AddRecipe(83548, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(9197, 20) -- Elixir of Dream Vision
        :AddReagent(12360, 14) -- Arcanite Bar
        :AddReagent(12364, 10) -- Huge Emerald
        :AddReagent(12644, 4) -- Dense Grinding Stone
        :AddReagent(12803, 10) -- Living Essence
        :AddReagent(20002, 10) -- Greater Dreamless Sleep Potion
        :Save()

    module:NewCraft(46663, "Copper Knuckles", 30, {SpellSource.Trainer})
        :SetResult(65010)
        :AddReagent(2840, 8) -- Copper Bar
        :AddReagent(3470, 2) -- Rough Grinding Stone
        :Save()

    module:NewCraft(46664, "Sharpened Claw", 75, {SpellSource.Trainer})
        :SetResult(65011)
        :AddReagent(2840, 8) -- Copper Bar
        :AddReagent(2880, 4) -- Weak Flux
        :AddReagent(3470, 4) -- Rough Grinding Stone
        :Save()

    module:NewCraft(46665, "Bronze Bruiser", 120, {SpellSource.Trainer})
        :SetResult(65012)
        :AddReagent(1705, 2) -- Lesser Moonstone
        :AddReagent(2841, 6) -- Bronze Bar
        :AddReagent(3391, 2) -- Elixir of Ogre's Strength
        :AddReagent(3466, 2) -- Strong Flux
        :AddReagent(3478, 4) -- Coarse Grinding Stone
        :Save()

    module:NewCraft(46666, "Frostbound Slasher", 180, {})
        :SetResult(65013)
        :AddRecipe(83549, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(3466, 4) -- Strong Flux
        :AddReagent(3486, 4) -- Heavy Grinding Stone
        :AddReagent(3829, 2) -- Frost Oil
        :AddReagent(3859, 10) -- Steel Bar
        :AddReagent(7070, 4) -- Elemental Water
        :Save()

    module:NewCraft(46667, "Pauldron of Deflection", 300, {})
        :SetResult(65014)
        :AddRecipe(83547, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(7076, 6) -- Essence of Earth
        :AddReagent(11371, 10) -- Dark Iron Bar
        :AddReagent(12360, 10) -- Arcanite Bar
        :AddReagent(12809, 8) -- Guardian Stone
        :AddReagent(22203, 4) -- Large Obsidian Shard
        :Save()

    module:NewCraft(47021, "Rune-Etched Greaves", 300, {})
        :SetResult(60288)
        :AddRecipe(83501, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(12359, 20) -- Thorium Bar
        :AddReagent(12361, 1) -- Blue Sapphire
        :AddReagent(12655, 2) -- Enchanted Thorium Bar
        :AddReagent(12810, 1) -- Enchanted Leather
        :AddReagent(20520, 2) -- Dark Rune
        :Save()

    module:NewCraft(47022, "Rune-Etched Legplates", 300, {})
        :SetResult(60289)
        :AddRecipe(83502, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(12359, 24) -- Thorium Bar
        :AddReagent(12655, 6) -- Enchanted Thorium Bar
        :AddReagent(12800, 1) -- Azerothian Diamond
        :AddReagent(12810, 2) -- Enchanted Leather
        :AddReagent(20520, 4) -- Dark Rune
        :Save()

    module:NewCraft(47023, "Rune-Etched Breastplate", 300, {})
        :SetResult(60290)
        :AddRecipe(83503, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(12359, 24) -- Thorium Bar
        :AddReagent(12644, 1) -- Dense Grinding Stone
        :AddReagent(12655, 4) -- Enchanted Thorium Bar
        :AddReagent(12810, 2) -- Enchanted Leather
        :AddReagent(20520, 4) -- Dark Rune
        :Save()

    module:NewCraft(47024, "Rune-Etched Crown", 300, {})
        :SetResult(60291)
        :AddRecipe(83504, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(7080, 1) -- Essence of Water
        :AddReagent(12359, 16) -- Thorium Bar
        :AddReagent(12655, 2) -- Enchanted Thorium Bar
        :AddReagent(20520, 2) -- Dark Rune
        :Save()

    module:NewCraft(47025, "Rune-Etched Mantle", 300, {})
        :SetResult(60292)
        :AddRecipe(83505, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(7076, 1) -- Essence of Earth
        :AddReagent(12359, 14) -- Thorium Bar
        :AddReagent(12655, 2) -- Enchanted Thorium Bar
        :AddReagent(12810, 1) -- Enchanted Leather
        :AddReagent(20520, 3) -- Dark Rune
        :Save()

    module:NewCraft(47026, "Rune-Etched Grips", 300, {})
        :SetResult(60287)
        :AddRecipe(83506, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(12359, 12) -- Thorium Bar
        :AddReagent(12655, 2) -- Enchanted Thorium Bar
        :AddReagent(12810, 2) -- Enchanted Leather
        :AddReagent(20520, 2) -- Dark Rune
        :Save()

    module:NewCraft(47029, "Hateforge Helmet", 290, {})
        :SetResult(60573)
        :AddRecipe(84014, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(7078, 1) -- Essence of Fire
        :AddReagent(11371, 1) -- Dark Iron Bar
        :AddReagent(11754, 6) -- Black Diamond
        :AddReagent(12359, 16) -- Thorium Bar
        :Save()

    module:NewCraft(47030, "Hateforge Cuirass", 290, {})
        :SetResult(60574)
        :AddRecipe(84013, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(7078, 2) -- Essence of Fire
        :AddReagent(8170, 6) -- Rugged Leather
        :AddReagent(11371, 1) -- Dark Iron Bar
        :AddReagent(11754, 12) -- Black Diamond
        :AddReagent(12359, 24) -- Thorium Bar
        :AddReagent(20520, 2) -- Dark Rune
        :Save()

    module:NewCraft(47031, "Hateforge Leggings", 290, {})
        :SetResult(60575)
        :AddRecipe(84015, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(7078, 2) -- Essence of Fire
        :AddReagent(8170, 4) -- Rugged Leather
        :AddReagent(11371, 1) -- Dark Iron Bar
        :AddReagent(11754, 8) -- Black Diamond
        :AddReagent(12359, 20) -- Thorium Bar
        :Save()

    module:NewCraft(47032, "Hateforge Belt", 275, {})
        :SetResult(60576)
        :AddRecipe(84010, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(7078, 2) -- Essence of Fire
        :AddReagent(11754, 5) -- Black Diamond
        :AddReagent(12359, 12) -- Thorium Bar
        :AddReagent(12810, 1) -- Enchanted Leather
        :Save()

    module:NewCraft(47033, "Hateforge Grips", 285, {})
        :SetResult(60577)
        :AddRecipe(84012, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(7078, 8) -- Essence of Fire
        :AddReagent(11371, 8) -- Dark Iron Bar
        :AddReagent(11754, 18) -- Black Diamond
        :AddReagent(12359, 40) -- Thorium Bar
        :AddReagent(12810, 8) -- Enchanted Leather
        :Save()

    module:NewCraft(47034, "Hateforge Boots", 275, {})
        :SetResult(60578)
        :AddRecipe(84011, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(7077, 7) -- Heart of Fire
        :AddReagent(7078, 2) -- Essence of Fire
        :AddReagent(11754, 5) -- Black Diamond
        :AddReagent(12359, 12) -- Thorium Bar
        :AddReagent(12810, 3) -- Enchanted Leather
        :Save()

    module:NewCraft(54003, "Fury of the Timbermaw", 290, {})
        :SetResult(61648)
        :AddRecipe(62001, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(7076, 3) -- Essence of Earth
        :AddReagent(7078, 3) -- Essence of Fire
        :AddReagent(12359, 16) -- Thorium Bar
        :Save()

    module:NewCraft(54005, "Pauldrons of the Timbermaw", 300, {})
        :SetResult(61649)
        :AddRecipe(62002, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(7076, 6) -- Essence of Earth
        :AddReagent(7078, 6) -- Essence of Fire
        :AddReagent(12360, 2) -- Arcanite Bar
        :AddReagent(12655, 12) -- Enchanted Thorium Bar
        :Save()

    module:NewCraft(54009, "Fiery Chain Breastplate", 300, {})
        :SetResult(65039)
        :AddRecipe(62004, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(11371, 14) -- Dark Iron Bar
        :AddReagent(17010, 6) -- Fiery Core
        :AddReagent(17011, 5) -- Lava Core
        :Save()

    module:NewCraft(57026, "Mantle of Centaur Authority", 300, {})
        :SetResult(60908)
        :AddRecipe(60964, Quality.Rare, {RecipeSource.Vendor})
        :AddReagent(3577, 2) -- Gold Bar
        :AddReagent(7076, 6) -- Essence of Earth
        :AddReagent(7082, 6) -- Essence of Air
        :AddReagent(12359, 40) -- Thorium Bar
        :AddReagent(12810, 6) -- Enchanted Leather
        :Save()

    module:NewCraft(57113, "Thorium Spurs", 300, {})
        :SetResult(61182)
        :AddRecipe(61178, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(7081, 1) -- Breath of Wind
        :AddReagent(12359, 8) -- Thorium Bar
        :AddReagent(12644, 2) -- Dense Grinding Stone
        :AddReagent(61673, 1) -- Arcane Essence
        :Save()

    module:NewCraft(57163, "Copper Belt Buckle", 25, {})
        :SetResult(61779)
        :AddRecipe(61786, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(2840, 8) -- Copper Bar
        :AddReagent(2880, 1) -- Weak Flux
        :AddReagent(3470, 2) -- Rough Grinding Stone
        :Save()

    module:NewCraft(57166, "Bronze Belt Buckle", 90, {})
        :SetResult(61780)
        :AddRecipe(61787, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(2841, 8) -- Bronze Bar
        :AddReagent(2880, 1) -- Weak Flux
        :AddReagent(3478, 2) -- Coarse Grinding Stone
        :Save()

    module:NewCraft(57169, "Iron Belt Buckle", 140, {})
        :SetResult(61781)
        :AddRecipe(61788, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(3486, 2) -- Heavy Grinding Stone
        :AddReagent(3575, 8) -- Iron Bar
        :AddReagent(7071, 1) -- Iron Belt Buckle
        :Save()

    module:NewCraft(57172, "Mithril Belt Buckle", 190, {})
        :SetResult(61782)
        :AddRecipe(61789, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(3860, 8) -- Mithril Bar
        :AddReagent(6037, 1) -- Truesilver Bar
        :AddReagent(7071, 1) -- Iron Belt Buckle
        :AddReagent(7966, 2) -- Solid Grinding Stone
        :Save()

    module:NewCraft(57175, "Thorium Belt Buckle", 240, {})
        :SetResult(61783)
        :AddRecipe(61790, Quality.Uncommon, {RecipeSource.Drop, RecipeSource.Vendor})
        :AddReagent(6037, 1) -- Truesilver Bar
        :AddReagent(7071, 1) -- Iron Belt Buckle
        :AddReagent(12359, 8) -- Thorium Bar
        :AddReagent(12644, 2) -- Dense Grinding Stone
        :Save()

    module:NewCraft(57178, "Arcanite Belt Buckle", 275, {})
        :SetResult(61784)
        :AddRecipe(61791, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(7071, 1) -- Iron Belt Buckle
        :AddReagent(11754, 1) -- Black Diamond
        :AddReagent(12360, 2) -- Arcanite Bar
        :AddReagent(12361, 1) -- Blue Sapphire
        :AddReagent(12644, 2) -- Dense Grinding Stone
        :Save()

    module:NewCraft(57181, "Dreamsteel Belt Buckle", 300, {})
        :SetResult(61785)
        :AddRecipe(61792, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(7076, 1) -- Essence of Earth
        :AddReagent(12644, 2) -- Dense Grinding Stone
        :AddReagent(12803, 1) -- Living Essence
        :AddReagent(61216, 2) -- Dreamsteel Bar
        :Save()

    module:NewCraft(57187, "Towerforge Crown", 300, {})
        :SetResult(60007)
        :AddRecipe(61808, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(3824, 8) -- Shadow Oil
        :AddReagent(11371, 10) -- Dark Iron Bar
        :AddReagent(12360, 14) -- Arcanite Bar
        :AddReagent(12655, 12) -- Enchanted Thorium Bar
        :AddReagent(61673, 6) -- Arcane Essence
        :Save()

    module:NewCraft(57189, "Towerforge Breastplate", 300, {})
        :SetResult(60008)
        :AddRecipe(61807, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(11371, 12) -- Dark Iron Bar
        :AddReagent(12360, 12) -- Arcanite Bar
        :AddReagent(12655, 12) -- Enchanted Thorium Bar
        :AddReagent(22202, 6) -- Small Obsidian Shard
        :AddReagent(61673, 6) -- Arcane Essence
        :Save()

    module:NewCraft(57191, "Towerforge Pauldrons", 300, {})
        :SetResult(60009)
        :AddRecipe(61806, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(11371, 8) -- Dark Iron Bar
        :AddReagent(12360, 10) -- Arcanite Bar
        :AddReagent(12655, 10) -- Enchanted Thorium Bar
        :AddReagent(12800, 4) -- Azerothian Diamond
        :AddReagent(61673, 4) -- Arcane Essence
        :Save()

    module:NewCraft(57193, "Towerforge Demolisher", 300, {})
        :SetResult(60010)
        :AddRecipe(61805, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(11371, 14) -- Dark Iron Bar
        :AddReagent(12360, 14) -- Arcanite Bar
        :AddReagent(12655, 12) -- Enchanted Thorium Bar
        :AddReagent(18335, 1) -- Pristine Black Diamond
        :AddReagent(22203, 2) -- Large Obsidian Shard
        :AddReagent(61673, 8) -- Arcane Essence
        :Save()

    module:NewCraft(57196, "Bloody Belt Buckle", 300, {})
        :SetResult(61810)
        :AddRecipe(61803, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(8846, 6) -- Gromsblood
        :AddReagent(12359, 10) -- Thorium Bar
        :AddReagent(19933, 6) -- Glowing Scorpid Blood
        :Save()
end
