local lib = LibCraftsGetLibrary()
local name, version = "Professions-Tailoring", 2
local module = --[[---@type LcProfessionModule]] lib:RegisterProfessionModule(name, version, "Tailoring")
if not module then return end

local Quality = lib.constants.qualities
local SpellSource = lib.constants.spell_sources
local RecipeSource = lib.constants.recipe_sources

module:NewCraft(2385, "Brown Linen Vest", 10, {SpellSource.Trainer})
    :SetResult(2568)
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2996, 1) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(2386, "Linen Boots", 65, {SpellSource.Trainer})
    :SetResult(2569)
    :AddReagent(2318, 1) -- Light Leather
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2996, 3) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(2387, "Linen Cloak", 1, {SpellSource.LearnedAutomatically})
    :SetResult(2570)
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2996, 1) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(2389, "Red Linen Robe", 40, {})
    :SetResult(2572)
    :AddRecipe(2598, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing, RecipeSource.Pickpocket})
    :AddReagent(2320, 2) -- Coarse Thread
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(2996, 3) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(2392, "Red Linen Shirt", 40, {SpellSource.Trainer})
    :SetResult(2575)
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2604, 1) -- Red Dye
    :AddReagent(2996, 2) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(2393, "White Linen Shirt", 1, {SpellSource.Trainer})
    :SetResult(2576)
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2324, 1) -- Bleach
    :AddReagent(2996, 1) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(2394, "Blue Linen Shirt", 40, {SpellSource.Trainer})
    :SetResult(2577)
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2996, 2) -- Bolt of Linen Cloth
    :AddReagent(6260, 1) -- Blue Dye
    :Save()

module:NewCraft(2395, "Barbaric Linen Vest", 70, {SpellSource.Trainer})
    :SetResult(2578)
    :AddReagent(2318, 1) -- Light Leather
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2996, 4) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(2396, "Green Linen Shirt", 70, {SpellSource.Trainer})
    :SetResult(2579)
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2605, 1) -- Green Dye
    :AddReagent(2996, 3) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(2397, "Reinforced Linen Cape", 60, {SpellSource.Trainer})
    :SetResult(2580)
    :AddReagent(2320, 3) -- Coarse Thread
    :AddReagent(2996, 2) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(2399, "Green Woolen Vest", 85, {SpellSource.Trainer})
    :SetResult(2582)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(2605, 1) -- Green Dye
    :AddReagent(2997, 2) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(2401, "Woolen Boots", 95, {SpellSource.Trainer})
    :SetResult(2583)
    :AddReagent(2318, 2) -- Light Leather
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(2997, 4) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(2402, "Woolen Cape", 75, {SpellSource.Trainer})
    :SetResult(2584)
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2997, 1) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(2403, "Gray Woolen Robe", 105, {})
    :SetResult(2585)
    :AddRecipe(2601, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 3) -- Fine Thread
    :AddReagent(2997, 4) -- Bolt of Woolen Cloth
    :AddReagent(4340, 1) -- Gray Dye
    :Save()

module:NewCraft(2406, "Gray Woolen Shirt", 100, {SpellSource.Trainer})
    :SetResult(2587)
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2997, 2) -- Bolt of Woolen Cloth
    :AddReagent(4340, 1) -- Gray Dye
    :Save()

module:NewCraft(2963, "Bolt of Linen Cloth", 1, {SpellSource.LearnedAutomatically})
    :SetResult(2996)
    :AddReagent(2589, 2) -- Linen Cloth
    :Save()

module:NewCraft(2964, "Bolt of Woolen Cloth", 75, {SpellSource.Trainer})
    :SetResult(2997)
    :AddReagent(2592, 3) -- Wool Cloth
    :Save()

module:NewCraft(3755, "Linen Bag", 45, {SpellSource.Trainer})
    :SetResult(4238)
    :AddReagent(2320, 3) -- Coarse Thread
    :AddReagent(2996, 3) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(3757, "Woolen Bag", 80, {SpellSource.Trainer})
    :SetResult(4240)
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2997, 3) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(3758, "Green Woolen Bag", 95, {})
    :SetResult(4241)
    :AddRecipe(4292, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2605, 1) -- Green Dye
    :AddReagent(2997, 4) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(3813, "Small Silk Pack", 150, {SpellSource.Trainer})
    :SetResult(4245)
    :AddReagent(2321, 3) -- Fine Thread
    :AddReagent(4234, 2) -- Heavy Leather
    :AddReagent(4305, 3) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(3839, "Bolt of Silk Cloth", 125, {SpellSource.Trainer})
    :SetResult(4305)
    :AddReagent(4306, 4) -- Silk Cloth
    :Save()

module:NewCraft(3840, "Heavy Linen Gloves", 35, {SpellSource.Trainer})
    :SetResult(4307)
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2996, 2) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(3841, "Green Linen Bracers", 60, {SpellSource.Trainer})
    :SetResult(4308)
    :AddReagent(2320, 2) -- Coarse Thread
    :AddReagent(2605, 1) -- Green Dye
    :AddReagent(2996, 3) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(3842, "Handstitched Linen Britches", 70, {SpellSource.Trainer})
    :SetResult(4309)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(2996, 4) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(3843, "Heavy Woolen Gloves", 85, {SpellSource.Trainer})
    :SetResult(4310)
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2997, 3) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(3844, "Heavy Woolen Cloak", 100, {})
    :SetResult(4311)
    :AddRecipe(4346, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(2997, 3) -- Bolt of Woolen Cloth
    :AddReagent(5498, 2) -- Small Lustrous Pearl
    :Save()

module:NewCraft(3845, "Soft-soled Linen Boots", 80, {SpellSource.Trainer})
    :SetResult(4312)
    :AddReagent(2318, 2) -- Light Leather
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2996, 5) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(3847, "Red Woolen Boots", 95, {})
    :SetResult(4313)
    :AddRecipe(4345, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2318, 2) -- Light Leather
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(2997, 4) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(3848, "Double-stitched Woolen Shoulders", 110, {SpellSource.Trainer})
    :SetResult(4314)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(2997, 3) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(3849, "Reinforced Woolen Shoulders", 120, {})
    :SetResult(4315)
    :AddRecipe(4347, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2319, 2) -- Medium Leather
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(2997, 6) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(3850, "Heavy Woolen Pants", 110, {SpellSource.Trainer})
    :SetResult(4316)
    :AddReagent(2321, 4) -- Fine Thread
    :AddReagent(2997, 5) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(3851, "Phoenix Pants", 125, {})
    :SetResult(4317)
    :AddRecipe(4349, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 3) -- Fine Thread
    :AddReagent(2997, 6) -- Bolt of Woolen Cloth
    :AddReagent(5500, 1) -- Iridescent Pearl
    :Save()

module:NewCraft(3852, "Gloves of Meditation", 130, {SpellSource.Trainer})
    :SetResult(4318)
    :AddReagent(2321, 3) -- Fine Thread
    :AddReagent(2997, 4) -- Bolt of Woolen Cloth
    :AddReagent(3383, 1) -- Elixir of Wisdom
    :Save()

module:NewCraft(3854, "Azure Silk Gloves", 145, {})
    :SetResult(4319)
    :AddRecipe(7114, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4234, 2) -- Heavy Leather
    :AddReagent(4305, 3) -- Bolt of Silk Cloth
    :AddReagent(6260, 2) -- Blue Dye
    :Save()

module:NewCraft(3855, "Spidersilk Boots", 125, {SpellSource.Trainer})
    :SetResult(4320)
    :AddReagent(2319, 4) -- Medium Leather
    :AddReagent(3182, 4) -- Spider's Silk
    :AddReagent(4305, 2) -- Bolt of Silk Cloth
    :AddReagent(5500, 2) -- Iridescent Pearl
    :Save()

module:NewCraft(3856, "Spider Silk Slippers", 140, {})
    :SetResult(4321)
    :AddRecipe(4350, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(3182, 1) -- Spider's Silk
    :AddReagent(4305, 3) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(3857, "Enchanter's Cowl", 165, {})
    :SetResult(4322)
    :AddRecipe(14630, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4305, 3) -- Bolt of Silk Cloth
    :AddReagent(4337, 2) -- Thick Spider's Silk
    :Save()

module:NewCraft(3858, "Shadow Hood", 170, {})
    :SetResult(4323)
    :AddRecipe(4351, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3824, 1) -- Shadow Oil
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4305, 4) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(3859, "Azure Silk Vest", 150, {SpellSource.Trainer})
    :SetResult(4324)
    :AddReagent(4305, 5) -- Bolt of Silk Cloth
    :AddReagent(6260, 4) -- Blue Dye
    :Save()

