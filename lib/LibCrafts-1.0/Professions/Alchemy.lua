local lib = LibCraftsGetLibrary()
local name, version = "Professions-Alchemy", 5
local module = --[[---@type LcProfessionModule]] lib:RegisterProfessionModule(name, version, "Alchemy")
if not module then return end

local Quality = lib.constants.qualities
local SpellSource = lib.constants.spell_sources
local RecipeSource = lib.constants.recipe_sources

module:NewCraft(2329, "Elixir of Lion's Strength", 1, {SpellSource.LearnedAutomatically})
    :SetResult(2454)
    :AddReagent(765, 1) -- Silverleaf
    :AddReagent(2449, 1) -- Earthroot
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(2330, "Minor Healing Potion", 1, {SpellSource.LearnedAutomatically})
    :SetResult(118)
    :AddReagent(765, 1) -- Silverleaf
    :AddReagent(2447, 1) -- Peacebloom
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(2331, "Minor Mana Potion", 25, {SpellSource.Trainer})
    :SetResult(2455)
    :AddReagent(765, 1) -- Silverleaf
    :AddReagent(785, 1) -- Mageroyal
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(2332, "Minor Rejuvenation Potion", 40, {SpellSource.Trainer})
    :SetResult(2456)
    :AddReagent(785, 2) -- Mageroyal
    :AddReagent(2447, 1) -- Peacebloom
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(2333, "Elixir of Lesser Agility", 140, {})
    :SetResult(3390)
    :AddRecipe(3396, Quality.Common, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(2452, 1) -- Swiftthistle
    :AddReagent(3355, 1) -- Wild Steelbloom
    :AddReagent(3372, 1) -- Leaded Vial
    :Save()

module:NewCraft(2334, "Elixir of Minor Fortitude", 50, {SpellSource.Trainer})
    :SetResult(2458)
    :AddReagent(2447, 1) -- Peacebloom
    :AddReagent(2449, 2) -- Earthroot
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(2335, "Swiftness Potion", 60, {})
    :SetResult(2459)
    :AddRecipe(2555, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2450, 1) -- Briarthorn
    :AddReagent(2452, 1) -- Swiftthistle
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(2337, "Lesser Healing Potion", 55, {SpellSource.Trainer})
    :SetResult(858)
    :AddReagent(118, 1) -- Minor Healing Potion
    :AddReagent(2450, 1) -- Briarthorn
    :Save()

module:NewCraft(3170, "Weak Troll's Blood Potion", 15, {SpellSource.Trainer})
    :SetResult(3382)
    :AddReagent(2447, 1) -- Peacebloom
    :AddReagent(2449, 2) -- Earthroot
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(3171, "Elixir of Wisdom", 90, {SpellSource.Trainer})
    :SetResult(3383)
    :AddReagent(785, 1) -- Mageroyal
    :AddReagent(2450, 2) -- Briarthorn
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(3172, "Minor Magic Resistance Potion", 110, {})
    :SetResult(3384)
    :AddRecipe(3393, Quality.Common, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(785, 3) -- Mageroyal
    :AddReagent(3355, 1) -- Wild Steelbloom
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(3173, "Lesser Mana Potion", 120, {SpellSource.Trainer})
    :SetResult(3385)
    :AddReagent(785, 1) -- Mageroyal
    :AddReagent(3371, 1) -- Empty Vial
    :AddReagent(3820, 1) -- Stranglekelp
    :Save()

module:NewCraft(3174, "Elixir of Poison Resistance", 120, {})
    :SetResult(3386)
    :AddRecipe(3394, Quality.Common, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1288, 1) -- Large Venom Sac
    :AddReagent(2453, 1) -- Bruiseweed
    :AddReagent(3372, 1) -- Leaded Vial
    :Save()

module:NewCraft(3175, "Limited Invulnerability Potion", 250, {})
    :SetResult(3387)
    :AddRecipe(3395, Quality.Common, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8839, 2) -- Blindweed
    :AddReagent(8845, 1) -- Ghost Mushroom
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(3176, "Strong Troll's Blood Potion", 125, {SpellSource.Trainer})
    :SetResult(3388)
    :AddReagent(2450, 2) -- Briarthorn
    :AddReagent(2453, 2) -- Bruiseweed
    :AddReagent(3372, 1) -- Leaded Vial
    :Save()

module:NewCraft(3177, "Elixir of Defense", 130, {SpellSource.Trainer})
    :SetResult(3389)
    :AddReagent(3355, 1) -- Wild Steelbloom
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3820, 1) -- Stranglekelp
    :Save()

module:NewCraft(3188, "Elixir of Ogre's Strength", 150, {})
    :SetResult(3391)
    :AddRecipe(6211, Quality.Common, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2449, 1) -- Earthroot
    :AddReagent(3356, 1) -- Kingsblood
    :AddReagent(3372, 1) -- Leaded Vial
    :Save()

module:NewCraft(3230, "Elixir of Minor Agility", 50, {})
    :SetResult(2457)
    :AddRecipe(2553, Quality.Common, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing, RecipeSource.Pickpocket})
    :AddReagent(765, 1) -- Silverleaf
    :AddReagent(2452, 1) -- Swiftthistle
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(3447, "Healing Potion", 110, {SpellSource.Trainer})
    :SetResult(929)
    :AddReagent(2450, 1) -- Briarthorn
    :AddReagent(2453, 1) -- Bruiseweed
    :AddReagent(3372, 1) -- Leaded Vial
    :Save()