module:NewCraft(3860, "Boots of the Enchanter", 175, {})
    :SetResult(4325)
    :AddRecipe(4352, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4305, 4) -- Bolt of Silk Cloth
    :AddReagent(4337, 2) -- Thick Spider's Silk
    :Save()

module:NewCraft(3861, "Long Silken Cloak", 185, {SpellSource.Trainer})
    :SetResult(4326)
    :AddReagent(3827, 1) -- Mana Potion
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4305, 4) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(3862, "Icy Cloak", 200, {})
    :SetResult(4327)
    :AddRecipe(4355, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3829, 1) -- Frost Oil
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(4337, 2) -- Thick Spider's Silk
    :AddReagent(4339, 3) -- Bolt of Mageweave
    :Save()

module:NewCraft(3863, "Spider Belt", 180, {})
    :SetResult(4328)
    :AddRecipe(4353, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(4305, 4) -- Bolt of Silk Cloth
    :AddReagent(4337, 2) -- Thick Spider's Silk
    :AddReagent(7071, 1) -- Iron Buckle
    :Save()

module:NewCraft(3864, "Star Belt", 200, {})
    :SetResult(4329)
    :AddRecipe(4356, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(3864, 1) -- Citrine
    :AddReagent(4234, 4) -- Heavy Leather
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4339, 4) -- Bolt of Mageweave
    :AddReagent(7071, 1) -- Iron Buckle
    :Save()

module:NewCraft(3865, "Bolt of Mageweave", 175, {SpellSource.Trainer})
    :SetResult(4339)
    :AddReagent(4338, 5) -- Mageweave Cloth
    :Save()

module:NewCraft(3866, "Stylish Red Shirt", 110, {SpellSource.Trainer})
    :SetResult(4330)
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(2997, 3) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(3868, "Phoenix Gloves", 125, {})
    :SetResult(4331)
    :AddRecipe(4348, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 4) -- Fine Thread
    :AddReagent(2324, 2) -- Bleach
    :AddReagent(2997, 4) -- Bolt of Woolen Cloth
    :AddReagent(5500, 1) -- Iridescent Pearl
    :Save()

module:NewCraft(3869, "Bright Yellow Shirt", 135, {})
    :SetResult(4332)
    :AddRecipe(14627, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4305, 1) -- Bolt of Silk Cloth
    :AddReagent(4341, 1) -- Yellow Dye
    :Save()

module:NewCraft(3870, "Dark Silk Shirt", 155, {})
    :SetResult(4333)
    :AddRecipe(6401, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4305, 2) -- Bolt of Silk Cloth
    :AddReagent(4340, 2) -- Gray Dye
    :Save()

module:NewCraft(3871, "Formal White Shirt", 170, {SpellSource.Trainer})
    :SetResult(4334)
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2324, 2) -- Bleach
    :AddReagent(4305, 3) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(3872, "Rich Purple Silk Shirt", 185, {})
    :SetResult(4335)
    :AddRecipe(4354, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4305, 4) -- Bolt of Silk Cloth
    :AddReagent(4342, 1) -- Purple Dye
    :Save()

module:NewCraft(3873, "Black Swashbuckler's Shirt", 200, {})
    :SetResult(4336)
    :AddRecipe(10728, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2325, 1) -- Black Dye
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4305, 5) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(3914, "Brown Linen Pants", 30, {SpellSource.Trainer})
    :SetResult(4343)
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2996, 2) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(3915, "Brown Linen Shirt", 1, {SpellSource.LearnedAutomatically})
    :SetResult(4344)
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2996, 1) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(6521, "Pearl-clasped Cloak", 90, {SpellSource.Trainer})
    :SetResult(5542)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(2997, 3) -- Bolt of Woolen Cloth
    :AddReagent(5498, 1) -- Small Lustrous Pearl
    :Save()

module:NewCraft(6686, "Red Linen Bag", 70, {})
    :SetResult(5762)
    :AddRecipe(5771, Quality.Common, {RecipeSource.Drop, RecipeSource.Vendor})
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2604, 1) -- Red Dye
    :AddReagent(2996, 4) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(6688, "Red Woolen Bag", 115, {})
    :SetResult(5763)
    :AddRecipe(5772, Quality.Common, {RecipeSource.Drop, RecipeSource.Vendor})
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2604, 1) -- Red Dye
    :AddReagent(2997, 4) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(6690, "Lesser Wizard's Robe", 135, {SpellSource.Trainer})
    :SetResult(5766)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(3182, 2) -- Spider's Silk
    :AddReagent(4305, 2) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(6692, "Robes of Arcana", 150, {})
    :SetResult(5770)
    :AddRecipe(5773, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(3182, 2) -- Spider's Silk
    :AddReagent(4305, 4) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(6693, "Green Silk Pack", 175, {})
    :SetResult(5764)
    :AddRecipe(5774, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 3) -- Fine Thread
    :AddReagent(2605, 1) -- Green Dye
    :AddReagent(4234, 3) -- Heavy Leather
    :AddReagent(4305, 4) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(6695, "Black Silk Pack", 185, {})
    :SetResult(5765)
    :AddRecipe(5775, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(2321, 4) -- Fine Thread
    :AddReagent(2325, 1) -- Black Dye
    :AddReagent(4305, 5) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(7623, "Brown Linen Robe", 30, {SpellSource.Trainer})
    :SetResult(6238)
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2996, 3) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(7624, "White Linen Robe", 30, {SpellSource.Trainer})
    :SetResult(6241)
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2324, 1) -- Bleach
    :AddReagent(2996, 3) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(7629, "Red Linen Vest", 55, {})
    :SetResult(6239)
    :AddRecipe(6271, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2604, 1) -- Red Dye
    :AddReagent(2996, 3) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(7630, "Blue Linen Vest", 55, {})
    :SetResult(6240)
    :AddRecipe(6270, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2996, 3) -- Bolt of Linen Cloth
    :AddReagent(6260, 1) -- Blue Dye
    :Save()

module:NewCraft(7633, "Blue Linen Robe", 70, {})
    :SetResult(6242)
    :AddRecipe(6272, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2320, 2) -- Coarse Thread
    :AddReagent(2996, 4) -- Bolt of Linen Cloth
    :AddReagent(6260, 2) -- Blue Dye
    :Save()

module:NewCraft(7639, "Blue Overalls", 100, {})
    :SetResult(6263)
    :AddRecipe(6274, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(2997, 4) -- Bolt of Woolen Cloth
    :AddReagent(6260, 2) -- Blue Dye
    :Save()

module:NewCraft(7643, "Greater Adept's Robe", 115, {})
    :SetResult(6264)
    :AddRecipe(6275, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2321, 3) -- Fine Thread
    :AddReagent(2604, 3) -- Red Dye
    :AddReagent(2997, 5) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(7892, "Stylish Blue Shirt", 120, {})
    :SetResult(6384)
    :AddRecipe(6390, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2997, 4) -- Bolt of Woolen Cloth
    :AddReagent(4340, 1) -- Gray Dye
    :AddReagent(6260, 2) -- Blue Dye
    :Save()

module:NewCraft(7893, "Stylish Green Shirt", 120, {})
    :SetResult(6385)
    :AddRecipe(6391, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2605, 2) -- Green Dye
    :AddReagent(2997, 4) -- Bolt of Woolen Cloth
    :AddReagent(4340, 1) -- Gray Dye
    :Save()

module:NewCraft(8465, "Simple Dress", 40, {SpellSource.Trainer})
    :SetResult(6786)
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2324, 1) -- Bleach
    :AddReagent(2996, 2) -- Bolt of Linen Cloth
    :AddReagent(6260, 1) -- Blue Dye
    :Save()

module:NewCraft(8467, "White Woolen Dress", 110, {SpellSource.Trainer})
    :SetResult(6787)
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2324, 4) -- Bleach
    :AddReagent(2997, 3) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(8483, "White Swashbuckler's Shirt", 160, {SpellSource.Trainer})
    :SetResult(6795)
    :AddReagent(2324, 2) -- Bleach
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4305, 3) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(8489, "Red Swashbuckler's Shirt", 175, {SpellSource.Trainer})
    :SetResult(6796)
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4305, 3) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(8758, "Azure Silk Pants", 140, {SpellSource.Trainer})
    :SetResult(7046)
    :AddReagent(2321, 3) -- Fine Thread
    :AddReagent(4305, 4) -- Bolt of Silk Cloth
    :AddReagent(6260, 2) -- Blue Dye
    :Save()

module:NewCraft(8760, "Azure Silk Hood", 145, {SpellSource.Trainer})
    :SetResult(7048)
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4305, 2) -- Bolt of Silk Cloth
    :AddReagent(6260, 2) -- Blue Dye
    :Save()