module:NewCraft(3448, "Lesser Invisibility Potion", 165, {SpellSource.Trainer})
    :SetResult(3823)
    :AddReagent(3355, 1) -- Wild Steelbloom
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3818, 1) -- Fadeleaf
    :Save()

module:NewCraft(3449, "Shadow Oil", 165, {})
    :SetResult(3824)
    :AddRecipe(6068, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3369, 4) -- Grave Moss
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3818, 4) -- Fadeleaf
    :Save()

module:NewCraft(3450, "Elixir of Fortitude", 175, {SpellSource.Trainer})
    :SetResult(3825)
    :AddRecipe(3830, Quality.Common, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3355, 1) -- Wild Steelbloom
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3821, 1) -- Goldthorn
    :Save()

module:NewCraft(3451, "Mighty Troll's Blood Potion", 180, {SpellSource.Trainer})
    :SetResult(3826)
    :AddRecipe(3831, Quality.Common, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(2453, 1) -- Bruiseweed
    :AddReagent(3357, 1) -- Liferoot
    :AddReagent(3372, 1) -- Leaded Vial
    :Save()

module:NewCraft(3452, "Mana Potion", 160, {SpellSource.Trainer})
    :SetResult(3827)
    :AddReagent(3356, 1) -- Kingsblood
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3820, 1) -- Stranglekelp
    :Save()

module:NewCraft(3453, "Elixir of Detect Lesser Invisibility", 195, {})
    :SetResult(3828)
    :AddRecipe(3832, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3358, 1) -- Khadgar's Whisker
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3818, 1) -- Fadeleaf
    :Save()

module:NewCraft(3454, "Frost Oil", 200, {})
    :SetResult(3829)
    :AddRecipe(14634, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(3358, 4) -- Khadgar's Whisker
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3819, 2) -- Wintersbite
    :Save()

module:NewCraft(4508, "Discolored Healing Potion", 50, {})
    :SetResult(4596)
    :AddRecipe(4597, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(2447, 1) -- Peacebloom
    :AddReagent(3164, 1) -- Discolored Worg Heart
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(4942, "Lesser Stoneshield Potion", 215, {})
    :SetResult(4623)
    :AddRecipe(4624, Quality.Common, {RecipeSource.Quest})
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3821, 1) -- Goldthorn
    :AddReagent(3858, 1) -- Mithril Ore
    :Save()

module:NewCraft(6617, "Rage Potion", 60, {})
    :SetResult(5631)
    :AddRecipe(5640, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2450, 1) -- Briarthorn
    :AddReagent(3371, 1) -- Empty Vial
    :AddReagent(5635, 1) -- Sharp Claw
    :Save()

module:NewCraft(6618, "Great Rage Potion", 175, {})
    :SetResult(5633)
    :AddRecipe(5643, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3356, 1) -- Kingsblood
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(5637, 1) -- Large Fang
    :Save()

module:NewCraft(6624, "Free Action Potion", 150, {})
    :SetResult(5634)
    :AddRecipe(5642, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3820, 1) -- Stranglekelp
    :AddReagent(6370, 2) -- Blackmouth Oil
    :Save()

module:NewCraft(7179, "Elixir of Water Breathing", 90, {SpellSource.Trainer})
    :SetResult(5996)
    :AddReagent(3371, 1) -- Empty Vial
    :AddReagent(3820, 1) -- Stranglekelp
    :AddReagent(6370, 2) -- Blackmouth Oil
    :Save()