module:NewCraft(8762, "Silk Headband", 160, {SpellSource.Trainer})
    :SetResult(7050)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4305, 3) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(8764, "Earthen Vest", 170, {SpellSource.Trainer})
    :SetResult(7051)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4305, 3) -- Bolt of Silk Cloth
    :AddReagent(7067, 1) -- Elemental Earth
    :Save()

module:NewCraft(8766, "Azure Silk Belt", 175, {SpellSource.Trainer})
    :SetResult(7052)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4305, 4) -- Bolt of Silk Cloth
    :AddReagent(6260, 2) -- Blue Dye
    :AddReagent(7070, 1) -- Elemental Water
    :AddReagent(7071, 1) -- Iron Buckle
    :Save()

module:NewCraft(8770, "Robe of Power", 190, {SpellSource.Trainer})
    :SetResult(7054)
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(4339, 2) -- Bolt of Mageweave
    :AddReagent(7067, 2) -- Elemental Earth
    :AddReagent(7068, 2) -- Elemental Fire
    :AddReagent(7069, 2) -- Elemental Air
    :AddReagent(7070, 2) -- Elemental Water
    :Save()

module:NewCraft(8772, "Crimson Silk Belt", 175, {SpellSource.Trainer})
    :SetResult(7055)
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4305, 4) -- Bolt of Silk Cloth
    :AddReagent(7071, 1) -- Iron Buckle
    :Save()

module:NewCraft(8774, "Green Silken Shoulders", 180, {SpellSource.Trainer})
    :SetResult(7057)
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(4305, 5) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(8776, "Linen Belt", 10, {SpellSource.Trainer})
    :SetResult(7026)
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2996, 1) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(8780, "Hands of Darkness", 145, {})
    :SetResult(7047)
    :AddRecipe(7092, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4234, 2) -- Heavy Leather
    :AddReagent(4305, 3) -- Bolt of Silk Cloth
    :AddReagent(6048, 2) -- Shadow Protection Potion
    :Save()

module:NewCraft(8782, "Truefaith Gloves", 150, {})
    :SetResult(7049)
    :AddRecipe(7091, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(929, 4) -- Healing Potion
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4234, 2) -- Heavy Leather
    :AddReagent(4305, 3) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(8784, "Green Silk Armor", 165, {})
    :SetResult(7065)
    :AddRecipe(7090, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2605, 2) -- Green Dye
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4305, 5) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(8786, "Azure Silk Cloak", 175, {})
    :SetResult(7053)
    :AddRecipe(7089, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4305, 3) -- Bolt of Silk Cloth
    :AddReagent(6260, 2) -- Blue Dye
    :Save()

module:NewCraft(8789, "Crimson Silk Cloak", 180, {})
    :SetResult(7056)
    :AddRecipe(7087, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4305, 5) -- Bolt of Silk Cloth
    :AddReagent(6371, 2) -- Fire Oil
    :Save()

module:NewCraft(8791, "Crimson Silk Vest", 185, {SpellSource.Trainer})
    :SetResult(7058)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(4305, 4) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(8793, "Crimson Silk Shoulders", 190, {})
    :SetResult(7059)
    :AddRecipe(7084, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(4305, 5) -- Bolt of Silk Cloth
    :AddReagent(6371, 2) -- Fire Oil
    :Save()

module:NewCraft(8795, "Azure Shoulders", 190, {})
    :SetResult(7060)
    :AddRecipe(7085, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(4305, 6) -- Bolt of Silk Cloth
    :AddReagent(6260, 2) -- Blue Dye
    :AddReagent(7072, 2) -- Naga Scale
    :Save()

module:NewCraft(8797, "Earthen Silk Belt", 195, {})
    :SetResult(7061)
    :AddRecipe(7086, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(4234, 4) -- Heavy Leather
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(4305, 5) -- Bolt of Silk Cloth
    :AddReagent(7067, 4) -- Elemental Earth
    :AddReagent(7071, 1) -- Iron Buckle
    :Save()

module:NewCraft(8799, "Crimson Silk Pantaloons", 195, {SpellSource.Trainer})
    :SetResult(7062)
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(4305, 4) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(8802, "Crimson Silk Robe", 205, {})
    :SetResult(7063)
    :AddRecipe(7088, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2604, 4) -- Red Dye
    :AddReagent(3827, 2) -- Mana Potion
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4305, 8) -- Bolt of Silk Cloth
    :AddReagent(7068, 4) -- Elemental Fire
    :Save()

module:NewCraft(8804, "Crimson Silk Gloves", 210, {SpellSource.Trainer})
    :SetResult(7064)
    :AddReagent(2604, 4) -- Red Dye
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(4304, 2) -- Thick Leather
    :AddReagent(4305, 6) -- Bolt of Silk Cloth
    :AddReagent(6371, 2) -- Fire Oil
    :AddReagent(7068, 2) -- Elemental Fire
    :Save()

module:NewCraft(12044, "Simple Linen Pants", 1, {SpellSource.LearnedAutomatically})
    :SetResult(10045)
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2996, 1) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(12045, "Simple Linen Boots", 20, {SpellSource.Trainer})
    :SetResult(10046)
    :AddReagent(2318, 1) -- Light Leather
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(2996, 2) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(12046, "Simple Kilt", 75, {SpellSource.Trainer})
    :SetResult(10047)
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2996, 4) -- Bolt of Linen Cloth
    :Save()

module:NewCraft(12047, "Colorful Kilt", 120, {})
    :SetResult(10048)
    :AddRecipe(10316, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2604, 3) -- Red Dye
    :AddReagent(2997, 5) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(12048, "Black Mageweave Vest", 205, {SpellSource.Trainer})
    :SetResult(9998)
    :AddReagent(4291, 3) -- Silken Thread
    :AddReagent(4339, 2) -- Bolt of Mageweave
    :Save()

module:NewCraft(12049, "Black Mageweave Leggings", 205, {SpellSource.Trainer})
    :SetResult(9999)
    :AddReagent(4291, 3) -- Silken Thread
    :AddReagent(4339, 2) -- Bolt of Mageweave
    :Save()

module:NewCraft(12050, "Black Mageweave Robe", 210, {SpellSource.Trainer})
    :SetResult(10001)
    :AddReagent(4339, 3) -- Bolt of Mageweave
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(12052, "Shadoweave Pants", 210, {SpellSource.Trainer})
    :SetResult(10002)
    :AddReagent(4339, 3) -- Bolt of Mageweave
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :AddReagent(10285, 2) -- Shadow Silk
    :Save()

module:NewCraft(12053, "Black Mageweave Gloves", 215, {SpellSource.Trainer})
    :SetResult(10003)
    :AddReagent(4339, 2) -- Bolt of Mageweave
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(12055, "Shadoweave Robe", 215, {SpellSource.Trainer})
    :SetResult(10004)
    :AddReagent(4339, 3) -- Bolt of Mageweave
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :AddReagent(10285, 2) -- Shadow Silk
    :Save()