module:NewCraft(7181, "Greater Healing Potion", 155, {SpellSource.Trainer})
    :SetResult(1710)
    :AddReagent(3356, 1) -- Kingsblood
    :AddReagent(3357, 1) -- Liferoot
    :AddReagent(3372, 1) -- Leaded Vial
    :Save()

module:NewCraft(7183, "Elixir of Minor Defense", 1, {SpellSource.LearnedAutomatically})
    :SetResult(5997)
    :AddReagent(765, 2) -- Silverleaf
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(7255, "Holy Protection Potion", 100, {})
    :SetResult(6051)
    :AddRecipe(6053, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2452, 1) -- Swiftthistle
    :AddReagent(2453, 1) -- Bruiseweed
    :AddReagent(3371, 1) -- Empty Vial
    :Save()

module:NewCraft(7256, "Shadow Protection Potion", 135, {})
    :SetResult(6048)
    :AddRecipe(6054, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3356, 1) -- Kingsblood
    :AddReagent(3369, 1) -- Grave Moss
    :AddReagent(3372, 1) -- Leaded Vial
    :Save()

module:NewCraft(7257, "Fire Protection Potion", 165, {})
    :SetResult(6049)
    :AddRecipe(6055, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(4402, 1) -- Small Flame Sac
    :AddReagent(6371, 1) -- Fire Oil
    :Save()

module:NewCraft(7258, "Frost Protection Potion", 190, {})
    :SetResult(6050)
    :AddRecipe(6056, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3819, 1) -- Wintersbite
    :AddReagent(3821, 1) -- Goldthorn
    :Save()

module:NewCraft(7259, "Nature Protection Potion", 190, {})
    :SetResult(6052)
    :AddRecipe(6057, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3357, 1) -- Liferoot
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3820, 1) -- Stranglekelp
    :Save()

module:NewCraft(7836, "Blackmouth Oil", 80, {SpellSource.Trainer})
    :SetResult(6370)
    :AddReagent(3371, 1) -- Empty Vial
    :AddReagent(6358, 2) -- Oily Blackmouth
    :Save()

module:NewCraft(7837, "Fire Oil", 130, {SpellSource.Trainer})
    :SetResult(6371)
    :AddReagent(3371, 1) -- Empty Vial
    :AddReagent(6359, 2) -- Firefin Snapper
    :Save()

module:NewCraft(7841, "Swim Speed Potion", 100, {SpellSource.Trainer})
    :SetResult(6372)
    :AddReagent(2452, 1) -- Swiftthistle
    :AddReagent(3371, 1) -- Empty Vial
    :AddReagent(6370, 1) -- Blackmouth Oil
    :Save()

module:NewCraft(7845, "Elixir of Firepower", 140, {SpellSource.Trainer})
    :SetResult(6373)
    :AddReagent(3356, 1) -- Kingsblood
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(6371, 2) -- Fire Oil
    :Save()

module:NewCraft(8240, "Elixir of Giant Growth", 90, {})
    :SetResult(6662)
    :AddRecipe(6663, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(2449, 1) -- Earthroot
    :AddReagent(3371, 1) -- Empty Vial
    :AddReagent(6522, 1) -- Deviate Fish
    :Save()

module:NewCraft(11448, "Greater Mana Potion", 205, {SpellSource.Trainer})
    :SetResult(6149)
    :AddReagent(3358, 1) -- Khadgar's Whisker
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3821, 1) -- Goldthorn
    :Save()

module:NewCraft(11449, "Elixir of Agility", 185, {SpellSource.Trainer})
    :SetResult(8949)
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3820, 1) -- Stranglekelp
    :AddReagent(3821, 1) -- Goldthorn
    :Save()

module:NewCraft(11450, "Elixir of Greater Defense", 195, {SpellSource.Trainer})
    :SetResult(8951)
    :AddReagent(3355, 1) -- Wild Steelbloom
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3821, 1) -- Goldthorn
    :Save()

module:NewCraft(11451, "Oil of Immolation", 205, {SpellSource.Trainer})
    :SetResult(8956)
    :AddReagent(3821, 1) -- Goldthorn
    :AddReagent(4625, 1) -- Firebloom
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11452, "Restorative Potion", 215, {SpellSource.Quest})
    :SetResult(9030)
    :AddReagent(3821, 1) -- Goldthorn
    :AddReagent(7067, 1) -- Elemental Earth
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11453, "Magic Resistance Potion", 210, {})
    :SetResult(9036)
    :AddRecipe(9293, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3358, 1) -- Khadgar's Whisker
    :AddReagent(8831, 1) -- Purple Lotus
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11456, "Goblin Rocket Fuel", 210, {})
    :SetResult(9061)
    :AddRecipe(10644, Quality.Common, {RecipeSource.CraftedByEngineer})
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(4625, 1) -- Firebloom
    :AddReagent(9260, 1) -- Volatile Rum
    :Save()

module:NewCraft(11457, "Superior Healing Potion", 215, {SpellSource.Trainer})
    :SetResult(3928)
    :AddReagent(3358, 1) -- Khadgar's Whisker
    :AddReagent(8838, 1) -- Sungrass
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11458, "Wildvine Potion", 225, {})
    :SetResult(9144)
    :AddRecipe(9294, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8153, 1) -- Wildvine
    :AddReagent(8831, 1) -- Purple Lotus
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11459, "Philosophers' Stone", 225, {})
    :SetResult(9149)
    :AddRecipe(9303, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3575, 4) -- Iron Bar
    :AddReagent(4625, 4) -- Firebloom
    :AddReagent(8831, 4) -- Purple Lotus
    :AddReagent(9262, 1) -- Black Vitriol
    :Save()

module:NewCraft(11460, "Elixir of Detect Undead", 230, {SpellSource.Trainer})
    :SetResult(9154)
    :AddReagent(8836, 1) -- Arthas' Tears
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11461, "Arcane Elixir", 235, {SpellSource.Trainer})
    :SetResult(9155)
    :AddReagent(3821, 1) -- Goldthorn
    :AddReagent(8839, 1) -- Blindweed
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11464, "Invisibility Potion", 235, {})
    :SetResult(9172)
    :AddRecipe(9295, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8838, 1) -- Sungrass
    :AddReagent(8845, 1) -- Ghost Mushroom
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11465, "Elixir of Greater Intellect", 235, {SpellSource.Trainer})
    :SetResult(9179)
    :AddReagent(3358, 1) -- Khadgar's Whisker
    :AddReagent(8839, 1) -- Blindweed
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11466, "Gift of Arthas", 240, {})
    :SetResult(9088)
    :AddRecipe(9296, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8836, 1) -- Arthas' Tears
    :AddReagent(8839, 1) -- Blindweed
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11467, "Elixir of Greater Agility", 240, {SpellSource.Trainer})
    :SetResult(9187)
    :AddReagent(3821, 1) -- Goldthorn
    :AddReagent(8838, 1) -- Sungrass
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11468, "Elixir of Dream Vision", 240, {})
    :SetResult(9197)
    :AddRecipe(9297, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8831, 3) -- Purple Lotus
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11472, "Elixir of Giants", 245, {})
    :SetResult(9206)
    :AddRecipe(9298, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8838, 1) -- Sungrass
    :AddReagent(8846, 1) -- Gromsblood
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11473, "Ghost Dye", 245, {})
    :SetResult(9210)
    :AddRecipe(9302, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4342, 1) -- Purple Dye
    :AddReagent(8845, 2) -- Ghost Mushroom
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11476, "Elixir of Shadow Power", 250, {})
    :SetResult(9264)
    :AddRecipe(9301, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(8845, 3) -- Ghost Mushroom
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11477, "Elixir of Demonslaying", 250, {})
    :SetResult(9224)
    :AddRecipe(9300, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8845, 1) -- Ghost Mushroom
    :AddReagent(8846, 1) -- Gromsblood
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11478, "Elixir of Detect Demon", 250, {SpellSource.Trainer})
    :SetResult(9233)
    :AddReagent(8846, 2) -- Gromsblood
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(11479, "Transmute: Iron to Gold", 225, {})
    :SetResult(3577)
    :AddRecipe(9304, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3575, 1) -- Iron Bar
    :Save()

module:NewCraft(11480, "Transmute: Mithril to Truesilver", 225, {})
    :SetResult(6037)
    :AddRecipe(9305, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3860, 1) -- Mithril Bar
    :Save()

module:NewCraft(12609, "Catseye Elixir", 200, {SpellSource.Trainer})
    :SetResult(10592)
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3818, 1) -- Fadeleaf
    :AddReagent(3821, 1) -- Goldthorn
    :Save()