module:NewCraft(12056, "Red Mageweave Vest", 215, {})
    :SetResult(10007)
    :AddRecipe(10300, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(4339, 3) -- Bolt of Mageweave
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(12059, "White Bandit Mask", 215, {})
    :SetResult(10008)
    :AddRecipe(10301, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2324, 1) -- Bleach
    :AddReagent(4339, 1) -- Bolt of Mageweave
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(12060, "Red Mageweave Pants", 215, {})
    :SetResult(10009)
    :AddRecipe(10302, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(4339, 3) -- Bolt of Mageweave
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(12061, "Orange Mageweave Shirt", 215, {SpellSource.Trainer})
    :SetResult(10056)
    :AddReagent(4339, 1) -- Bolt of Mageweave
    :AddReagent(6261, 1) -- Orange Dye
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(12064, "Orange Martial Shirt", 220, {})
    :SetResult(10052)
    :AddRecipe(10311, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4339, 2) -- Bolt of Mageweave
    :AddReagent(6261, 2) -- Orange Dye
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(12065, "Mageweave Bag", 225, {SpellSource.Trainer})
    :SetResult(10050)
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(4339, 4) -- Bolt of Mageweave
    :Save()

module:NewCraft(12066, "Red Mageweave Gloves", 225, {})
    :SetResult(10018)
    :AddRecipe(10312, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(4339, 3) -- Bolt of Mageweave
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(12067, "Dreamweave Gloves", 225, {SpellSource.Trainer})
    :SetResult(10019)
    :AddReagent(4339, 4) -- Bolt of Mageweave
    :AddReagent(8153, 4) -- Wildvine
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :AddReagent(10286, 2) -- Heart of the Wild
    :Save()

module:NewCraft(12069, "Cindercloth Robe", 225, {SpellSource.Trainer})
    :SetResult(10042)
    :AddReagent(4339, 5) -- Bolt of Mageweave
    :AddReagent(7077, 2) -- Heart of Fire
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(12070, "Dreamweave Vest", 225, {SpellSource.Trainer})
    :SetResult(10021)
    :AddReagent(4339, 6) -- Bolt of Mageweave
    :AddReagent(8153, 6) -- Wildvine
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :AddReagent(10286, 2) -- Heart of the Wild
    :Save()

module:NewCraft(12071, "Shadoweave Gloves", 225, {SpellSource.Trainer})
    :SetResult(10023)
    :AddReagent(4339, 5) -- Bolt of Mageweave
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :AddReagent(10285, 5) -- Shadow Silk
    :Save()

module:NewCraft(12072, "Black Mageweave Headband", 230, {SpellSource.Trainer})
    :SetResult(10024)
    :AddReagent(4339, 3) -- Bolt of Mageweave
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(12073, "Black Mageweave Boots", 230, {SpellSource.Trainer})
    :SetResult(10026)
    :AddReagent(4304, 2) -- Thick Leather
    :AddReagent(4339, 3) -- Bolt of Mageweave
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(12074, "Black Mageweave Shoulders", 230, {SpellSource.Trainer})
    :SetResult(10027)
    :AddReagent(4339, 3) -- Bolt of Mageweave
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(12075, "Lavender Mageweave Shirt", 230, {})
    :SetResult(10054)
    :AddRecipe(10314, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4339, 2) -- Bolt of Mageweave
    :AddReagent(4342, 2) -- Purple Dye
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(12076, "Shadoweave Shoulders", 235, {SpellSource.Trainer})
    :SetResult(10028)
    :AddReagent(4339, 5) -- Bolt of Mageweave
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :AddReagent(10285, 4) -- Shadow Silk
    :Save()

module:NewCraft(12077, "Simple Black Dress", 235, {SpellSource.Trainer})
    :SetResult(10053)
    :AddReagent(2324, 1) -- Bleach
    :AddReagent(2325, 1) -- Black Dye
    :AddReagent(4339, 3) -- Bolt of Mageweave
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(12078, "Red Mageweave Shoulders", 235, {})
    :SetResult(10029)
    :AddRecipe(10315, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(4339, 4) -- Bolt of Mageweave
    :AddReagent(8343, 3) -- Heavy Silken Thread
    :Save()

module:NewCraft(12079, "Red Mageweave Bag", 235, {SpellSource.Trainer})
    :SetResult(10051)
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(4339, 4) -- Bolt of Mageweave
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(12080, "Pink Mageweave Shirt", 235, {})
    :SetResult(10055)
    :AddRecipe(10317, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4339, 3) -- Bolt of Mageweave
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :AddReagent(10290, 1) -- Pink Dye
    :Save()

module:NewCraft(12081, "Admiral's Hat", 240, {})
    :SetResult(10030)
    :AddRecipe(10318, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4339, 3) -- Bolt of Mageweave
    :AddReagent(4589, 6) -- Long Elegant Feather
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(12082, "Shadoweave Boots", 240, {SpellSource.Trainer})
    :SetResult(10031)
    :AddReagent(4304, 2) -- Thick Leather
    :AddReagent(4339, 6) -- Bolt of Mageweave
    :AddReagent(8343, 3) -- Heavy Silken Thread
    :AddReagent(10285, 6) -- Shadow Silk
    :Save()

module:NewCraft(12084, "Red Mageweave Headband", 240, {})
    :SetResult(10033)
    :AddRecipe(10320, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(4339, 4) -- Bolt of Mageweave
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(12085, "Tuxedo Shirt", 240, {})
    :SetResult(10034)
    :AddRecipe(10321, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4339, 4) -- Bolt of Mageweave
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(12086, "Shadoweave Mask", 245, {})
    :SetResult(10025)
    :AddRecipe(10463, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(4339, 2) -- Bolt of Mageweave
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :AddReagent(10285, 8) -- Shadow Silk
    :Save()

module:NewCraft(12088, "Cindercloth Boots", 245, {SpellSource.Trainer})
    :SetResult(10044)
    :AddReagent(4304, 2) -- Thick Leather
    :AddReagent(4339, 5) -- Bolt of Mageweave
    :AddReagent(7077, 1) -- Heart of Fire
    :AddReagent(8343, 3) -- Heavy Silken Thread
    :Save()

module:NewCraft(12089, "Tuxedo Pants", 245, {})
    :SetResult(10035)
    :AddRecipe(10323, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4339, 4) -- Bolt of Mageweave
    :AddReagent(8343, 3) -- Heavy Silken Thread
    :Save()

module:NewCraft(12091, "White Wedding Dress", 250, {})
    :SetResult(10040)
    :AddRecipe(10325, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2324, 1) -- Bleach
    :AddReagent(4339, 5) -- Bolt of Mageweave
    :AddReagent(8343, 3) -- Heavy Silken Thread
    :Save()

module:NewCraft(12092, "Dreamweave Circlet", 250, {SpellSource.Trainer})
    :SetResult(10041)
    :AddReagent(1529, 1) -- Jade
    :AddReagent(4339, 8) -- Bolt of Mageweave
    :AddReagent(6037, 1) -- Truesilver Bar
    :AddReagent(8153, 4) -- Wildvine
    :AddReagent(8343, 3) -- Heavy Silken Thread
    :AddReagent(10286, 2) -- Heart of the Wild
    :Save()

module:NewCraft(12093, "Tuxedo Jacket", 250, {})
    :SetResult(10036)
    :AddRecipe(10326, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4339, 5) -- Bolt of Mageweave
    :AddReagent(8343, 3) -- Heavy Silken Thread
    :Save()

module:NewCraft(18401, "Bolt of Runecloth", 250, {SpellSource.Trainer})
    :SetResult(14048)
    :AddReagent(14047, 5) -- Runecloth
    :Save()

module:NewCraft(18402, "Runecloth Belt", 255, {SpellSource.Trainer})
    :SetResult(13856)
    :AddReagent(14048, 3) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18403, "Frostweave Tunic", 255, {})
    :SetResult(13869)
    :AddRecipe(14466, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7079, 2) -- Globe of Water
    :AddReagent(14048, 5) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18404, "Frostweave Robe", 255, {})
    :SetResult(13868)
    :AddRecipe(14467, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7079, 2) -- Globe of Water
    :AddReagent(14048, 5) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18405, "Runecloth Bag", 260, {})
    :SetResult(14046)
    :AddRecipe(14468, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 2) -- Rugged Leather
    :AddReagent(14048, 5) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18406, "Runecloth Robe", 260, {})
    :SetResult(13858)
    :AddRecipe(14469, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(14048, 5) -- Bolt of Runecloth
    :AddReagent(14227, 1) -- Ironweb Spider Silk
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18407, "Runecloth Tunic", 260, {})
    :SetResult(13857)
    :AddRecipe(14470, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(14048, 5) -- Bolt of Runecloth
    :AddReagent(14227, 1) -- Ironweb Spider Silk
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18408, "Cindercloth Vest", 260, {})
    :SetResult(14042)
    :AddRecipe(14471, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7077, 3) -- Heart of Fire
    :AddReagent(14048, 5) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18409, "Runecloth Cloak", 265, {})
    :SetResult(13860)
    :AddRecipe(14472, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14227, 1) -- Ironweb Spider Silk
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18410, "Ghostweave Belt", 265, {})
    :SetResult(14143)
    :AddRecipe(14473, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(9210, 2) -- Ghost Dye
    :AddReagent(14048, 3) -- Bolt of Runecloth
    :AddReagent(14227, 1) -- Ironweb Spider Silk
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18411, "Frostweave Gloves", 265, {})
    :SetResult(13870)
    :AddRecipe(14474, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7080, 1) -- Essence of Water
    :AddReagent(14048, 3) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18412, "Cindercloth Gloves", 270, {})
    :SetResult(14043)
    :AddRecipe(14476, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7077, 3) -- Heart of Fire
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18413, "Ghostweave Gloves", 270, {})
    :SetResult(14142)
    :AddRecipe(14477, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(9210, 2) -- Ghost Dye
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14227, 1) -- Ironweb Spider Silk
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18414, "Brightcloth Robe", 270, {})
    :SetResult(14100)
    :AddRecipe(14478, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3577, 2) -- Gold Bar
    :AddReagent(14048, 5) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18415, "Brightcloth Gloves", 270, {})
    :SetResult(14101)
    :AddRecipe(14479, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3577, 2) -- Gold Bar
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18416, "Ghostweave Vest", 275, {})
    :SetResult(14141)
    :AddRecipe(14480, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(9210, 4) -- Ghost Dye
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14227, 1) -- Ironweb Spider Silk
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18417, "Runecloth Gloves", 275, {})
    :SetResult(13863)
    :AddRecipe(14481, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18418, "Cindercloth Cloak", 275, {})
    :SetResult(14044)
    :AddRecipe(14482, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7078, 1) -- Essence of Fire
    :AddReagent(14048, 5) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18419, "Felcloth Pants", 275, {})
    :SetResult(14107)
    :AddRecipe(14483, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(14048, 5) -- Bolt of Runecloth
    :AddReagent(14256, 4) -- Felcloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18420, "Brightcloth Cloak", 275, {})
    :SetResult(14103)
    :AddRecipe(14484, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3577, 2) -- Gold Bar
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18421, "Wizardweave Leggings", 275, {})
    :SetResult(14132)
    :AddRecipe(14485, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(11176, 1) -- Dream Dust
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18422, "Cloak of Fire", 275, {})
    :SetResult(14134)
    :AddRecipe(14486, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7068, 4) -- Elemental Fire
    :AddReagent(7077, 4) -- Heart of Fire
    :AddReagent(7078, 4) -- Essence of Fire
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18423, "Runecloth Boots", 280, {})
    :SetResult(13864)
    :AddRecipe(14488, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18424, "Frostweave Pants", 280, {})
    :SetResult(13871)
    :AddRecipe(14489, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7080, 1) -- Essence of Water
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18434, "Cindercloth Pants", 280, {})
    :SetResult(14045)
    :AddRecipe(14490, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7078, 1) -- Essence of Fire
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18436, "Robe of Winter Night", 285, {})
    :SetResult(14136)
    :AddRecipe(14493, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7080, 4) -- Essence of Water
    :AddReagent(12808, 4) -- Essence of Undeath
    :AddReagent(14048, 10) -- Bolt of Runecloth
    :AddReagent(14256, 12) -- Felcloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18437, "Felcloth Boots", 285, {})
    :SetResult(14108)
    :AddRecipe(14492, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14256, 4) -- Felcloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18438, "Runecloth Pants", 285, {})
    :SetResult(13865)
    :AddRecipe(14491, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18439, "Brightcloth Pants", 290, {})
    :SetResult(14104)
    :AddRecipe(14494, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3577, 4) -- Gold Bar
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14227, 1) -- Ironweb Spider Silk
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18440, "Mooncloth Leggings", 290, {})
    :SetResult(14137)
    :AddRecipe(14497, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(14342, 4) -- Mooncloth
    :Save()

module:NewCraft(18441, "Ghostweave Pants", 290, {})
    :SetResult(14144)
    :AddRecipe(14495, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(9210, 4) -- Ghost Dye
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18442, "Felcloth Hood", 290, {})
    :SetResult(14111)
    :AddRecipe(14496, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(14048, 5) -- Bolt of Runecloth
    :AddReagent(14256, 4) -- Felcloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18444, "Runecloth Headband", 295, {})
    :SetResult(13866)
    :AddRecipe(14498, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18445, "Mooncloth Bag", 300, {})
    :SetResult(14155)
    :AddRecipe(14499, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(14342, 2) -- Mooncloth
    :Save()

module:NewCraft(18446, "Wizardweave Robe", 300, {})
    :SetResult(14128)
    :AddRecipe(14500, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(11176, 2) -- Dream Dust
    :AddReagent(14048, 8) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18447, "Mooncloth Vest", 300, {})
    :SetResult(14138)
    :AddRecipe(14501, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(14342, 4) -- Mooncloth
    :Save()

module:NewCraft(18448, "Mooncloth Shoulders", 300, {})
    :SetResult(14139)
    :AddRecipe(14507, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(14048, 5) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(14342, 5) -- Mooncloth
    :Save()

module:NewCraft(18449, "Runecloth Shoulders", 300, {})
    :SetResult(13867)
    :AddRecipe(14504, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(14048, 7) -- Bolt of Runecloth
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18450, "Wizardweave Turban", 300, {})
    :SetResult(14130)
    :AddRecipe(14505, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7910, 1) -- Star Ruby
    :AddReagent(11176, 4) -- Dream Dust
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(18451, "Felcloth Robe", 300, {})
    :SetResult(14106)
    :AddRecipe(14506, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(12662, 4) -- Demonic Rune
    :AddReagent(14048, 8) -- Bolt of Runecloth
    :AddReagent(14256, 8) -- Felcloth
    :AddReagent(14341, 2) -- Rune Thread
    :Save()

module:NewCraft(18452, "Mooncloth Circlet", 300, {})
    :SetResult(14140)
    :AddRecipe(14509, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(12800, 1) -- Azerothian Diamond
    :AddReagent(12810, 2) -- Enchanted Leather
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(14342, 6) -- Mooncloth
    :Save()

module:NewCraft(18453, "Felcloth Shoulders", 300, {})
    :SetResult(14112)
    :AddRecipe(14508, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(12662, 4) -- Demonic Rune
    :AddReagent(14048, 7) -- Bolt of Runecloth
    :AddReagent(14256, 6) -- Felcloth
    :AddReagent(14341, 2) -- Rune Thread
    :Save()

module:NewCraft(18454, "Gloves of Spell Mastery", 300, {})
    :SetResult(14146)
    :AddRecipe(14511, Quality.Epic, {RecipeSource.Drop})
    :AddReagent(9210, 10) -- Ghost Dye
    :AddReagent(12364, 6) -- Huge Emerald
    :AddReagent(12810, 8) -- Enchanted Leather
    :AddReagent(13926, 6) -- Golden Pearl
    :AddReagent(14048, 10) -- Bolt of Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(14342, 10) -- Mooncloth
    :Save()

module:NewCraft(18455, "Bottomless Bag", 300, {})
    :SetResult(14156)
    :AddRecipe(14510, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(14048, 8) -- Bolt of Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(14342, 4) -- Mooncloth
    :AddReagent(14344, 2) -- Large Brilliant Shard
    :Save()

module:NewCraft(18456, "Truefaith Vestments", 300, {})
    :SetResult(14154)
    :AddRecipe(14512, Quality.Epic, {RecipeSource.Drop})
    :AddReagent(9210, 10) -- Ghost Dye
    :AddReagent(12811, 4) -- Righteous Orb
    :AddReagent(13926, 4) -- Golden Pearl
    :AddReagent(14048, 12) -- Bolt of Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(14342, 10) -- Mooncloth
    :Save()

module:NewCraft(18457, "Robe of the Archmage", 300, {})
    :SetResult(14152)
    :AddRecipe(14513, Quality.Epic, {RecipeSource.Drop})
    :AddReagent(7076, 10) -- Essence of Earth
    :AddReagent(7078, 10) -- Essence of Fire
    :AddReagent(7080, 10) -- Essence of Water
    :AddReagent(7082, 10) -- Essence of Air
    :AddReagent(14048, 12) -- Bolt of Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :Save()

module:NewCraft(18458, "Robe of the Void", 300, {})
    :SetResult(14153)
    :AddRecipe(14514, Quality.Epic, {RecipeSource.Drop})
    :AddReagent(7078, 12) -- Essence of Fire
    :AddReagent(12662, 20) -- Demonic Rune
    :AddReagent(12808, 12) -- Essence of Undeath
    :AddReagent(14048, 12) -- Bolt of Runecloth
    :AddReagent(14256, 40) -- Felcloth
    :AddReagent(14341, 2) -- Rune Thread
    :Save()

module:NewCraft(18560, "Mooncloth", 250, {})
    :SetResult(14342)
    :AddRecipe(14526, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(14256, 2) -- Felcloth
    :Save()

module:NewCraft(19435, "Mooncloth Boots", 290, {SpellSource.Quest})
    :SetResult(15802)
    :AddReagent(7971, 2) -- Black Pearl
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(14342, 4) -- Mooncloth
    :Save()

module:NewCraft(20848, "Flarecore Mantle", 300, {})
    :SetResult(16980)
    :AddRecipe(17017, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12810, 6) -- Enchanted Leather
    :AddReagent(14048, 12) -- Bolt of Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(17010, 4) -- Fiery Core
    :AddReagent(17011, 4) -- Lava Core
    :Save()

module:NewCraft(20849, "Flarecore Gloves", 300, {})
    :SetResult(16979)
    :AddRecipe(17018, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7078, 4) -- Essence of Fire
    :AddReagent(12810, 2) -- Enchanted Leather
    :AddReagent(14048, 8) -- Bolt of Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(17010, 6) -- Fiery Core
    :Save()

module:NewCraft(21945, "Green Holiday Shirt", 190, {})
    :SetResult(17723)
    :AddRecipe(17724, Quality.Common, {RecipeSource.Quest})
    :AddReagent(2605, 4) -- Green Dye
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4305, 5) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(22759, "Flarecore Wraps", 300, {})
    :SetResult(18263)
    :AddRecipe(18265, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7078, 2) -- Essence of Fire
    :AddReagent(12810, 6) -- Enchanted Leather
    :AddReagent(14341, 4) -- Rune Thread
    :AddReagent(14342, 6) -- Mooncloth
    :AddReagent(17010, 8) -- Fiery Core
    :Save()

module:NewCraft(22813, "Gordok Ogre Suit", 285, {SpellSource.Quest})
    :SetResult(18258)
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(14048, 2) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(18240, 1) -- Ogre Tannin
    :Save()

module:NewCraft(22866, "Belt of the Archmage", 300, {})
    :SetResult(18405)
    :AddRecipe(18414, Quality.Epic, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7078, 12) -- Essence of Fire
    :AddReagent(7080, 12) -- Essence of Water
    :AddReagent(9210, 10) -- Ghost Dye
    :AddReagent(14048, 16) -- Bolt of Runecloth
    :AddReagent(14341, 6) -- Rune Thread
    :AddReagent(14342, 10) -- Mooncloth
    :AddReagent(14344, 6) -- Large Brilliant Shard
    :Save()

module:NewCraft(22867, "Felcloth Gloves", 300, {})
    :SetResult(18407)
    :AddRecipe(18415, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(12662, 6) -- Demonic Rune
    :AddReagent(12808, 8) -- Essence of Undeath
    :AddReagent(14048, 12) -- Bolt of Runecloth
    :AddReagent(14256, 20) -- Felcloth
    :AddReagent(14341, 2) -- Rune Thread
    :Save()

module:NewCraft(22868, "Inferno Gloves", 300, {})
    :SetResult(18408)
    :AddRecipe(18416, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7078, 10) -- Essence of Fire
    :AddReagent(7910, 2) -- Star Ruby
    :AddReagent(14048, 12) -- Bolt of Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :Save()

module:NewCraft(22869, "Mooncloth Gloves", 300, {})
    :SetResult(18409)
    :AddRecipe(18417, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(13926, 2) -- Golden Pearl
    :AddReagent(14048, 12) -- Bolt of Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(14342, 6) -- Mooncloth
    :Save()

module:NewCraft(22870, "Cloak of Warding", 300, {})
    :SetResult(18413)
    :AddRecipe(18418, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(12360, 1) -- Arcanite Bar
    :AddReagent(12809, 4) -- Guardian Stone
    :AddReagent(14048, 12) -- Bolt of Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :Save()

module:NewCraft(22902, "Mooncloth Robe", 300, {})
    :SetResult(18486)
    :AddRecipe(18487, Quality.Rare, {RecipeSource.Vendor})
    :AddReagent(13926, 2) -- Golden Pearl
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(14342, 4) -- Mooncloth
    :Save()

module:NewCraft(23662, "Wisdom of the Timbermaw", 290, {})
    :SetResult(19047)
    :AddRecipe(19215, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7076, 3) -- Essence of Earth
    :AddReagent(12803, 3) -- Living Essence
    :AddReagent(14048, 8) -- Bolt of Runecloth
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :Save()

module:NewCraft(23663, "Mantle of the Timbermaw", 300, {})
    :SetResult(19050)
    :AddRecipe(19218, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7076, 5) -- Essence of Earth
    :AddReagent(12803, 5) -- Living Essence
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(14342, 5) -- Mooncloth
    :Save()

module:NewCraft(23664, "Argent Boots", 290, {})
    :SetResult(19056)
    :AddRecipe(19216, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12809, 2) -- Guardian Stone
    :AddReagent(12810, 4) -- Enchanted Leather
    :AddReagent(13926, 2) -- Golden Pearl
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :Save()

module:NewCraft(23665, "Argent Shoulders", 300, {})
    :SetResult(19059)
    :AddRecipe(19217, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12809, 2) -- Guardian Stone
    :AddReagent(12811, 1) -- Righteous Orb
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(14342, 5) -- Mooncloth
    :Save()

module:NewCraft(23666, "Flarecore Robe", 300, {})
    :SetResult(19156)
    :AddRecipe(19219, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7078, 6) -- Essence of Fire
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(14342, 10) -- Mooncloth
    :AddReagent(17010, 2) -- Fiery Core
    :AddReagent(17011, 3) -- Lava Core
    :Save()

module:NewCraft(23667, "Flarecore Leggings", 300, {})
    :SetResult(19165)
    :AddRecipe(19220, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7078, 10) -- Essence of Fire
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(14342, 8) -- Mooncloth
    :AddReagent(17010, 5) -- Fiery Core
    :AddReagent(17011, 3) -- Lava Core
    :Save()

module:NewCraft(24091, "Bloodvine Vest", 300, {})
    :SetResult(19682)
    :AddRecipe(19764, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12804, 4) -- Powerful Mojo
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(14342, 3) -- Mooncloth
    :AddReagent(19726, 5) -- Bloodvine
    :Save()

module:NewCraft(24092, "Bloodvine Leggings", 300, {})
    :SetResult(19683)
    :AddRecipe(19765, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12804, 4) -- Powerful Mojo
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(14342, 4) -- Mooncloth
    :AddReagent(19726, 4) -- Bloodvine
    :Save()

module:NewCraft(24093, "Bloodvine Boots", 300, {})
    :SetResult(19684)
    :AddRecipe(19766, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12810, 4) -- Enchanted Leather
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(14342, 3) -- Mooncloth
    :AddReagent(19726, 3) -- Bloodvine
    :Save()

module:NewCraft(24901, "Runed Stygian Leggings", 300, {})
    :SetResult(20538)
    :AddRecipe(20546, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(14256, 6) -- Felcloth
    :AddReagent(20520, 8) -- Dark Rune
    :Save()

module:NewCraft(24902, "Runed Stygian Belt", 300, {})
    :SetResult(20539)
    :AddRecipe(20548, Quality.Rare, {RecipeSource.Quest})
    :AddReagent(12810, 2) -- Enchanted Leather
    :AddReagent(14048, 2) -- Bolt of Runecloth
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(14256, 2) -- Felcloth
    :AddReagent(20520, 6) -- Dark Rune
    :Save()

module:NewCraft(24903, "Runed Stygian Boots", 300, {})
    :SetResult(20537)
    :AddRecipe(20547, Quality.Rare, {RecipeSource.Quest})
    :AddReagent(12810, 2) -- Enchanted Leather
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(14256, 4) -- Felcloth
    :AddReagent(20520, 6) -- Dark Rune
    :Save()

module:NewCraft(26085, "Soul Pouch", 260, {})
    :SetResult(21340)
    :AddRecipe(21358, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7972, 2) -- Ichor of Undeath
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(26086, "Felcloth Bag", 285, {SpellSource.WorldObject})
    :SetResult(21341)
    :AddReagent(12810, 6) -- Enchanted Leather
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(14256, 12) -- Felcloth
    :AddReagent(20520, 2) -- Dark Rune
    :Save()

module:NewCraft(26087, "Core Felcloth Bag", 300, {})
    :SetResult(21342)
    :AddRecipe(21371, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7078, 4) -- Essence of Fire
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(14256, 20) -- Felcloth
    :AddReagent(17012, 16) -- Core Leather
    :AddReagent(19726, 8) -- Bloodvine
    :Save()

module:NewCraft(26403, "Festive Red Dress", 250, {})
    :SetResult(21154)
    :AddRecipe(21722, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(4625, 2) -- Firebloom
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(26407, "Festive Red Pant Suit", 250, {})
    :SetResult(21542)
    :AddRecipe(21723, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(2604, 2) -- Red Dye
    :AddReagent(4625, 2) -- Firebloom
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(27658, "Enchanted Mageweave Pouch", 225, {})
    :SetResult(22246)
    :AddRecipe(22307, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4339, 4) -- Bolt of Mageweave
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :AddReagent(11137, 4) -- Vision Dust
    :Save()

module:NewCraft(27659, "Enchanted Runecloth Bag", 275, {})
    :SetResult(22248)
    :AddRecipe(22308, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(14048, 5) -- Bolt of Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(16203, 2) -- Greater Eternal Essence
    :Save()

module:NewCraft(27660, "Big Bag of Enchantment", 300, {})
    :SetResult(22249)
    :AddRecipe(22309, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(12810, 4) -- Enchanted Leather
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(14344, 4) -- Large Brilliant Shard
    :Save()

module:NewCraft(27724, "Cenarion Herb Bag", 275, {})
    :SetResult(22251)
    :AddRecipe(22310, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8831, 10) -- Purple Lotus
    :AddReagent(11040, 8) -- Morrowgrain
    :AddReagent(14048, 5) -- Bolt of Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :Save()

module:NewCraft(27725, "Satchel of Cenarius", 300, {})
    :SetResult(22252)
    :AddRecipe(22312, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(13468, 1) -- Black Lotus
    :AddReagent(14048, 6) -- Bolt of Runecloth
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(14342, 2) -- Mooncloth
    :Save()

module:NewCraft(28205, "Glacial Gloves", 300, {SpellSource.Trainer})
    :SetResult(22654)
    :AddReagent(7080, 4) -- Essence of Water
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(22682, 5) -- Frozen Rune
    :Save()

module:NewCraft(28207, "Glacial Vest", 300, {SpellSource.Trainer})
    :SetResult(22652)
    :AddReagent(7080, 6) -- Essence of Water
    :AddReagent(14048, 8) -- Bolt of Runecloth
    :AddReagent(14227, 8) -- Ironweb Spider Silk
    :AddReagent(22682, 7) -- Frozen Rune
    :Save()

module:NewCraft(28208, "Glacial Cloak", 300, {SpellSource.Trainer})
    :SetResult(22658)
    :AddReagent(7080, 2) -- Essence of Water
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(22682, 5) -- Frozen Rune
    :Save()

module:NewCraft(28209, "Glacial Wrists", 300, {SpellSource.Trainer})
    :SetResult(22655)
    :AddReagent(7080, 2) -- Essence of Water
    :AddReagent(14048, 2) -- Bolt of Runecloth
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(22682, 4) -- Frozen Rune
    :Save()

module:NewCraft(28210, "Gaea's Embrace", 300, {})
    :SetResult(22660)
    :AddRecipe(22683, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12803, 4) -- Living Essence
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(14342, 2) -- Mooncloth
    :AddReagent(19726, 1) -- Bloodvine
    :Save()

module:NewCraft(28480, "Sylvan Vest", 300, {})
    :SetResult(22756)
    :AddRecipe(22774, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12803, 2) -- Living Essence
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(19726, 2) -- Bloodvine
    :Save()

module:NewCraft(28481, "Sylvan Crown", 300, {})
    :SetResult(22757)
    :AddRecipe(22773, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12803, 2) -- Living Essence
    :AddReagent(14048, 4) -- Bolt of Runecloth
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(14342, 2) -- Mooncloth
    :Save()

module:NewCraft(28482, "Sylvan Shoulders", 300, {})
    :SetResult(22758)
    :AddRecipe(22772, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12803, 4) -- Living Essence
    :AddReagent(14048, 2) -- Bolt of Runecloth
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :Save()

if lib.env.is_turtle_wow then
    module:NewCraft(7636, "Green Woolen Robe", 90, {})
        :SetResult(6243)
        :AddRecipe(6273, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(2321, 2) -- Fine Thread
        :AddReagent(2605, 1) -- Green Dye
        :AddReagent(2997, 3) -- Bolt of Woolen Cloth
        :Save()

    module:NewCraft(8778, "Boots of Darkness", 140, {})
        :SetResult(7027)
        :AddRecipe(7093, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(2319, 2) -- Medium Leather
        :AddReagent(2321, 2) -- Fine Thread
        :AddReagent(4305, 3) -- Bolt of Silk Cloth
        :AddReagent(6048, 1) -- Shadow Protection Potion
        :Save()

    module:NewCraft(12062, "Stormcloth Pants", 220, {})
        :SetResult(10010)
        :AddRecipe(10303, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(4339, 4) -- Bolt of Mageweave
        :AddReagent(7079, 2) -- Globe of Water
        :AddReagent(8343, 2) -- Heavy Silken Thread
        :Save()

    module:NewCraft(12063, "Stormcloth Gloves", 220, {})
        :SetResult(10011)
        :AddRecipe(10304, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(4339, 3) -- Bolt of Mageweave
        :AddReagent(7079, 2) -- Globe of Water
        :AddReagent(8343, 2) -- Heavy Silken Thread
        :Save()

    module:NewCraft(12068, "Stormcloth Vest", 225, {})
        :SetResult(10020)
        :AddRecipe(10313, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(4339, 5) -- Bolt of Mageweave
        :AddReagent(7079, 3) -- Globe of Water
        :AddReagent(8343, 2) -- Heavy Silken Thread
        :Save()

    module:NewCraft(12083, "Stormcloth Headband", 240, {})
        :SetResult(10032)
        :AddRecipe(10319, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(4339, 4) -- Bolt of Mageweave
        :AddReagent(7079, 4) -- Globe of Water
        :AddReagent(8343, 2) -- Heavy Silken Thread
        :Save()

    module:NewCraft(12087, "Stormcloth Shoulders", 245, {})
        :SetResult(10038)
        :AddRecipe(10322, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(4339, 5) -- Bolt of Mageweave
        :AddReagent(7079, 6) -- Globe of Water
        :AddReagent(8343, 3) -- Heavy Silken Thread
        :Save()

    module:NewCraft(12090, "Stormcloth Boots", 250, {})
        :SetResult(10039)
        :AddRecipe(10324, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(4304, 2) -- Thick Leather
        :AddReagent(4339, 6) -- Bolt of Mageweave
        :AddReagent(7079, 6) -- Globe of Water
        :AddReagent(8343, 3) -- Heavy Silken Thread
        :Save()

    module:NewCraft(45066, "Gloves of Manathirst", 75, {})
        :SetResult(51256)
        :AddRecipe(51277, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(2321, 2) -- Fine Thread
        :AddReagent(2996, 3) -- Bolt of Linen Cloth
        :AddReagent(6260, 3) -- Blue Dye
        :Save()

    module:NewCraft(45453, "Dreamthread", 300, {})
        :SetResult(61230)
        :AddRecipe(61227, Quality.Uncommon, {RecipeSource.Quest})
        :AddReagent(14341, 1) -- Rune Thread
        :AddReagent(20381, 1) -- Dreamscale
        :AddReagent(61198, 1) -- Small Dream Shard
        :Save()

    module:NewCraft(45457, "Dreamthread Mantle", 300, {})
        :SetResult(61360)
        :AddRecipe(61432, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(7082, 6) -- Essence of Air
        :AddReagent(12803, 6) -- Living Essence
        :AddReagent(12810, 4) -- Enchanted Leather
        :AddReagent(14048, 40) -- Bolt of Runecloth
        :AddReagent(14342, 6) -- Mooncloth
        :AddReagent(61230, 20) -- Dreamthread
        :Save()

    module:NewCraft(45459, "Dreamthread Kilt", 300, {})
        :SetResult(61361)
        :AddRecipe(61433, Quality.Epic, {RecipeSource.Quest})
        :AddReagent(7080, 4) -- Essence of Water
        :AddReagent(7082, 4) -- Essence of Air
        :AddReagent(12803, 4) -- Living Essence
        :AddReagent(14048, 24) -- Bolt of Runecloth
        :AddReagent(14342, 4) -- Mooncloth
        :AddReagent(61230, 14) -- Dreamthread
        :Save()

    module:NewCraft(45461, "Dreamthread Bracers", 300, {})
        :SetResult(61362)
        :AddRecipe(61434, Quality.Epic, {RecipeSource.Quest})
        :AddReagent(7080, 2) -- Essence of Water
        :AddReagent(7082, 2) -- Essence of Air
        :AddReagent(14342, 2) -- Mooncloth
        :AddReagent(61230, 8) -- Dreamthread
        :Save()

    module:NewCraft(45463, "Dreamthread Gloves", 300, {})
        :SetResult(61363)
        :AddRecipe(61435, Quality.Epic, {RecipeSource.Quest})
        :AddReagent(7082, 4) -- Essence of Air
        :AddReagent(12803, 4) -- Living Essence
        :AddReagent(14048, 12) -- Bolt of Runecloth
        :AddReagent(14342, 4) -- Mooncloth
        :AddReagent(61230, 8) -- Dreamthread
        :Save()

    module:NewCraft(45485, "Gloves of Unwinding Mystery", 300, {})
        :SetResult(61186)
        :AddRecipe(61190, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(8846, 24) -- Gromsblood
        :AddReagent(9210, 10) -- Ghost Dye
        :AddReagent(12810, 1) -- Enchanted Leather
        :AddReagent(14048, 14) -- Bolt of Runecloth
        :AddReagent(14344, 1) -- Large Brilliant Shard
        :Save()

    module:NewCraft(46633, "Diviner's Pantaloons", 230, {SpellSource.Trainer})
        :SetResult(83280)
        :AddReagent(2324, 1) -- Bleach
        :AddReagent(2842, 1) -- Silver Bar
        :AddReagent(4339, 4) -- Bolt of Mageweave
        :AddReagent(8343, 2) -- Heavy Silken Thread
        :Save()

    module:NewCraft(46634, "Diviner's Robes", 235, {SpellSource.Trainer})
        :SetResult(83281)
        :AddReagent(2324, 1) -- Bleach
        :AddReagent(2842, 2) -- Silver Bar
        :AddReagent(4339, 10) -- Bolt of Mageweave
        :AddReagent(5500, 1) -- Iridescent Pearl
        :AddReagent(8343, 4) -- Heavy Silken Thread
        :AddReagent(17028, 1) -- Holy Candle
        :Save()

    module:NewCraft(46635, "Diviner's Cowl", 230, {SpellSource.Trainer})
        :SetResult(83282)
        :AddReagent(2324, 1) -- Bleach
        :AddReagent(2842, 1) -- Silver Bar
        :AddReagent(4339, 4) -- Bolt of Mageweave
        :AddReagent(8343, 1) -- Heavy Silken Thread
        :Save()

    module:NewCraft(46636, "Diviner's Boots", 225, {SpellSource.Trainer})
        :SetResult(83283)
        :AddReagent(2324, 1) -- Bleach
        :AddReagent(4304, 2) -- Thick Leather
        :AddReagent(4339, 3) -- Bolt of Mageweave
        :AddReagent(8343, 3) -- Heavy Silken Thread
        :Save()

    module:NewCraft(46637, "Diviner's Mitts", 225, {SpellSource.Trainer})
        :SetResult(83284)
        :AddReagent(2324, 1) -- Bleach
        :AddReagent(4339, 3) -- Bolt of Mageweave
        :AddReagent(6048, 1) -- Shadow Protection Potion
        :AddReagent(8343, 2) -- Heavy Silken Thread
        :Save()

    module:NewCraft(46638, "Diviner's Epaulets", 230, {SpellSource.Trainer})
        :SetResult(83285)
        :AddReagent(2324, 1) -- Bleach
        :AddReagent(2842, 1) -- Silver Bar
        :AddReagent(4339, 6) -- Bolt of Mageweave
        :AddReagent(8343, 2) -- Heavy Silken Thread
        :AddReagent(17028, 1) -- Holy Candle
        :Save()

    module:NewCraft(46639, "Augerer's Hat", 205, {SpellSource.Trainer})
        :SetResult(83286)
        :AddReagent(3827, 2) -- Mana Potion
        :AddReagent(4339, 3) -- Bolt of Mageweave
        :AddReagent(6260, 1) -- Blue Dye
        :AddReagent(7070, 1) -- Elemental Water
        :AddReagent(8343, 1) -- Heavy Silken Thread
        :Save()

    module:NewCraft(46640, "Augerer's Robe", 210, {SpellSource.Trainer})
        :SetResult(83287)
        :AddReagent(1705, 2) -- Lesser Moonstone
        :AddReagent(4339, 6) -- Bolt of Mageweave
        :AddReagent(6260, 2) -- Blue Dye
        :AddReagent(7070, 2) -- Elemental Water
        :AddReagent(8343, 1) -- Heavy Silken Thread
        :AddReagent(20746, 1) -- Lesser Wizard Oil
        :Save()

    module:NewCraft(46641, "Augerer's Trousers", 205, {SpellSource.Trainer})
        :SetResult(83291)
        :AddReagent(3827, 2) -- Mana Potion
        :AddReagent(4339, 4) -- Bolt of Mageweave
        :AddReagent(6260, 1) -- Blue Dye
        :AddReagent(7070, 1) -- Elemental Water
        :AddReagent(8343, 1) -- Heavy Silken Thread
        :Save()

    module:NewCraft(46642, "Augerer's Mantle", 205, {SpellSource.Trainer})
        :SetResult(83290)
        :AddReagent(4339, 3) -- Bolt of Mageweave
        :AddReagent(6149, 2) -- Greater Mana Potion
        :AddReagent(6260, 1) -- Blue Dye
        :AddReagent(7070, 1) -- Elemental Water
        :AddReagent(8343, 1) -- Heavy Silken Thread
        :Save()

    module:NewCraft(46643, "Augerer's Gloves", 200, {SpellSource.Trainer})
        :SetResult(83289)
        :AddReagent(4339, 3) -- Bolt of Mageweave
        :AddReagent(6260, 1) -- Blue Dye
        :AddReagent(6373, 1) -- Elixir of Firepower
        :AddReagent(8343, 2) -- Heavy Silken Thread
        :AddReagent(9036, 1) -- Magic Resistance Potion
        :Save()

    module:NewCraft(46644, "Augerer's Boots", 200, {SpellSource.Trainer})
        :SetResult(83288)
        :AddReagent(4234, 3) -- Heavy Leather
        :AddReagent(4339, 2) -- Bolt of Mageweave
        :AddReagent(6260, 1) -- Blue Dye
        :AddReagent(7070, 1) -- Elemental Water
        :AddReagent(8343, 1) -- Heavy Silken Thread
        :Save()

    module:NewCraft(46645, "Pillager's Hood", 265, {SpellSource.Trainer})
        :SetResult(83292)
        :AddReagent(7068, 2) -- Elemental Fire
        :AddReagent(14048, 5) -- Bolt of Runecloth
        :AddReagent(14341, 1) -- Rune Thread
        :Save()

    module:NewCraft(46646, "Pillager's Amice", 265, {SpellSource.Trainer})
        :SetResult(83293)
        :AddReagent(4625, 1) -- Firebloom
        :AddReagent(7068, 1) -- Elemental Fire
        :AddReagent(14048, 4) -- Bolt of Runecloth
        :AddReagent(14341, 3) -- Rune Thread
        :Save()

    module:NewCraft(46647, "Pillager's Robe", 270, {SpellSource.Trainer})
        :SetResult(83294)
        :AddReagent(4625, 4) -- Firebloom
        :AddReagent(6037, 2) -- Truesilver Bar
        :AddReagent(7068, 3) -- Elemental Fire
        :AddReagent(7078, 2) -- Essence of Fire
        :AddReagent(14048, 8) -- Bolt of Runecloth
        :AddReagent(14341, 4) -- Rune Thread
        :Save()

    module:NewCraft(46648, "Pillager's Grips", 260, {SpellSource.Trainer})
        :SetResult(83295)
        :AddReagent(7077, 4) -- Heart of Fire
        :AddReagent(14048, 2) -- Bolt of Runecloth
        :AddReagent(14341, 1) -- Rune Thread
        :Save()

    module:NewCraft(46649, "Pillager's Shoes", 260, {SpellSource.Trainer})
        :SetResult(83296)
        :AddReagent(6371, 1) -- Fire Oil
        :AddReagent(8170, 2) -- Rugged Leather
        :AddReagent(14048, 2) -- Bolt of Runecloth
        :AddReagent(14341, 1) -- Rune Thread
        :Save()

    module:NewCraft(46650, "Pillager's Pantaloons", 265, {SpellSource.Trainer})
        :SetResult(83297)
        :AddReagent(4625, 1) -- Firebloom
        :AddReagent(7077, 4) -- Heart of Fire
        :AddReagent(14048, 4) -- Bolt of Runecloth
        :AddReagent(14341, 2) -- Rune Thread
        :Save()

    module:NewCraft(46656, "Robe of Sacrifice", 300, {})
        :SetResult(65003)
        :AddRecipe(83545, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(7971, 4) -- Black Pearl
        :AddReagent(10285, 8) -- Shadow Silk
        :AddReagent(12662, 20) -- Demonic Rune
        :AddReagent(14048, 12) -- Bolt of Runecloth
        :AddReagent(14256, 20) -- Felcloth
        :AddReagent(14341, 1) -- Rune Thread
        :AddReagent(20520, 10) -- Dark Rune
        :Save()

    module:NewCraft(54011, "Flarecore Boots", 300, {})
        :SetResult(65035)
        :AddRecipe(62005, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(7078, 10) -- Essence of Fire
        :AddReagent(14227, 4) -- Ironweb Spider Silk
        :AddReagent(14342, 6) -- Mooncloth
        :AddReagent(17010, 5) -- Fiery Core
        :AddReagent(17011, 4) -- Lava Core
        :Save()

    module:NewCraft(57020, "Dustguider Sash", 300, {})
        :SetResult(60909)
        :AddRecipe(60967, Quality.Rare, {RecipeSource.Vendor})
        :AddReagent(7076, 6) -- Essence of Earth
        :AddReagent(12810, 6) -- Enchanted Leather
        :AddReagent(14048, 10) -- Bolt of Runecloth
        :AddReagent(14344, 1) -- Large Brilliant Shard
        :Save()

    module:NewCraft(57024, "Windbinder Gloves", 300, {})
        :SetResult(60907)
        :AddRecipe(60965, Quality.Rare, {RecipeSource.Vendor})
        :AddReagent(7069, 16) -- Elemental Air
        :AddReagent(7082, 6) -- Essence of Air
        :AddReagent(14048, 10) -- Bolt of Runecloth
        :AddReagent(14344, 2) -- Large Brilliant Shard
        :Save()
end