module:NewCraft(15833, "Dreamless Sleep Potion", 230, {SpellSource.Trainer})
    :SetResult(12190)
    :AddReagent(8831, 3) -- Purple Lotus
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(17187, "Transmute: Arcanite", 275, {})
    :SetResult(12360)
    :AddRecipe(12958, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12359, 1) -- Thorium Bar
    :AddReagent(12363, 1) -- Arcane Crystal
    :Save()

module:NewCraft(17551, "Stonescale Oil", 250, {SpellSource.Trainer})
    :SetResult(13423)
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(13422, 1) -- Stonescale Eel
    :Save()

module:NewCraft(17552, "Mighty Rage Potion", 255, {})
    :SetResult(13442)
    :AddRecipe(13476, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8846, 3) -- Gromsblood
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(17553, "Superior Mana Potion", 260, {})
    :SetResult(13443)
    :AddRecipe(13477, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8838, 2) -- Sungrass
    :AddReagent(8839, 2) -- Blindweed
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(17554, "Elixir of Superior Defense", 265, {})
    :SetResult(13445)
    :AddRecipe(13478, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8838, 1) -- Sungrass
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13423, 2) -- Stonescale Oil
    :Save()

module:NewCraft(17555, "Elixir of the Sages", 270, {})
    :SetResult(13447)
    :AddRecipe(13479, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13463, 1) -- Dreamfoil
    :AddReagent(13466, 2) -- Plaguebloom
    :Save()

module:NewCraft(17556, "Major Healing Potion", 275, {})
    :SetResult(13446)
    :AddRecipe(13480, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13464, 2) -- Golden Sansam
    :AddReagent(13465, 1) -- Mountain Silversage
    :Save()

module:NewCraft(17557, "Elixir of Brute Force", 275, {})
    :SetResult(13453)
    :AddRecipe(13481, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(8846, 2) -- Gromsblood
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13466, 2) -- Plaguebloom
    :Save()

module:NewCraft(17559, "Transmute: Air to Fire", 275, {})
    :SetResult(7078)
    :AddRecipe(13482, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(7082, 1) -- Essence of Air
    :Save()

module:NewCraft(17560, "Transmute: Fire to Earth", 275, {})
    :SetResult(7076)
    :AddRecipe(13483, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(7078, 1) -- Essence of Fire
    :Save()

module:NewCraft(17561, "Transmute: Earth to Water", 275, {})
    :SetResult(7080)
    :AddRecipe(13484, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(7076, 1) -- Essence of Earth
    :Save()

module:NewCraft(17562, "Transmute: Water to Air", 275, {})
    :SetResult(7082)
    :AddRecipe(13485, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(7080, 1) -- Essence of Water
    :Save()

module:NewCraft(17563, "Transmute: Undeath to Water", 275, {})
    :SetResult(7080)
    :AddRecipe(13486, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(12808, 1) -- Essence of Undeath
    :Save()

module:NewCraft(17564, "Transmute: Water to Undeath", 275, {})
    :SetResult(12808)
    :AddRecipe(13487, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7080, 1) -- Essence of Water
    :Save()

module:NewCraft(17565, "Transmute: Life to Earth", 275, {})
    :SetResult(7076)
    :AddRecipe(13488, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(12803, 1) -- Living Essence
    :Save()

module:NewCraft(17566, "Transmute: Earth to Life", 275, {})
    :SetResult(12803)
    :AddRecipe(13489, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7076, 1) -- Essence of Earth
    :Save()

module:NewCraft(17570, "Greater Stoneshield Potion", 280, {})
    :SetResult(13455)
    :AddRecipe(13490, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(10620, 1) -- Thorium Ore
    :AddReagent(13423, 3) -- Stonescale Oil
    :Save()

module:NewCraft(17571, "Elixir of the Mongoose", 280, {})
    :SetResult(13452)
    :AddRecipe(13491, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13465, 2) -- Mountain Silversage
    :AddReagent(13466, 2) -- Plaguebloom
    :Save()

module:NewCraft(17572, "Purification Potion", 285, {})
    :SetResult(13462)
    :AddRecipe(13492, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13466, 2) -- Plaguebloom
    :AddReagent(13467, 2) -- Icecap
    :Save()

module:NewCraft(17573, "Greater Arcane Elixir", 285, {})
    :SetResult(13454)
    :AddRecipe(13493, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13463, 3) -- Dreamfoil
    :AddReagent(13465, 1) -- Mountain Silversage
    :Save()

module:NewCraft(17574, "Greater Fire Protection Potion", 290, {})
    :SetResult(13457)
    :AddRecipe(13494, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7068, 1) -- Elemental Fire
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13463, 1) -- Dreamfoil
    :Save()

module:NewCraft(17575, "Greater Frost Protection Potion", 290, {})
    :SetResult(13456)
    :AddRecipe(13495, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7070, 1) -- Elemental Water
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13463, 1) -- Dreamfoil
    :Save()

module:NewCraft(17576, "Greater Nature Protection Potion", 290, {})
    :SetResult(13458)
    :AddRecipe(13496, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7067, 1) -- Elemental Earth
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13463, 1) -- Dreamfoil
    :Save()

module:NewCraft(17577, "Greater Arcane Protection Potion", 290, {})
    :SetResult(13461)
    :AddRecipe(13497, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(11176, 1) -- Dream Dust
    :AddReagent(13463, 1) -- Dreamfoil
    :Save()

module:NewCraft(17578, "Greater Shadow Protection Potion", 290, {})
    :SetResult(13459)
    :AddRecipe(13499, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(3824, 1) -- Shadow Oil
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13463, 1) -- Dreamfoil
    :Save()

module:NewCraft(17580, "Major Mana Potion", 295, {})
    :SetResult(13444)
    :AddRecipe(13501, Quality.Uncommon, {RecipeSource.Drop, RecipeSource.Vendor})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13463, 3) -- Dreamfoil
    :AddReagent(13467, 2) -- Icecap
    :Save()

module:NewCraft(17634, "Flask of Petrification", 300, {})
    :SetResult(13506)
    :AddRecipe(13518, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13423, 30) -- Stonescale Oil
    :AddReagent(13465, 10) -- Mountain Silversage
    :AddReagent(13468, 1) -- Black Lotus
    :Save()

module:NewCraft(17635, "Flask of the Titans", 300, {})
    :SetResult(13510)
    :AddRecipe(13519, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8846, 30) -- Gromsblood
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13423, 10) -- Stonescale Oil
    :AddReagent(13468, 1) -- Black Lotus
    :Save()

module:NewCraft(17636, "Flask of Distilled Wisdom", 300, {})
    :SetResult(13511)
    :AddRecipe(13520, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13463, 30) -- Dreamfoil
    :AddReagent(13467, 10) -- Icecap
    :AddReagent(13468, 1) -- Black Lotus
    :Save()

module:NewCraft(17637, "Flask of Supreme Power", 300, {})
    :SetResult(13512)
    :AddRecipe(13521, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13463, 30) -- Dreamfoil
    :AddReagent(13465, 10) -- Mountain Silversage
    :AddReagent(13468, 1) -- Black Lotus
    :Save()

module:NewCraft(17638, "Flask of Chromatic Resistance", 300, {})
    :SetResult(13513)
    :AddRecipe(13522, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13465, 10) -- Mountain Silversage
    :AddReagent(13467, 30) -- Icecap
    :AddReagent(13468, 1) -- Black Lotus
    :Save()

module:NewCraft(21923, "Elixir of Frost Power", 190, {})
    :SetResult(17708)
    :AddRecipe(17709, Quality.Common, {RecipeSource.Quest})
    :AddReagent(3358, 1) -- Khadgar's Whisker
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(3819, 2) -- Wintersbite
    :Save()

module:NewCraft(22732, "Major Rejuvenation Potion", 300, {})
    :SetResult(18253)
    :AddRecipe(18257, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(10286, 1) -- Heart of the Wild
    :AddReagent(13463, 4) -- Dreamfoil
    :AddReagent(13464, 4) -- Golden Sansam
    :AddReagent(18256, 1) -- Imbued Vial
    :Save()

module:NewCraft(22808, "Elixir of Greater Water Breathing", 215, {SpellSource.Trainer})
    :SetResult(18294)
    :AddReagent(7972, 1) -- Ichor of Undeath
    :AddReagent(8831, 2) -- Purple Lotus
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

module:NewCraft(24266, "Gurubashi Mojo Madness", 300, {SpellSource.WorldObject})
    :SetResult(19931)
    :AddReagent(12804, 6) -- Powerful Mojo
    :AddReagent(12938, 1) -- Blood of Heroes
    :AddReagent(13468, 1) -- Black Lotus
    :AddReagent(19943, 1) -- Massive Mojo
    :Save()

module:NewCraft(24365, "Mageblood Potion", 275, {})
    :SetResult(20007)
    :AddRecipe(20011, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13463, 1) -- Dreamfoil
    :AddReagent(13466, 2) -- Plaguebloom
    :Save()

module:NewCraft(24366, "Greater Dreamless Sleep Potion", 275, {})
    :SetResult(20002)
    :AddRecipe(20012, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13463, 2) -- Dreamfoil
    :AddReagent(13464, 1) -- Golden Sansam
    :Save()

module:NewCraft(24367, "Living Action Potion", 285, {})
    :SetResult(20008)
    :AddRecipe(20013, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(10286, 2) -- Heart of the Wild
    :AddReagent(13465, 2) -- Mountain Silversage
    :AddReagent(13467, 2) -- Icecap
    :Save()

module:NewCraft(24368, "Major Troll's Blood Potion", 290, {})
    :SetResult(20004)
    :AddRecipe(20014, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8846, 1) -- Gromsblood
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(13466, 2) -- Plaguebloom
    :Save()

module:NewCraft(25146, "Transmute: Elemental Fire", 300, {})
    :SetResult(7068)
    :AddRecipe(20761, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7077, 1) -- Heart of Fire
    :Save()

module:NewCraft(26277, "Elixir of Greater Firepower", 250, {})
    :SetResult(21546)
    :AddRecipe(21547, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(4625, 3) -- Firebloom
    :AddReagent(6371, 3) -- Fire Oil
    :AddReagent(8925, 1) -- Crystal Vial
    :Save()

if lib.env.is_turtle_wow then
    module:NewCraft(3449, "Shadow Oil", 165, {})
        :SetResult(3824)
        :AddRecipe(6068, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(3369, 2) -- Grave Moss
        :AddReagent(3372, 1) -- Leaded Vial
        :AddReagent(3818, 4) -- Fadeleaf
        :Save()

    module:NewCraft(3454, "Frost Oil", 200, {})
        :SetResult(3829)
        :AddRecipe(14634, Quality.Uncommon, {RecipeSource.Drop, RecipeSource.Vendor})
        :AddReagent(3358, 4) -- Khadgar's Whisker
        :AddReagent(3372, 1) -- Leaded Vial
        :AddReagent(3819, 2) -- Wintersbite
        :Save()

    module:NewCraft(17574, "Greater Fire Protection Potion", 290, {})
        :SetResult(13457)
        :AddRecipe(13494, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(4625, 1) -- Firebloom
        :AddReagent(7068, 1) -- Elemental Fire
        :AddReagent(8925, 1) -- Crystal Vial
        :Save()

    module:NewCraft(17575, "Greater Frost Protection Potion", 290, {})
        :SetResult(13456)
        :AddRecipe(13495, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(7070, 1) -- Elemental Water
        :AddReagent(8925, 1) -- Crystal Vial
        :AddReagent(13467, 1) -- Icecap
        :Save()

    module:NewCraft(17578, "Greater Shadow Protection Potion", 290, {})
        :SetResult(13459)
        :AddRecipe(13499, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(3824, 1) -- Shadow Oil
        :AddReagent(8836, 2) -- Arthas' Tears
        :AddReagent(8925, 1) -- Crystal Vial
        :Save()

    module:NewCraft(17579, "Greater Holy Protection Potion", 290, {})
        :SetResult(13460)
        :AddRecipe(13500, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(7069, 1) -- Elemental Air
        :AddReagent(8925, 1) -- Crystal Vial
        :AddReagent(13464, 1) -- Golden Sansam
        :Save()

    module:NewCraft(17580, "Major Mana Potion", 295, {})
        :SetResult(13444)
        :AddRecipe(13501, Quality.Uncommon, {RecipeSource.Drop, RecipeSource.Vendor})
        :AddReagent(8925, 1) -- Crystal Vial
        :AddReagent(13463, 2) -- Dreamfoil
        :AddReagent(13467, 2) -- Icecap
        :Save()

    module:NewCraft(17632, "Alchemist's Stone", 300, {})
        :SetResult(13503)
        :AddRecipe(13517, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(7076, 8) -- Essence of Earth
        :AddReagent(7078, 8) -- Essence of Fire
        :AddReagent(7080, 8) -- Essence of Water
        :AddReagent(7082, 8) -- Essence of Air
        :AddReagent(9262, 2) -- Black Vitriol
        :AddReagent(12803, 8) -- Living Essence
        :AddReagent(13468, 4) -- Black Lotus
        :Save()

    module:NewCraft(17635, "Flask of the Titans", 300, {})
        :SetResult(13510)
        :AddRecipe(13519, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(8925, 1) -- Crystal Vial
        :AddReagent(13423, 10) -- Stonescale Oil
        :AddReagent(13464, 30) -- Golden Sansam
        :AddReagent(13468, 1) -- Black Lotus
        :Save()

    module:NewCraft(17636, "Flask of Distilled Wisdom", 300, {})
        :SetResult(13511)
        :AddRecipe(13520, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(8838, 30) -- Sungrass
        :AddReagent(8925, 1) -- Crystal Vial
        :AddReagent(13467, 10) -- Icecap
        :AddReagent(13468, 1) -- Black Lotus
        :Save()

    module:NewCraft(22430, "Refined Scale of Onyxia", 300, {SpellSource.Quest})
        :SetResult(17967)
        :AddReagent(15410, 1) -- Scale of Onyxia
        :Save()

    module:NewCraft(22732, "Major Rejuvenation Potion", 300, {})
        :SetResult(18253)
        :AddRecipe(18257, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(10286, 1) -- Heart of the Wild
        :AddReagent(13463, 3) -- Dreamfoil
        :AddReagent(13464, 3) -- Golden Sansam
        :AddReagent(18256, 1) -- Imbued Vial
        :Save()

    module:NewCraft(36929, "Concoction of the Emerald Mongoose", 300, {})
        :SetResult(47410)
        :AddRecipe(47411, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(8153, 6) -- Wildvine
        :AddReagent(13452, 1) -- Elixir of the Mongoose
        :AddReagent(61224, 1) -- Dreamshard Elixir
        :Save()

    module:NewCraft(36932, "Concoction of the Arcane Giant", 300, {})
        :SetResult(47412)
        :AddRecipe(47413, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(8831, 6) -- Purple Lotus
        :AddReagent(9206, 1) -- Elixir of Giants
        :AddReagent(13454, 1) -- Greater Arcane Elixir
        :Save()

    module:NewCraft(36935, "Concoction of the Dreamwater", 300, {})
        :SetResult(47414)
        :AddRecipe(47415, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(8838, 6) -- Sungrass
        :AddReagent(12820, 1) -- Winterfall Firewater
        :AddReagent(61423, 1) -- Dreamtonic
        :Save()

    module:NewCraft(45061, "Volatile Concoction", 75, {})
        :SetResult(51262)
        :AddRecipe(51263, Quality.Uncommon, {}) -- TODO add source
        :AddReagent(730, 1) -- Murloc Eye
        :AddReagent(814, 1) -- Flask of Oil
        :AddReagent(3371, 1) -- Empty Vial
        :Save()

    module:NewCraft(45989, "Elixir of Greater Nature Power", 300, {})
        :SetResult(50237)
        :AddRecipe(61218, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(8838, 1) -- Sungrass
        :AddReagent(8925, 1) -- Crystal Vial
        :AddReagent(10286, 3) -- Heart of the Wild
        :AddReagent(13464, 1) -- Golden Sansam
        :Save()

    module:NewCraft(57111, "Potion of Quickness", 300, {})
        :SetResult(61181)
        :AddRecipe(61177, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(2459, 1) -- Swiftness Potion
        :AddReagent(8846, 1) -- Gromsblood
        :AddReagent(8925, 1) -- Crystal Vial
        :AddReagent(13465, 2) -- Mountain Silversage
        :Save()

    module:NewCraft(57129, "Lucidity Potion", 300, {})
        :SetResult(61225)
        :AddRecipe(61223, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(730, 1) -- Murloc Eye
        :AddReagent(8831, 1) -- Purple Lotus
        :AddReagent(8925, 1) -- Crystal Vial
        :AddReagent(13463, 1) -- Dreamfoil
        :Save()

    module:NewCraft(57131, "Dreamshard Elixir", 300, {})
        :SetResult(61224)
        :AddRecipe(61222, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(8925, 1) -- Crystal Vial
        :AddReagent(11176, 1) -- Dream Dust
        :AddReagent(61198, 1) -- Small Dream Shard
        :Save()

    module:NewCraft(57555, "Transmute: Elemental Earth", 300, {})
        :SetResult(7067)
        :AddRecipe(91796, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(7075, 1) -- Core of Earth
        :Save()

    module:NewCraft(57557, "Transmute: Elemental Water", 300, {})
        :SetResult(7070)
        :AddRecipe(91797, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(7079, 1) -- Globe of Water
        :Save()
end
