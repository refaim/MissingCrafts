local lib = LibCraftsGetLibrary()
local name, version = "Professions-Leatherworking", 2
local module = --[[---@type LcProfessionModule]] lib:RegisterProfessionModule(name, version, "Leatherworking")
if not module then return end

local Quality = lib.constants.qualities
local SpellSource = lib.constants.spell_sources
local RecipeSource = lib.constants.recipe_sources

module:NewCraft(2149, "Handstitched Leather Boots", 1, {SpellSource.LearnedAutomatically})
    :SetResult(2302)
    :AddReagent(2318, 2) -- Light Leather
    :AddReagent(2320, 1) -- Coarse Thread
    :Save()

module:NewCraft(2152, "Light Armor Kit", 1, {SpellSource.LearnedAutomatically})
    :SetResult(2304)
    :AddReagent(2318, 1) -- Light Leather
    :Save()

module:NewCraft(2153, "Handstitched Leather Pants", 15, {SpellSource.Trainer})
    :SetResult(2303)
    :AddReagent(2318, 4) -- Light Leather
    :AddReagent(2320, 1) -- Coarse Thread
    :Save()

module:NewCraft(2158, "Fine Leather Boots", 90, {})
    :SetResult(2307)
    :AddRecipe(2406, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(2318, 7) -- Light Leather
    :AddReagent(2320, 2) -- Coarse Thread
    :Save()

module:NewCraft(2159, "Fine Leather Cloak", 85, {SpellSource.Trainer})
    :SetResult(2308)
    :AddReagent(2318, 10) -- Light Leather
    :AddReagent(2321, 2) -- Fine Thread
    :Save()

module:NewCraft(2160, "Embossed Leather Vest", 40, {SpellSource.Trainer})
    :SetResult(2300)
    :AddReagent(2318, 8) -- Light Leather
    :AddReagent(2320, 4) -- Coarse Thread
    :Save()

module:NewCraft(2161, "Embossed Leather Boots", 55, {SpellSource.Trainer})
    :SetResult(2309)
    :AddReagent(2318, 8) -- Light Leather
    :AddReagent(2320, 5) -- Coarse Thread
    :Save()

module:NewCraft(2162, "Embossed Leather Cloak", 60, {SpellSource.Trainer})
    :SetResult(2310)
    :AddReagent(2318, 5) -- Light Leather
    :AddReagent(2320, 2) -- Coarse Thread
    :Save()

module:NewCraft(2163, "White Leather Jerkin", 60, {})
    :SetResult(2311)
    :AddRecipe(2407, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2318, 8) -- Light Leather
    :AddReagent(2320, 2) -- Coarse Thread
    :AddReagent(2324, 1) -- Bleach
    :Save()

module:NewCraft(2164, "Fine Leather Gloves", 75, {})
    :SetResult(2312)
    :AddRecipe(2408, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(2318, 4) -- Light Leather
    :AddReagent(2320, 2) -- Coarse Thread
    :AddReagent(4231, 1) -- Cured Light Hide
    :Save()

module:NewCraft(2165, "Medium Armor Kit", 100, {SpellSource.Trainer})
    :SetResult(2313)
    :AddReagent(2319, 4) -- Medium Leather
    :AddReagent(2320, 1) -- Coarse Thread
    :Save()

module:NewCraft(2166, "Toughened Leather Armor", 120, {SpellSource.Trainer})
    :SetResult(2314)
    :AddReagent(2319, 10) -- Medium Leather
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4231, 2) -- Cured Light Hide
    :Save()

module:NewCraft(2167, "Dark Leather Boots", 100, {SpellSource.Trainer})
    :SetResult(2315)
    :AddReagent(2319, 4) -- Medium Leather
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4340, 1) -- Gray Dye
    :Save()

module:NewCraft(2168, "Dark Leather Cloak", 110, {SpellSource.Trainer})
    :SetResult(2316)
    :AddReagent(2319, 8) -- Medium Leather
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4340, 1) -- Gray Dye
    :Save()

module:NewCraft(2169, "Dark Leather Tunic", 100, {})
    :SetResult(2317)
    :AddRecipe(2409, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(2319, 6) -- Medium Leather
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4340, 1) -- Gray Dye
    :Save()

module:NewCraft(2881, "Light Leather", 1, {SpellSource.LearnedAutomatically})
    :SetResult(2318)
    :AddReagent(2934, 3) -- Ruined Leather Scraps
    :Save()

module:NewCraft(3753, "Handstitched Leather Belt", 25, {SpellSource.Trainer})
    :SetResult(4237)
    :AddReagent(2318, 6) -- Light Leather
    :AddReagent(2320, 1) -- Coarse Thread
    :Save()

module:NewCraft(3756, "Embossed Leather Gloves", 55, {SpellSource.Trainer})
    :SetResult(4239)
    :AddReagent(2318, 3) -- Light Leather
    :AddReagent(2320, 2) -- Coarse Thread
    :Save()

module:NewCraft(3759, "Embossed Leather Pants", 75, {SpellSource.Trainer})
    :SetResult(4242)
    :AddReagent(2318, 6) -- Light Leather
    :AddReagent(2320, 2) -- Coarse Thread
    :AddReagent(4231, 1) -- Cured Light Hide
    :Save()

module:NewCraft(3760, "Hillman's Cloak", 150, {SpellSource.Trainer})
    :SetResult(3719)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4234, 5) -- Heavy Leather
    :Save()

module:NewCraft(3761, "Fine Leather Tunic", 85, {SpellSource.Trainer})
    :SetResult(4243)
    :AddReagent(2318, 6) -- Light Leather
    :AddReagent(2320, 4) -- Coarse Thread
    :AddReagent(4231, 3) -- Cured Light Hide
    :Save()

module:NewCraft(3762, "Hillman's Leather Vest", 100, {})
    :SetResult(4244)
    :AddRecipe(4293, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(2320, 2) -- Coarse Thread
    :AddReagent(4231, 2) -- Cured Light Hide
    :AddReagent(4243, 1) -- Fine Leather Tunic
    :Save()

module:NewCraft(3763, "Fine Leather Belt", 80, {SpellSource.Trainer})
    :SetResult(4246)
    :AddReagent(2318, 6) -- Light Leather
    :AddReagent(2320, 2) -- Coarse Thread
    :Save()

module:NewCraft(3764, "Hillman's Leather Gloves", 145, {SpellSource.Trainer})
    :SetResult(4247)
    :AddReagent(2319, 14) -- Medium Leather
    :AddReagent(2321, 4) -- Fine Thread
    :Save()

module:NewCraft(3765, "Dark Leather Gloves", 120, {})
    :SetResult(4248)
    :AddRecipe(7360, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2312, 1) -- Fine Leather Gloves
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4233, 1) -- Cured Medium Hide
    :AddReagent(4340, 1) -- Gray Dye
    :Save()

module:NewCraft(3766, "Dark Leather Belt", 125, {SpellSource.Trainer})
    :SetResult(4249)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4233, 1) -- Cured Medium Hide
    :AddReagent(4246, 1) -- Fine Leather Belt
    :AddReagent(4340, 1) -- Gray Dye
    :Save()

module:NewCraft(3767, "Hillman's Belt", 120, {})
    :SetResult(4250)
    :AddRecipe(4294, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2319, 8) -- Medium Leather
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(3383, 1) -- Elixir of Wisdom
    :Save()

module:NewCraft(3768, "Hillman's Shoulders", 130, {SpellSource.Trainer})
    :SetResult(4251)
    :AddReagent(2319, 4) -- Medium Leather
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4233, 1) -- Cured Medium Hide
    :Save()

module:NewCraft(3769, "Dark Leather Shoulders", 140, {})
    :SetResult(4252)
    :AddRecipe(4296, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2319, 12) -- Medium Leather
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(3390, 1) -- Elixir of Lesser Agility
    :AddReagent(4340, 1) -- Gray Dye
    :Save()

module:NewCraft(3770, "Toughened Leather Gloves", 135, {SpellSource.Trainer})
    :SetResult(4253)
    :AddReagent(2319, 4) -- Medium Leather
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(3182, 2) -- Spider's Silk
    :AddReagent(3389, 2) -- Elixir of Defense
    :AddReagent(4233, 2) -- Cured Medium Hide
    :Save()

module:NewCraft(3771, "Barbaric Gloves", 150, {})
    :SetResult(4254)
    :AddRecipe(4297, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4234, 6) -- Heavy Leather
    :AddReagent(5637, 2) -- Large Fang
    :Save()

module:NewCraft(3772, "Green Leather Armor", 155, {})
    :SetResult(4255)
    :AddRecipe(7613, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(2321, 4) -- Fine Thread
    :AddReagent(2605, 2) -- Green Dye
    :AddReagent(4234, 9) -- Heavy Leather
    :Save()

module:NewCraft(3773, "Guardian Armor", 175, {})
    :SetResult(4256)
    :AddRecipe(4299, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(3824, 1) -- Shadow Oil
    :AddReagent(4234, 12) -- Heavy Leather
    :AddReagent(4236, 2) -- Cured Heavy Hide
    :Save()

module:NewCraft(3774, "Green Leather Belt", 160, {SpellSource.Trainer})
    :SetResult(4257)
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2605, 1) -- Green Dye
    :AddReagent(4234, 5) -- Heavy Leather
    :AddReagent(4236, 1) -- Cured Heavy Hide
    :AddReagent(7071, 1) -- Iron Buckle
    :Save()

module:NewCraft(3775, "Guardian Belt", 170, {})
    :SetResult(4258)
    :AddRecipe(4298, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4234, 4) -- Heavy Leather
    :AddReagent(4236, 2) -- Cured Heavy Hide
    :AddReagent(7071, 1) -- Iron Buckle
    :Save()

module:NewCraft(3776, "Green Leather Bracers", 180, {SpellSource.Trainer})
    :SetResult(4259)
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2605, 1) -- Green Dye
    :AddReagent(4234, 6) -- Heavy Leather
    :AddReagent(4236, 2) -- Cured Heavy Hide
    :Save()

module:NewCraft(3777, "Guardian Leather Bracers", 195, {})
    :SetResult(4260)
    :AddRecipe(4300, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(4234, 6) -- Heavy Leather
    :AddReagent(4236, 2) -- Cured Heavy Hide
    :AddReagent(4291, 1) -- Silken Thread
    :Save()

module:NewCraft(3778, "Gem-studded Leather Belt", 185, {})
    :SetResult(4262)
    :AddRecipe(14635, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(1529, 2) -- Jade
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(3864, 1) -- Citrine
    :AddReagent(4236, 4) -- Cured Heavy Hide
    :AddReagent(5500, 2) -- Iridescent Pearl
    :Save()

module:NewCraft(3779, "Barbaric Belt", 200, {})
    :SetResult(4264)
    :AddRecipe(4301, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(4096, 2) -- Coarse Gorilla Hair
    :AddReagent(4234, 6) -- Heavy Leather
    :AddReagent(4236, 2) -- Cured Heavy Hide
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(5633, 1) -- Great Rage Potion
    :AddReagent(7071, 1) -- Iron Buckle
    :Save()

module:NewCraft(3780, "Heavy Armor Kit", 150, {SpellSource.Trainer})
    :SetResult(4265)
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4234, 5) -- Heavy Leather
    :Save()

module:NewCraft(3816, "Cured Light Hide", 35, {SpellSource.Trainer})
    :SetResult(4231)
    :AddReagent(783, 1) -- Light Hide
    :AddReagent(4289, 1) -- Salt
    :Save()

module:NewCraft(3817, "Cured Medium Hide", 100, {SpellSource.Trainer})
    :SetResult(4233)
    :AddReagent(4232, 1) -- Medium Hide
    :AddReagent(4289, 1) -- Salt
    :Save()

module:NewCraft(3818, "Cured Heavy Hide", 150, {SpellSource.Trainer})
    :SetResult(4236)
    :AddReagent(4235, 1) -- Heavy Hide
    :AddReagent(4289, 3) -- Salt
    :Save()

module:NewCraft(4096, "Raptor Hide Harness", 165, {})
    :SetResult(4455)
    :AddRecipe(13287, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4234, 4) -- Heavy Leather
    :AddReagent(4461, 6) -- Raptor Hide
    :Save()

module:NewCraft(4097, "Raptor Hide Belt", 165, {})
    :SetResult(4456)
    :AddRecipe(13288, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4234, 4) -- Heavy Leather
    :AddReagent(4461, 4) -- Raptor Hide
    :Save()

module:NewCraft(5244, "Kodo Hide Bag", 40, {})
    :SetResult(5081)
    :AddRecipe(5083, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(2318, 4) -- Light Leather
    :AddReagent(2320, 1) -- Coarse Thread
    :AddReagent(5082, 3) -- Thin Kodo Leather
    :Save()

module:NewCraft(6661, "Barbaric Harness", 190, {SpellSource.Trainer})
    :SetResult(5739)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4234, 14) -- Heavy Leather
    :AddReagent(7071, 1) -- Iron Buckle
    :Save()

module:NewCraft(6702, "Murloc Scale Belt", 90, {})
    :SetResult(5780)
    :AddRecipe(5786, Quality.Uncommon, {RecipeSource.Drop, RecipeSource.Vendor})
    :AddReagent(2318, 6) -- Light Leather
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(5784, 8) -- Slimy Murloc Scale
    :Save()

module:NewCraft(6703, "Murloc Scale Breastplate", 95, {})
    :SetResult(5781)
    :AddRecipe(5787, Quality.Uncommon, {RecipeSource.Drop, RecipeSource.Vendor})
    :AddReagent(2318, 8) -- Light Leather
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4231, 1) -- Cured Light Hide
    :AddReagent(5784, 12) -- Slimy Murloc Scale
    :Save()

module:NewCraft(6704, "Thick Murloc Armor", 170, {})
    :SetResult(5782)
    :AddRecipe(5788, Quality.Uncommon, {RecipeSource.Drop, RecipeSource.Vendor})
    :AddReagent(2321, 3) -- Fine Thread
    :AddReagent(4234, 10) -- Heavy Leather
    :AddReagent(4236, 1) -- Cured Heavy Hide
    :AddReagent(5785, 12) -- Thick Murloc Scale
    :Save()

module:NewCraft(6705, "Murloc Scale Bracers", 190, {})
    :SetResult(5783)
    :AddRecipe(5789, Quality.Uncommon, {RecipeSource.Drop, RecipeSource.Vendor})
    :AddReagent(4234, 14) -- Heavy Leather
    :AddReagent(4236, 1) -- Cured Heavy Hide
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(5785, 16) -- Thick Murloc Scale
    :Save()

module:NewCraft(7126, "Handstitched Leather Vest", 1, {SpellSource.LearnedAutomatically})
    :SetResult(5957)
    :AddReagent(2318, 3) -- Light Leather
    :AddReagent(2320, 1) -- Coarse Thread
    :Save()

module:NewCraft(7133, "Fine Leather Pants", 105, {})
    :SetResult(5958)
    :AddRecipe(5972, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2319, 8) -- Medium Leather
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2997, 1) -- Bolt of Woolen Cloth
    :Save()

module:NewCraft(7135, "Dark Leather Pants", 115, {SpellSource.Trainer})
    :SetResult(5961)
    :AddReagent(2319, 12) -- Medium Leather
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4340, 1) -- Gray Dye
    :Save()

module:NewCraft(7147, "Guardian Pants", 160, {SpellSource.Trainer})
    :SetResult(5962)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4234, 12) -- Heavy Leather
    :AddReagent(4305, 2) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(7149, "Barbaric Leggings", 170, {})
    :SetResult(5963)
    :AddRecipe(5973, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(1206, 1) -- Moss Agate
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4234, 10) -- Heavy Leather
    :Save()

module:NewCraft(7151, "Barbaric Shoulders", 175, {SpellSource.Trainer})
    :SetResult(5964)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4234, 8) -- Heavy Leather
    :AddReagent(4236, 1) -- Cured Heavy Hide
    :Save()

module:NewCraft(7153, "Guardian Cloak", 185, {})
    :SetResult(5965)
    :AddRecipe(5974, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(4234, 14) -- Heavy Leather
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(4305, 2) -- Bolt of Silk Cloth
    :Save()

module:NewCraft(7156, "Guardian Gloves", 190, {SpellSource.Trainer})
    :SetResult(5966)
    :AddReagent(4234, 4) -- Heavy Leather
    :AddReagent(4236, 1) -- Cured Heavy Hide
    :AddReagent(4291, 1) -- Silken Thread
    :Save()

module:NewCraft(7953, "Deviate Scale Cloak", 90, {})
    :SetResult(6466)
    :AddRecipe(6474, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4231, 1) -- Cured Light Hide
    :AddReagent(6470, 8) -- Deviate Scale
    :Save()

module:NewCraft(7954, "Deviate Scale Gloves", 105, {})
    :SetResult(6467)
    :AddRecipe(6475, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(6470, 6) -- Deviate Scale
    :AddReagent(6471, 2) -- Perfect Deviate Scale
    :Save()

module:NewCraft(7955, "Deviate Scale Belt", 115, {})
    :SetResult(6468)
    :AddRecipe(6476, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(6470, 10) -- Deviate Scale
    :AddReagent(6471, 10) -- Perfect Deviate Scale
    :Save()

module:NewCraft(8322, "Moonglow Vest", 90, {})
    :SetResult(6709)
    :AddRecipe(6710, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(2318, 6) -- Light Leather
    :AddReagent(2320, 4) -- Coarse Thread
    :AddReagent(4231, 1) -- Cured Light Hide
    :AddReagent(5498, 1) -- Small Lustrous Pearl
    :Save()

module:NewCraft(9058, "Handstitched Leather Cloak", 1, {SpellSource.LearnedAutomatically})
    :SetResult(7276)
    :AddReagent(2318, 2) -- Light Leather
    :AddReagent(2320, 1) -- Coarse Thread
    :Save()

module:NewCraft(9059, "Handstitched Leather Bracers", 1, {SpellSource.LearnedAutomatically})
    :SetResult(7277)
    :AddReagent(2318, 2) -- Light Leather
    :AddReagent(2320, 3) -- Coarse Thread
    :Save()

module:NewCraft(9060, "Light Leather Quiver", 30, {SpellSource.Trainer})
    :SetResult(7278)
    :AddReagent(2318, 4) -- Light Leather
    :AddReagent(2320, 2) -- Coarse Thread
    :Save()

module:NewCraft(9062, "Small Leather Ammo Pouch", 30, {SpellSource.Trainer})
    :SetResult(7279)
    :AddReagent(2318, 3) -- Light Leather
    :AddReagent(2320, 4) -- Coarse Thread
    :Save()

module:NewCraft(9064, "Rugged Leather Pants", 35, {})
    :SetResult(7280)
    :AddRecipe(7288, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2318, 5) -- Light Leather
    :AddReagent(2320, 5) -- Coarse Thread
    :Save()

module:NewCraft(9065, "Light Leather Bracers", 70, {SpellSource.Trainer})
    :SetResult(7281)
    :AddReagent(2318, 6) -- Light Leather
    :AddReagent(2320, 4) -- Coarse Thread
    :Save()

module:NewCraft(9068, "Light Leather Pants", 95, {SpellSource.Trainer})
    :SetResult(7282)
    :AddReagent(2318, 10) -- Light Leather
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4231, 1) -- Cured Light Hide
    :Save()

module:NewCraft(9070, "Black Whelp Cloak", 100, {})
    :SetResult(7283)
    :AddRecipe(7289, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2319, 4) -- Medium Leather
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(7286, 12) -- Black Whelp Scale
    :Save()

module:NewCraft(9072, "Red Whelp Gloves", 120, {})
    :SetResult(7284)
    :AddRecipe(7290, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(2319, 4) -- Medium Leather
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(7287, 6) -- Red Whelp Scale
    :Save()

module:NewCraft(9074, "Nimble Leather Gloves", 120, {SpellSource.Trainer})
    :SetResult(7285)
    :AddReagent(2319, 6) -- Medium Leather
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(2457, 1) -- Elixir of Minor Agility
    :Save()

module:NewCraft(9145, "Fletcher's Gloves", 125, {SpellSource.Trainer})
    :SetResult(7348)
    :AddReagent(2319, 8) -- Medium Leather
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(5116, 4) -- Long Tail Feather
    :Save()

module:NewCraft(9146, "Herbalist's Gloves", 135, {})
    :SetResult(7349)
    :AddRecipe(7361, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(2319, 8) -- Medium Leather
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(3356, 4) -- Kingsblood
    :Save()

module:NewCraft(9147, "Earthen Leather Shoulders", 135, {})
    :SetResult(7352)
    :AddRecipe(7362, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2319, 6) -- Medium Leather
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(7067, 1) -- Elemental Earth
    :Save()

module:NewCraft(9148, "Pilferer's Gloves", 140, {})
    :SetResult(7358)
    :AddRecipe(7363, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2319, 10) -- Medium Leather
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(5373, 2) -- Lucky Charm
    :Save()

module:NewCraft(9149, "Heavy Earthen Gloves", 145, {})
    :SetResult(7359)
    :AddRecipe(7364, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(2319, 12) -- Medium Leather
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(2997, 2) -- Bolt of Woolen Cloth
    :AddReagent(7067, 2) -- Elemental Earth
    :Save()

module:NewCraft(9193, "Heavy Quiver", 150, {SpellSource.Trainer})
    :SetResult(7371)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4234, 8) -- Heavy Leather
    :Save()

module:NewCraft(9194, "Heavy Leather Ammo Pouch", 150, {SpellSource.Trainer})
    :SetResult(7372)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4234, 8) -- Heavy Leather
    :Save()

module:NewCraft(9195, "Dusky Leather Leggings", 165, {})
    :SetResult(7373)
    :AddRecipe(7449, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(2325, 1) -- Black Dye
    :AddReagent(4234, 10) -- Heavy Leather
    :Save()

module:NewCraft(9196, "Dusky Leather Armor", 175, {SpellSource.Trainer})
    :SetResult(7374)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(3824, 1) -- Shadow Oil
    :AddReagent(4234, 10) -- Heavy Leather
    :Save()

module:NewCraft(9197, "Green Whelp Armor", 175, {})
    :SetResult(7375)
    :AddRecipe(7450, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4234, 10) -- Heavy Leather
    :AddReagent(7392, 4) -- Green Whelp Scale
    :Save()

module:NewCraft(9198, "Frost Leather Cloak", 180, {SpellSource.Trainer})
    :SetResult(7377)
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4234, 6) -- Heavy Leather
    :AddReagent(7067, 2) -- Elemental Earth
    :AddReagent(7070, 2) -- Elemental Water
    :Save()

module:NewCraft(9201, "Dusky Bracers", 180, {SpellSource.Trainer})
    :SetResult(7378)
    :AddReagent(2325, 1) -- Black Dye
    :AddReagent(4234, 16) -- Heavy Leather
    :AddReagent(4291, 2) -- Silken Thread
    :Save()

module:NewCraft(9202, "Green Whelp Bracers", 190, {})
    :SetResult(7386)
    :AddRecipe(7451, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(4234, 8) -- Heavy Leather
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(7392, 6) -- Green Whelp Scale
    :Save()

module:NewCraft(9206, "Dusky Belt", 195, {SpellSource.Trainer})
    :SetResult(7387)
    :AddReagent(2325, 2) -- Black Dye
    :AddReagent(4234, 10) -- Heavy Leather
    :AddReagent(4305, 2) -- Bolt of Silk Cloth
    :AddReagent(7071, 1) -- Iron Buckle
    :Save()

module:NewCraft(9207, "Dusky Boots", 200, {})
    :SetResult(7390)
    :AddRecipe(7452, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3824, 1) -- Shadow Oil
    :AddReagent(4234, 8) -- Heavy Leather
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(7428, 2) -- Shadowcat Hide
    :Save()

module:NewCraft(9208, "Swift Boots", 200, {})
    :SetResult(7391)
    :AddRecipe(7453, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2459, 2) -- Swiftness Potion
    :AddReagent(4234, 10) -- Heavy Leather
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4337, 2) -- Thick Spider's Silk
    :Save()

module:NewCraft(10482, "Cured Thick Hide", 180, {SpellSource.Trainer})
    :SetResult(8172)
    :AddReagent(8150, 1) -- Deeprock Salt
    :AddReagent(8169, 1) -- Thick Hide
    :Save()

module:NewCraft(10487, "Thick Armor Kit", 200, {SpellSource.Trainer})
    :SetResult(8173)
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(4304, 5) -- Thick Leather
    :Save()

module:NewCraft(10490, "Comfortable Leather Hat", 200, {})
    :SetResult(8174)
    :AddRecipe(8384, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(4234, 12) -- Heavy Leather
    :AddReagent(4236, 2) -- Cured Heavy Hide
    :AddReagent(4291, 2) -- Silken Thread
    :Save()

module:NewCraft(10499, "Nightscape Tunic", 205, {SpellSource.Trainer})
    :SetResult(8175)
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(4304, 7) -- Thick Leather
    :Save()

module:NewCraft(10507, "Nightscape Headband", 205, {SpellSource.Trainer})
    :SetResult(8176)
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(4304, 5) -- Thick Leather
    :Save()

module:NewCraft(10509, "Turtle Scale Gloves", 205, {})
    :SetResult(8187)
    :AddRecipe(8385, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Vendor})
    :AddReagent(4304, 6) -- Thick Leather
    :AddReagent(8167, 8) -- Turtle Scale
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(10511, "Turtle Scale Breastplate", 210, {SpellSource.Trainer})
    :SetResult(8189)
    :AddReagent(4304, 6) -- Thick Leather
    :AddReagent(8167, 12) -- Turtle Scale
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(10516, "Nightscape Shoulders", 210, {})
    :SetResult(8192)
    :AddRecipe(8409, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(4291, 3) -- Silken Thread
    :AddReagent(4304, 8) -- Thick Leather
    :AddReagent(4338, 6) -- Mageweave Cloth
    :Save()

module:NewCraft(10518, "Turtle Scale Bracers", 210, {SpellSource.Trainer})
    :SetResult(8198)
    :AddReagent(4304, 8) -- Thick Leather
    :AddReagent(8167, 12) -- Turtle Scale
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(10520, "Big Voodoo Robe", 215, {})
    :SetResult(8200)
    :AddRecipe(8386, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(4304, 10) -- Thick Leather
    :AddReagent(8151, 4) -- Flask of Mojo
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(10525, "Tough Scorpid Breastplate", 220, {})
    :SetResult(8203)
    :AddRecipe(8395, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(4291, 4) -- Silken Thread
    :AddReagent(4304, 12) -- Thick Leather
    :AddReagent(8154, 12) -- Scorpid Scale
    :Save()

module:NewCraft(10529, "Wild Leather Shoulders", 220, {})
    :SetResult(8210)
    :AddRecipe(8403, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(4304, 10) -- Thick Leather
    :AddReagent(8153, 1) -- Wildvine
    :AddReagent(8172, 1) -- Cured Thick Hide
    :Save()

module:NewCraft(10531, "Big Voodoo Mask", 220, {})
    :SetResult(8201)
    :AddRecipe(8387, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(4304, 8) -- Thick Leather
    :AddReagent(8151, 6) -- Flask of Mojo
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(10533, "Tough Scorpid Bracers", 220, {})
    :SetResult(8205)
    :AddRecipe(8397, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(4304, 10) -- Thick Leather
    :AddReagent(8154, 4) -- Scorpid Scale
    :Save()

module:NewCraft(10542, "Tough Scorpid Gloves", 225, {})
    :SetResult(8204)
    :AddRecipe(8398, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(4291, 2) -- Silken Thread
    :AddReagent(4304, 6) -- Thick Leather
    :AddReagent(8154, 8) -- Scorpid Scale
    :Save()

module:NewCraft(10544, "Wild Leather Vest", 225, {})
    :SetResult(8211)
    :AddRecipe(8404, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(4304, 12) -- Thick Leather
    :AddReagent(8153, 2) -- Wildvine
    :AddReagent(8172, 1) -- Cured Thick Hide
    :Save()

module:NewCraft(10546, "Wild Leather Helmet", 225, {})
    :SetResult(8214)
    :AddRecipe(8405, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(4304, 10) -- Thick Leather
    :AddReagent(8153, 2) -- Wildvine
    :AddReagent(8172, 1) -- Cured Thick Hide
    :Save()

module:NewCraft(10548, "Nightscape Pants", 235, {SpellSource.Trainer})
    :SetResult(8193)
    :AddReagent(4291, 4) -- Silken Thread
    :AddReagent(4304, 14) -- Thick Leather
    :Save()

module:NewCraft(10552, "Turtle Scale Helm", 230, {SpellSource.Trainer})
    :SetResult(8191)
    :AddReagent(4304, 14) -- Thick Leather
    :AddReagent(8167, 24) -- Turtle Scale
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(10554, "Tough Scorpid Boots", 235, {})
    :SetResult(8209)
    :AddRecipe(8399, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(4291, 6) -- Silken Thread
    :AddReagent(4304, 12) -- Thick Leather
    :AddReagent(8154, 12) -- Scorpid Scale
    :Save()

module:NewCraft(10556, "Turtle Scale Leggings", 235, {SpellSource.Trainer})
    :SetResult(8185)
    :AddReagent(4304, 14) -- Thick Leather
    :AddReagent(8167, 28) -- Turtle Scale
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(10558, "Nightscape Boots", 235, {SpellSource.Trainer})
    :SetResult(8197)
    :AddReagent(4304, 16) -- Thick Leather
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(10560, "Big Voodoo Pants", 240, {})
    :SetResult(8202)
    :AddRecipe(8389, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(4304, 10) -- Thick Leather
    :AddReagent(8152, 6) -- Flask of Big Mojo
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(10562, "Big Voodoo Cloak", 240, {})
    :SetResult(8216)
    :AddRecipe(8390, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(4304, 14) -- Thick Leather
    :AddReagent(8152, 4) -- Flask of Big Mojo
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(10564, "Tough Scorpid Shoulders", 240, {})
    :SetResult(8207)
    :AddRecipe(8400, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(4304, 12) -- Thick Leather
    :AddReagent(8154, 16) -- Scorpid Scale
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(10566, "Wild Leather Boots", 245, {})
    :SetResult(8213)
    :AddRecipe(8406, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(4304, 14) -- Thick Leather
    :AddReagent(8153, 4) -- Wildvine
    :AddReagent(8172, 2) -- Cured Thick Hide
    :Save()

module:NewCraft(10568, "Tough Scorpid Leggings", 245, {})
    :SetResult(8206)
    :AddRecipe(8401, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(4304, 14) -- Thick Leather
    :AddReagent(8154, 8) -- Scorpid Scale
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(10570, "Tough Scorpid Helm", 250, {})
    :SetResult(8208)
    :AddRecipe(8402, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(4304, 10) -- Thick Leather
    :AddReagent(8154, 20) -- Scorpid Scale
    :AddReagent(8343, 2) -- Heavy Silken Thread
    :Save()

module:NewCraft(10572, "Wild Leather Leggings", 250, {})
    :SetResult(8212)
    :AddRecipe(8407, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(4304, 16) -- Thick Leather
    :AddReagent(8153, 6) -- Wildvine
    :AddReagent(8172, 2) -- Cured Thick Hide
    :Save()

module:NewCraft(10574, "Wild Leather Cloak", 250, {})
    :SetResult(8215)
    :AddRecipe(8408, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(4304, 16) -- Thick Leather
    :AddReagent(8153, 6) -- Wildvine
    :AddReagent(8172, 2) -- Cured Thick Hide
    :Save()

module:NewCraft(10619, "Dragonscale Gauntlets", 225, {SpellSource.Trainer})
    :SetResult(8347)
    :AddReagent(4304, 24) -- Thick Leather
    :AddReagent(8165, 12) -- Worn Dragonscale
    :AddReagent(8172, 2) -- Cured Thick Hide
    :AddReagent(8343, 4) -- Heavy Silken Thread
    :Save()

module:NewCraft(10621, "Wolfshead Helm", 225, {SpellSource.Trainer})
    :SetResult(8345)
    :AddReagent(4304, 18) -- Thick Leather
    :AddReagent(8146, 8) -- Wicked Claw
    :AddReagent(8172, 2) -- Cured Thick Hide
    :AddReagent(8343, 4) -- Heavy Silken Thread
    :AddReagent(8368, 2) -- Thick Wolfhide
    :Save()

module:NewCraft(10630, "Gauntlets of the Sea", 230, {SpellSource.Trainer})
    :SetResult(8346)
    :AddReagent(4304, 20) -- Thick Leather
    :AddReagent(7075, 2) -- Core of Earth
    :AddReagent(7079, 8) -- Globe of Water
    :AddReagent(8172, 1) -- Cured Thick Hide
    :AddReagent(8343, 4) -- Heavy Silken Thread
    :Save()

module:NewCraft(10632, "Helm of Fire", 250, {SpellSource.Trainer})
    :SetResult(8348)
    :AddReagent(4304, 40) -- Thick Leather
    :AddReagent(7075, 4) -- Core of Earth
    :AddReagent(7077, 12) -- Heart of Fire
    :AddReagent(8172, 2) -- Cured Thick Hide
    :AddReagent(8343, 4) -- Heavy Silken Thread
    :Save()

module:NewCraft(10647, "Feathered Breastplate", 250, {SpellSource.Trainer})
    :SetResult(8349)
    :AddReagent(4304, 40) -- Thick Leather
    :AddReagent(7971, 2) -- Black Pearl
    :AddReagent(8168, 40) -- Jet Black Feather
    :AddReagent(8172, 4) -- Cured Thick Hide
    :AddReagent(8343, 4) -- Heavy Silken Thread
    :Save()

module:NewCraft(10650, "Dragonscale Breastplate", 255, {SpellSource.Trainer})
    :SetResult(8367)
    :AddReagent(4304, 40) -- Thick Leather
    :AddReagent(8165, 30) -- Worn Dragonscale
    :AddReagent(8172, 4) -- Cured Thick Hide
    :AddReagent(8343, 4) -- Heavy Silken Thread
    :Save()

module:NewCraft(14930, "Quickdraw Quiver", 225, {SpellSource.Trainer})
    :SetResult(8217)
    :AddReagent(4291, 4) -- Silken Thread
    :AddReagent(4304, 12) -- Thick Leather
    :AddReagent(8169, 1) -- Thick Hide
    :AddReagent(8949, 1) -- Elixir of Agility
    :Save()

module:NewCraft(14932, "Thick Leather Ammo Pouch", 225, {SpellSource.Trainer})
    :SetResult(8218)
    :AddReagent(4291, 6) -- Silken Thread
    :AddReagent(4304, 10) -- Thick Leather
    :AddReagent(8172, 1) -- Cured Thick Hide
    :AddReagent(8951, 1) -- Elixir of Greater Defense
    :Save()

module:NewCraft(19047, "Cured Rugged Hide", 230, {SpellSource.Trainer})
    :SetResult(15407)
    :AddReagent(8171, 1) -- Rugged Hide
    :AddReagent(15409, 1) -- Refined Deeprock Salt
    :Save()

module:NewCraft(19048, "Heavy Scorpid Bracers", 255, {})
    :SetResult(15077)
    :AddRecipe(15724, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15408, 4) -- Heavy Scorpid Scale
    :Save()

module:NewCraft(19049, "Wicked Leather Gauntlets", 260, {})
    :SetResult(15083)
    :AddRecipe(15725, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2325, 1) -- Black Dye
    :AddReagent(8170, 8) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(19050, "Green Dragonscale Breastplate", 260, {})
    :SetResult(15045)
    :AddRecipe(15726, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 20) -- Rugged Leather
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(15412, 25) -- Green Dragonscale
    :Save()

module:NewCraft(19051, "Heavy Scorpid Vest", 265, {})
    :SetResult(15076)
    :AddRecipe(15727, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8170, 6) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15408, 6) -- Heavy Scorpid Scale
    :Save()

module:NewCraft(19052, "Wicked Leather Bracers", 265, {})
    :SetResult(15084)
    :AddRecipe(15728, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(2325, 1) -- Black Dye
    :AddReagent(8170, 8) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(19053, "Chimeric Gloves", 265, {})
    :SetResult(15074)
    :AddRecipe(15729, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 6) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15423, 6) -- Chimera Leather
    :Save()

module:NewCraft(19054, "Red Dragonscale Breastplate", 300, {})
    :SetResult(15047)
    :AddRecipe(15730, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(8170, 40) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15414, 30) -- Red Dragonscale
    :Save()

module:NewCraft(19055, "Runic Leather Gauntlets", 270, {})
    :SetResult(15091)
    :AddRecipe(15731, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8170, 10) -- Rugged Leather
    :AddReagent(14047, 6) -- Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(19058, "Rugged Armor Kit", 230, {SpellSource.Trainer})
    :SetResult(15564)
    :AddReagent(8170, 5) -- Rugged Leather
    :Save()

module:NewCraft(19059, "Volcanic Leggings", 270, {})
    :SetResult(15054)
    :AddRecipe(15732, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7075, 1) -- Core of Earth
    :AddReagent(7078, 1) -- Essence of Fire
    :AddReagent(8170, 6) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(19060, "Green Dragonscale Leggings", 270, {})
    :SetResult(15046)
    :AddRecipe(15733, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(8170, 20) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15412, 25) -- Green Dragonscale
    :Save()

module:NewCraft(19061, "Living Shoulders", 270, {})
    :SetResult(15061)
    :AddRecipe(15734, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 12) -- Rugged Leather
    :AddReagent(12803, 4) -- Living Essence
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(19062, "Ironfeather Shoulders", 270, {})
    :SetResult(15067)
    :AddRecipe(15735, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(1529, 2) -- Jade
    :AddReagent(8170, 24) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15420, 80) -- Ironfeather
    :Save()

module:NewCraft(19063, "Chimeric Boots", 275, {})
    :SetResult(15073)
    :AddRecipe(15737, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15423, 8) -- Chimera Leather
    :Save()

module:NewCraft(19064, "Heavy Scorpid Gauntlets", 275, {})
    :SetResult(15078)
    :AddRecipe(15738, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8170, 6) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15408, 8) -- Heavy Scorpid Scale
    :Save()

module:NewCraft(19065, "Runic Leather Bracers", 275, {})
    :SetResult(15092)
    :AddRecipe(15739, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7971, 1) -- Black Pearl
    :AddReagent(8170, 6) -- Rugged Leather
    :AddReagent(14047, 6) -- Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(19066, "Frostsaber Boots", 275, {})
    :SetResult(15071)
    :AddRecipe(15740, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15422, 6) -- Frostsaber Leather
    :Save()

module:NewCraft(19067, "Stormshroud Pants", 275, {})
    :SetResult(15057)
    :AddRecipe(15741, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7080, 2) -- Essence of Water
    :AddReagent(7082, 2) -- Essence of Air
    :AddReagent(8170, 16) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(19068, "Warbear Harness", 275, {})
    :SetResult(15064)
    :AddRecipe(15742, Quality.Common, {RecipeSource.Drop})
    :AddRecipe(20253, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 28) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15419, 12) -- Warbear Leather
    :Save()

module:NewCraft(19070, "Heavy Scorpid Belt", 280, {})
    :SetResult(15082)
    :AddRecipe(15743, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8170, 6) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15408, 8) -- Heavy Scorpid Scale
    :Save()

module:NewCraft(19071, "Wicked Leather Headband", 280, {})
    :SetResult(15086)
    :AddRecipe(15744, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(2325, 1) -- Black Dye
    :AddReagent(8170, 12) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(19072, "Runic Leather Belt", 280, {})
    :SetResult(15093)
    :AddRecipe(15745, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8170, 12) -- Rugged Leather
    :AddReagent(14047, 10) -- Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(19073, "Chimeric Leggings", 280, {})
    :SetResult(15072)
    :AddRecipe(15746, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8170, 8) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15423, 8) -- Chimera Leather
    :Save()

module:NewCraft(19074, "Frostsaber Leggings", 285, {})
    :SetResult(15069)
    :AddRecipe(15747, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8170, 6) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15422, 8) -- Frostsaber Leather
    :Save()

module:NewCraft(19075, "Heavy Scorpid Leggings", 285, {})
    :SetResult(15079)
    :AddRecipe(15748, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8170, 8) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15408, 12) -- Heavy Scorpid Scale
    :Save()

module:NewCraft(19076, "Volcanic Breastplate", 285, {})
    :SetResult(15053)
    :AddRecipe(15749, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7076, 1) -- Essence of Earth
    :AddReagent(7078, 1) -- Essence of Fire
    :AddReagent(8170, 8) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(19077, "Blue Dragonscale Breastplate", 285, {})
    :SetResult(15048)
    :AddRecipe(15751, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 28) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :AddReagent(15415, 30) -- Blue Dragonscale
    :Save()

module:NewCraft(19078, "Living Leggings", 285, {})
    :SetResult(15060)
    :AddRecipe(15752, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(8170, 16) -- Rugged Leather
    :AddReagent(12803, 6) -- Living Essence
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :Save()

module:NewCraft(19079, "Stormshroud Armor", 285, {})
    :SetResult(15056)
    :AddRecipe(15753, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7080, 3) -- Essence of Water
    :AddReagent(7082, 3) -- Essence of Air
    :AddReagent(8170, 16) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :Save()

module:NewCraft(19080, "Warbear Woolies", 285, {})
    :SetResult(15065)
    :AddRecipe(15754, Quality.Common, {RecipeSource.Drop})
    :AddRecipe(20254, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 24) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15419, 14) -- Warbear Leather
    :Save()

module:NewCraft(19081, "Chimeric Vest", 290, {})
    :SetResult(15075)
    :AddRecipe(15755, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8170, 10) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15423, 10) -- Chimera Leather
    :Save()

module:NewCraft(19082, "Runic Leather Headband", 290, {})
    :SetResult(15094)
    :AddRecipe(15756, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 14) -- Rugged Leather
    :AddReagent(14047, 10) -- Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(19083, "Wicked Leather Pants", 290, {})
    :SetResult(15087)
    :AddRecipe(15757, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2325, 3) -- Black Dye
    :AddReagent(8170, 16) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :Save()

module:NewCraft(19084, "Devilsaur Gauntlets", 290, {})
    :SetResult(15063)
    :AddRecipe(15758, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 30) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15417, 8) -- Devilsaur Leather
    :Save()

module:NewCraft(19085, "Black Dragonscale Breastplate", 290, {})
    :SetResult(15050)
    :AddRecipe(15759, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 40) -- Rugged Leather
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :AddReagent(15416, 60) -- Black Dragonscale
    :Save()

module:NewCraft(19086, "Ironfeather Breastplate", 290, {})
    :SetResult(15066)
    :AddRecipe(15760, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(1529, 1) -- Jade
    :AddReagent(8170, 40) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :AddReagent(15420, 120) -- Ironfeather
    :Save()

module:NewCraft(19087, "Frostsaber Gloves", 295, {})
    :SetResult(15070)
    :AddRecipe(15761, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8170, 6) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15422, 10) -- Frostsaber Leather
    :Save()

module:NewCraft(19088, "Heavy Scorpid Helm", 295, {})
    :SetResult(15080)
    :AddRecipe(15762, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 8) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :AddReagent(15408, 12) -- Heavy Scorpid Scale
    :Save()

module:NewCraft(19089, "Blue Dragonscale Shoulders", 295, {})
    :SetResult(15049)
    :AddRecipe(15763, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(8170, 28) -- Rugged Leather
    :AddReagent(12810, 2) -- Enchanted Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :AddReagent(15415, 30) -- Blue Dragonscale
    :Save()

module:NewCraft(19090, "Stormshroud Shoulders", 295, {})
    :SetResult(15058)
    :AddRecipe(15764, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7080, 3) -- Essence of Water
    :AddReagent(7082, 3) -- Essence of Air
    :AddReagent(8170, 12) -- Rugged Leather
    :AddReagent(12810, 2) -- Enchanted Leather
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(19091, "Runic Leather Pants", 300, {})
    :SetResult(15095)
    :AddRecipe(15765, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8170, 18) -- Rugged Leather
    :AddReagent(12810, 2) -- Enchanted Leather
    :AddReagent(14047, 12) -- Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :Save()

module:NewCraft(19092, "Wicked Leather Belt", 300, {})
    :SetResult(15088)
    :AddRecipe(15768, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(2325, 2) -- Black Dye
    :AddReagent(8170, 14) -- Rugged Leather
    :AddReagent(14341, 2) -- Rune Thread
    :Save()

module:NewCraft(19093, "Onyxia Scale Cloak", 300, {SpellSource.Quest})
    :SetResult(15138)
    :AddReagent(8170, 8) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15410, 3) -- Onyxia Scale
    :Save()

module:NewCraft(19094, "Black Dragonscale Shoulders", 300, {})
    :SetResult(15051)
    :AddRecipe(15770, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(8170, 44) -- Rugged Leather
    :AddReagent(12810, 2) -- Enchanted Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :AddReagent(15416, 45) -- Black Dragonscale
    :Save()

module:NewCraft(19095, "Living Breastplate", 300, {})
    :SetResult(15059)
    :AddRecipe(15771, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(8170, 16) -- Rugged Leather
    :AddReagent(12803, 8) -- Living Essence
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(14342, 2) -- Mooncloth
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :Save()

module:NewCraft(19097, "Devilsaur Leggings", 300, {})
    :SetResult(15062)
    :AddRecipe(15772, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(8170, 30) -- Rugged Leather
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :AddReagent(15417, 14) -- Devilsaur Leather
    :Save()

module:NewCraft(19098, "Wicked Leather Armor", 300, {})
    :SetResult(15085)
    :AddRecipe(15773, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(2325, 4) -- Black Dye
    :AddReagent(8170, 20) -- Rugged Leather
    :AddReagent(14256, 6) -- Felcloth
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :Save()

module:NewCraft(19100, "Heavy Scorpid Shoulders", 300, {})
    :SetResult(15081)
    :AddRecipe(15774, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8170, 14) -- Rugged Leather
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :AddReagent(15408, 14) -- Heavy Scorpid Scale
    :Save()

module:NewCraft(19101, "Volcanic Shoulders", 300, {})
    :SetResult(15055)
    :AddRecipe(15775, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7076, 1) -- Essence of Earth
    :AddReagent(7078, 1) -- Essence of Fire
    :AddReagent(8170, 10) -- Rugged Leather
    :AddReagent(14341, 2) -- Rune Thread
    :Save()

module:NewCraft(19102, "Runic Leather Armor", 300, {})
    :SetResult(15090)
    :AddRecipe(15776, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8170, 22) -- Rugged Leather
    :AddReagent(12810, 4) -- Enchanted Leather
    :AddReagent(14047, 16) -- Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :Save()

module:NewCraft(19103, "Runic Leather Shoulders", 300, {})
    :SetResult(15096)
    :AddRecipe(15777, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8170, 16) -- Rugged Leather
    :AddReagent(12810, 4) -- Enchanted Leather
    :AddReagent(14047, 18) -- Runecloth
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :Save()

module:NewCraft(19104, "Frostsaber Tunic", 300, {})
    :SetResult(15068)
    :AddRecipe(15779, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8170, 12) -- Rugged Leather
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :AddReagent(15422, 12) -- Frostsaber Leather
    :Save()

module:NewCraft(19107, "Black Dragonscale Leggings", 300, {})
    :SetResult(15052)
    :AddRecipe(15781, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(8170, 40) -- Rugged Leather
    :AddReagent(12810, 4) -- Enchanted Leather
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :AddReagent(15416, 60) -- Black Dragonscale
    :Save()

module:NewCraft(20648, "Medium Leather", 100, {SpellSource.Trainer})
    :SetResult(2319)
    :AddReagent(2318, 4) -- Light Leather
    :Save()

module:NewCraft(20649, "Heavy Leather", 150, {SpellSource.Trainer})
    :SetResult(4234)
    :AddReagent(2319, 5) -- Medium Leather
    :Save()

module:NewCraft(20650, "Thick Leather", 180, {SpellSource.Trainer})
    :SetResult(4304)
    :AddReagent(4234, 6) -- Heavy Leather
    :Save()

module:NewCraft(20853, "Corehound Boots", 295, {})
    :SetResult(16982)
    :AddRecipe(17022, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(17010, 6) -- Fiery Core
    :AddReagent(17011, 2) -- Lava Core
    :AddReagent(17012, 20) -- Core Leather
    :Save()

module:NewCraft(20854, "Molten Helm", 300, {})
    :SetResult(16983)
    :AddRecipe(17023, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(17010, 3) -- Fiery Core
    :AddReagent(17011, 6) -- Lava Core
    :AddReagent(17012, 15) -- Core Leather
    :Save()

module:NewCraft(20855, "Black Dragonscale Boots", 300, {})
    :SetResult(16984)
    :AddRecipe(17025, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12810, 6) -- Enchanted Leather
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(15416, 30) -- Black Dragonscale
    :AddReagent(17010, 4) -- Fiery Core
    :AddReagent(17011, 3) -- Lava Core
    :Save()

module:NewCraft(21943, "Gloves of the Greatfather", 190, {})
    :SetResult(17721)
    :AddRecipe(17722, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(4234, 8) -- Heavy Leather
    :AddReagent(4291, 1) -- Silken Thread
    :AddReagent(7067, 4) -- Elemental Earth
    :Save()

module:NewCraft(22331, "Rugged Leather", 230, {SpellSource.Trainer})
    :SetResult(8170)
    :AddReagent(4304, 6) -- Thick Leather
    :Save()

module:NewCraft(22711, "Shadowskin Gloves", 200, {})
    :SetResult(18238)
    :AddRecipe(18239, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(1210, 4) -- Shadowgem
    :AddReagent(4236, 2) -- Cured Heavy Hide
    :AddReagent(4304, 6) -- Thick Leather
    :AddReagent(7428, 8) -- Shadowcat Hide
    :AddReagent(7971, 2) -- Black Pearl
    :AddReagent(8343, 1) -- Heavy Silken Thread
    :Save()

module:NewCraft(22727, "Core Armor Kit", 300, {})
    :SetResult(18251)
    :AddRecipe(18252, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(17012, 3) -- Core Leather
    :Save()

module:NewCraft(22815, "Gordok Ogre Suit", 285, {SpellSource.Quest})
    :SetResult(18258)
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(14048, 2) -- Bolt of Runecloth
    :AddReagent(14341, 1) -- Rune Thread
    :AddReagent(18240, 1) -- Ogre Tannin
    :Save()

module:NewCraft(22921, "Girdle of Insight", 300, {})
    :SetResult(18504)
    :AddRecipe(18514, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8170, 12) -- Rugged Leather
    :AddReagent(12804, 12) -- Powerful Mojo
    :AddReagent(14341, 4) -- Rune Thread
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :Save()

module:NewCraft(22922, "Mongoose Boots", 300, {})
    :SetResult(18506)
    :AddRecipe(18515, Quality.Rare, {RecipeSource.Chest})
    :AddReagent(7082, 6) -- Essence of Air
    :AddReagent(8170, 12) -- Rugged Leather
    :AddReagent(11754, 4) -- Black Diamond
    :AddReagent(14341, 4) -- Rune Thread
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :Save()

module:NewCraft(22923, "Swift Flight Bracers", 300, {})
    :SetResult(18508)
    :AddRecipe(18516, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8170, 12) -- Rugged Leather
    :AddReagent(14341, 4) -- Rune Thread
    :AddReagent(15407, 4) -- Cured Rugged Hide
    :AddReagent(15420, 60) -- Ironfeather
    :AddReagent(18512, 8) -- Larval Acid
    :Save()

module:NewCraft(22926, "Chromatic Cloak", 300, {})
    :SetResult(18509)
    :AddRecipe(18517, Quality.Epic, {RecipeSource.Chest})
    :AddReagent(8170, 30) -- Rugged Leather
    :AddReagent(12607, 12) -- Brilliant Chromatic Scale
    :AddReagent(14341, 8) -- Rune Thread
    :AddReagent(15407, 5) -- Cured Rugged Hide
    :AddReagent(15414, 30) -- Red Dragonscale
    :AddReagent(15416, 30) -- Black Dragonscale
    :Save()

module:NewCraft(22927, "Hide of the Wild", 300, {})
    :SetResult(18510)
    :AddRecipe(18518, Quality.Epic, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7080, 10) -- Essence of Water
    :AddReagent(8170, 30) -- Rugged Leather
    :AddReagent(12803, 12) -- Living Essence
    :AddReagent(14341, 8) -- Rune Thread
    :AddReagent(15407, 3) -- Cured Rugged Hide
    :AddReagent(18512, 8) -- Larval Acid
    :Save()

module:NewCraft(22928, "Shifting Cloak", 300, {})
    :SetResult(18511)
    :AddRecipe(18519, Quality.Epic, {RecipeSource.Chest})
    :AddReagent(7082, 12) -- Essence of Air
    :AddReagent(8170, 30) -- Rugged Leather
    :AddReagent(12753, 4) -- Skin of Shadow
    :AddReagent(12809, 8) -- Guardian Stone
    :AddReagent(14341, 8) -- Rune Thread
    :AddReagent(15407, 4) -- Cured Rugged Hide
    :Save()

module:NewCraft(23190, "Heavy Leather Ball", 150, {})
    :SetResult(18662)
    :AddRecipe(18731, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2321, 1) -- Fine Thread
    :AddReagent(4234, 2) -- Heavy Leather
    :Save()

module:NewCraft(23399, "Barbaric Bracers", 155, {})
    :SetResult(18948)
    :AddRecipe(18949, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4234, 8) -- Heavy Leather
    :AddReagent(4236, 2) -- Cured Heavy Hide
    :AddReagent(4461, 1) -- Raptor Hide
    :AddReagent(5498, 4) -- Small Lustrous Pearl
    :AddReagent(5637, 4) -- Large Fang
    :Save()

module:NewCraft(23703, "Might of the Timbermaw", 290, {})
    :SetResult(19044)
    :AddRecipe(19326, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8170, 30) -- Rugged Leather
    :AddReagent(12803, 4) -- Living Essence
    :AddReagent(12804, 2) -- Powerful Mojo
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :Save()

module:NewCraft(23704, "Timbermaw Brawlers", 300, {})
    :SetResult(19049)
    :AddRecipe(19327, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12803, 6) -- Living Essence
    :AddReagent(12804, 6) -- Powerful Mojo
    :AddReagent(12810, 8) -- Enchanted Leather
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :Save()

module:NewCraft(23705, "Dawn Treaders", 290, {})
    :SetResult(19052)
    :AddRecipe(19328, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7080, 4) -- Essence of Water
    :AddReagent(8170, 30) -- Rugged Leather
    :AddReagent(12809, 2) -- Guardian Stone
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :Save()

module:NewCraft(23706, "Golden Mantle of the Dawn", 300, {})
    :SetResult(19058)
    :AddRecipe(19329, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12809, 4) -- Guardian Stone
    :AddReagent(12810, 8) -- Enchanted Leather
    :AddReagent(12811, 2) -- Righteous Orb
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :Save()

module:NewCraft(23707, "Lava Belt", 300, {})
    :SetResult(19149)
    :AddRecipe(19330, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(15407, 4) -- Cured Rugged Hide
    :AddReagent(17011, 5) -- Lava Core
    :Save()

module:NewCraft(23708, "Chromatic Gauntlets", 300, {})
    :SetResult(19157)
    :AddRecipe(19331, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12607, 4) -- Brilliant Chromatic Scale
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(15407, 4) -- Cured Rugged Hide
    :AddReagent(17010, 5) -- Fiery Core
    :AddReagent(17011, 2) -- Lava Core
    :AddReagent(17012, 4) -- Core Leather
    :Save()

module:NewCraft(23709, "Corehound Belt", 300, {})
    :SetResult(19162)
    :AddRecipe(19332, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12810, 10) -- Enchanted Leather
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(15407, 4) -- Cured Rugged Hide
    :AddReagent(17010, 8) -- Fiery Core
    :AddReagent(17012, 12) -- Core Leather
    :Save()

module:NewCraft(23710, "Molten Belt", 300, {})
    :SetResult(19163)
    :AddRecipe(19333, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7076, 6) -- Essence of Earth
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(15407, 4) -- Cured Rugged Hide
    :AddReagent(17010, 2) -- Fiery Core
    :AddReagent(17011, 7) -- Lava Core
    :Save()

module:NewCraft(24121, "Primal Batskin Jerkin", 300, {})
    :SetResult(19685)
    :AddRecipe(19769, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12803, 4) -- Living Essence
    :AddReagent(14341, 4) -- Rune Thread
    :AddReagent(15407, 5) -- Cured Rugged Hide
    :AddReagent(19767, 14) -- Primal Bat Leather
    :Save()

module:NewCraft(24122, "Primal Batskin Gloves", 300, {})
    :SetResult(19686)
    :AddRecipe(19770, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12803, 4) -- Living Essence
    :AddReagent(14341, 3) -- Rune Thread
    :AddReagent(15407, 4) -- Cured Rugged Hide
    :AddReagent(19767, 10) -- Primal Bat Leather
    :Save()

module:NewCraft(24123, "Primal Batskin Bracers", 300, {})
    :SetResult(19687)
    :AddRecipe(19771, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12803, 4) -- Living Essence
    :AddReagent(14341, 3) -- Rune Thread
    :AddReagent(15407, 3) -- Cured Rugged Hide
    :AddReagent(19767, 8) -- Primal Bat Leather
    :Save()

module:NewCraft(24124, "Blood Tiger Breastplate", 300, {})
    :SetResult(19688)
    :AddRecipe(19772, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(14341, 3) -- Rune Thread
    :AddReagent(15407, 3) -- Cured Rugged Hide
    :AddReagent(19726, 2) -- Bloodvine
    :AddReagent(19768, 35) -- Primal Tiger Leather
    :Save()

module:NewCraft(24125, "Blood Tiger Shoulders", 300, {})
    :SetResult(19689)
    :AddRecipe(19773, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(14341, 3) -- Rune Thread
    :AddReagent(15407, 3) -- Cured Rugged Hide
    :AddReagent(19726, 2) -- Bloodvine
    :AddReagent(19768, 25) -- Primal Tiger Leather
    :Save()

module:NewCraft(24654, "Blue Dragonscale Leggings", 300, {SpellSource.Trainer})
    :SetResult(20295)
    :AddReagent(8170, 28) -- Rugged Leather
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :AddReagent(15415, 36) -- Blue Dragonscale
    :Save()

module:NewCraft(24655, "Green Dragonscale Gauntlets", 280, {SpellSource.Trainer})
    :SetResult(20296)
    :AddReagent(8170, 20) -- Rugged Leather
    :AddReagent(14341, 2) -- Rune Thread
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :AddReagent(15412, 30) -- Green Dragonscale
    :Save()

module:NewCraft(24703, "Dreamscale Breastplate", 300, {})
    :SetResult(20380)
    :AddRecipe(20382, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12803, 4) -- Living Essence
    :AddReagent(12810, 12) -- Enchanted Leather
    :AddReagent(14227, 6) -- Ironweb Spider Silk
    :AddReagent(15407, 4) -- Cured Rugged Hide
    :AddReagent(20381, 12) -- Dreamscale
    :Save()

module:NewCraft(24846, "Spitfire Bracers", 300, {})
    :SetResult(20481)
    :AddRecipe(20506, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7078, 2) -- Essence of Fire
    :AddReagent(20498, 20) -- Silithid Chitin
    :AddReagent(20500, 1) -- Light Silithid Carapace
    :Save()

module:NewCraft(24847, "Spitfire Gauntlets", 300, {})
    :SetResult(20480)
    :AddRecipe(20507, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7078, 2) -- Essence of Fire
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :AddReagent(20498, 30) -- Silithid Chitin
    :AddReagent(20500, 2) -- Light Silithid Carapace
    :Save()

module:NewCraft(24848, "Spitfire Breastplate", 300, {})
    :SetResult(20479)
    :AddRecipe(20508, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7078, 2) -- Essence of Fire
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :AddReagent(20498, 40) -- Silithid Chitin
    :AddReagent(20500, 3) -- Light Silithid Carapace
    :Save()

module:NewCraft(24849, "Sandstalker Bracers", 300, {})
    :SetResult(20476)
    :AddRecipe(20509, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(18512, 2) -- Larval Acid
    :AddReagent(20498, 20) -- Silithid Chitin
    :AddReagent(20501, 1) -- Heavy Silithid Carapace
    :Save()

module:NewCraft(24850, "Sandstalker Gauntlets", 300, {})
    :SetResult(20477)
    :AddRecipe(20510, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :AddReagent(18512, 2) -- Larval Acid
    :AddReagent(20498, 30) -- Silithid Chitin
    :AddReagent(20501, 2) -- Heavy Silithid Carapace
    :Save()

module:NewCraft(24851, "Sandstalker Breastplate", 300, {})
    :SetResult(20478)
    :AddRecipe(20511, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :AddReagent(18512, 2) -- Larval Acid
    :AddReagent(20498, 40) -- Silithid Chitin
    :AddReagent(20501, 3) -- Heavy Silithid Carapace
    :Save()

module:NewCraft(24940, "Black Whelp Tunic", 100, {})
    :SetResult(20575)
    :AddRecipe(20576, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2319, 8) -- Medium Leather
    :AddReagent(2321, 2) -- Fine Thread
    :AddReagent(4231, 1) -- Cured Light Hide
    :AddReagent(7286, 8) -- Black Whelp Scale
    :Save()

module:NewCraft(26279, "Stormshroud Gloves", 300, {})
    :SetResult(21278)
    :AddRecipe(21548, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7080, 4) -- Essence of Water
    :AddReagent(7082, 4) -- Essence of Air
    :AddReagent(12810, 6) -- Enchanted Leather
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :Save()

module:NewCraft(28219, "Polar Tunic", 300, {SpellSource.Trainer})
    :SetResult(22661)
    :AddReagent(7080, 2) -- Essence of Water
    :AddReagent(12810, 16) -- Enchanted Leather
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(15407, 4) -- Cured Rugged Hide
    :AddReagent(22682, 7) -- Frozen Rune
    :Save()

module:NewCraft(28220, "Polar Gloves", 300, {SpellSource.Trainer})
    :SetResult(22662)
    :AddReagent(7080, 2) -- Essence of Water
    :AddReagent(12810, 12) -- Enchanted Leather
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(15407, 3) -- Cured Rugged Hide
    :AddReagent(22682, 5) -- Frozen Rune
    :Save()

module:NewCraft(28221, "Polar Bracers", 300, {SpellSource.Trainer})
    :SetResult(22663)
    :AddReagent(7080, 2) -- Essence of Water
    :AddReagent(12810, 12) -- Enchanted Leather
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :AddReagent(22682, 4) -- Frozen Rune
    :Save()

module:NewCraft(28222, "Icy Scale Breastplate", 300, {SpellSource.Trainer})
    :SetResult(22664)
    :AddReagent(7080, 2) -- Essence of Water
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(15407, 4) -- Cured Rugged Hide
    :AddReagent(15408, 24) -- Heavy Scorpid Scale
    :AddReagent(22682, 7) -- Frozen Rune
    :Save()

module:NewCraft(28223, "Icy Scale Gauntlets", 300, {SpellSource.Trainer})
    :SetResult(22666)
    :AddReagent(7080, 2) -- Essence of Water
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(15407, 3) -- Cured Rugged Hide
    :AddReagent(15408, 16) -- Heavy Scorpid Scale
    :AddReagent(22682, 5) -- Frozen Rune
    :Save()

module:NewCraft(28224, "Icy Scale Bracers", 300, {SpellSource.Trainer})
    :SetResult(22665)
    :AddReagent(7080, 2) -- Essence of Water
    :AddReagent(14227, 4) -- Ironweb Spider Silk
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :AddReagent(15408, 16) -- Heavy Scorpid Scale
    :AddReagent(22682, 4) -- Frozen Rune
    :Save()

module:NewCraft(28472, "Bramblewood Helm", 300, {})
    :SetResult(22759)
    :AddRecipe(22771, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12803, 2) -- Living Essence
    :AddReagent(12810, 12) -- Enchanted Leather
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :AddReagent(19726, 2) -- Bloodvine
    :Save()

module:NewCraft(28473, "Bramblewood Boots", 300, {})
    :SetResult(22760)
    :AddRecipe(22770, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12803, 2) -- Living Essence
    :AddReagent(12810, 6) -- Enchanted Leather
    :AddReagent(15407, 2) -- Cured Rugged Hide
    :AddReagent(18512, 2) -- Larval Acid
    :Save()

module:NewCraft(28474, "Bramblewood Belt", 300, {})
    :SetResult(22761)
    :AddRecipe(22769, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12803, 2) -- Living Essence
    :AddReagent(12810, 4) -- Enchanted Leather
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :Save()

if lib.env.is_turtle_wow then
    module:NewCraft(10550, "Nightscape Cloak", 230, {})
        :SetResult(8195)
        :AddRecipe(8388, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(4291, 4) -- Silken Thread
        :AddReagent(4304, 12) -- Thick Leather
        :Save()

    module:NewCraft(45069, "Lynxstep Boots", 75, {})
        :SetResult(51284)
        :AddRecipe(51285, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(818, 1) -- Tigerseye
        :AddReagent(2318, 8) -- Light Leather
        :AddReagent(2321, 2) -- Fine Thread
        :AddReagent(4231, 1) -- Cured Light Hide
        :Save()

    module:NewCraft(45455, "Dreamhide", 300, {})
        :SetResult(61229)
        :AddRecipe(61228, Quality.Uncommon, {RecipeSource.Quest})
        :AddReagent(8170, 1) -- Rugged Leather
        :AddReagent(20381, 1) -- Dreamscale
        :AddReagent(61198, 1) -- Small Dream Shard
        :Save()

    module:NewCraft(45473, "Dreamhide Mantle", 300, {})
        :SetResult(61356)
        :AddRecipe(61428, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(12803, 6) -- Living Essence
        :AddReagent(12810, 20) -- Enchanted Leather
        :AddReagent(15407, 6) -- Cured Rugged Hide
        :AddReagent(61229, 22) -- Dreamhide
        :Save()

    module:NewCraft(45475, "Dreamhide Bracers", 300, {})
        :SetResult(61357)
        :AddRecipe(61429, Quality.Epic, {RecipeSource.Quest})
        :AddReagent(12803, 2) -- Living Essence
        :AddReagent(12810, 6) -- Enchanted Leather
        :AddReagent(15407, 1) -- Cured Rugged Hide
        :AddReagent(61229, 8) -- Dreamhide
        :Save()

    module:NewCraft(45477, "Dreamhide Leggings", 300, {})
        :SetResult(61358)
        :AddRecipe(61430, Quality.Epic, {RecipeSource.Quest})
        :AddReagent(7082, 6) -- Essence of Air
        :AddReagent(12803, 6) -- Living Essence
        :AddReagent(12810, 12) -- Enchanted Leather
        :AddReagent(15407, 4) -- Cured Rugged Hide
        :AddReagent(61229, 12) -- Dreamhide
        :Save()

    module:NewCraft(45479, "Dreamhide Belt", 300, {})
        :SetResult(61359)
        :AddRecipe(61431, Quality.Epic, {RecipeSource.Quest})
        :AddReagent(7082, 8) -- Essence of Air
        :AddReagent(12810, 12) -- Enchanted Leather
        :AddReagent(14341, 8) -- Rune Thread
        :AddReagent(15407, 2) -- Cured Rugged Hide
        :AddReagent(61229, 8) -- Dreamhide
        :Save()

    module:NewCraft(45483, "Inscribed Runic Bracers", 300, {})
        :SetResult(61188)
        :AddRecipe(61192, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(7076, 8) -- Essence of Earth
        :AddReagent(12803, 4) -- Living Essence
        :AddReagent(12810, 12) -- Enchanted Leather
        :AddReagent(14341, 8) -- Rune Thread
        :AddReagent(15407, 4) -- Cured Rugged Hide
        :Save()

    module:NewCraft(46620, "Grifter's Boots", 200, {SpellSource.Trainer})
        :SetResult(83405)
        :AddReagent(4291, 3) -- Silken Thread
        :AddReagent(4304, 7) -- Thick Leather
        :Save()

    module:NewCraft(46621, "Grifter's Gauntlets", 200, {SpellSource.Trainer})
        :SetResult(83404)
        :AddReagent(4291, 2) -- Silken Thread
        :AddReagent(4304, 6) -- Thick Leather
        :Save()

    module:NewCraft(46622, "Grifter's Belt", 200, {SpellSource.Trainer})
        :SetResult(83403)
        :AddReagent(4234, 10) -- Heavy Leather
        :AddReagent(4236, 1) -- Cured Heavy Hide
        :AddReagent(4291, 1) -- Silken Thread
        :Save()

    module:NewCraft(46623, "Grifter's Leggings", 205, {SpellSource.Trainer})
        :SetResult(83402)
        :AddReagent(2605, 1) -- Green Dye
        :AddReagent(4234, 2) -- Heavy Leather
        :AddReagent(4291, 3) -- Silken Thread
        :AddReagent(4304, 10) -- Thick Leather
        :Save()

    module:NewCraft(46624, "Grifter's Tunic", 210, {SpellSource.Trainer})
        :SetResult(83401)
        :AddReagent(2605, 2) -- Green Dye
        :AddReagent(3575, 2) -- Iron Bar
        :AddReagent(4291, 4) -- Silken Thread
        :AddReagent(4304, 12) -- Thick Leather
        :Save()

    module:NewCraft(46625, "Grifter's Cover", 210, {SpellSource.Trainer})
        :SetResult(83400)
        :AddReagent(2605, 1) -- Green Dye
        :AddReagent(4291, 2) -- Silken Thread
        :AddReagent(4304, 8) -- Thick Leather
        :AddReagent(4338, 4) -- Mageweave Cloth
        :Save()

    module:NewCraft(46653, "Red Dragonscale Leggings", 295, {})
        :SetResult(65000)
        :AddRecipe(83538, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(8170, 35) -- Rugged Leather
        :AddReagent(12803, 6) -- Living Essence
        :AddReagent(12810, 4) -- Enchanted Leather
        :AddReagent(14341, 2) -- Rune Thread
        :AddReagent(15414, 40) -- Red Dragonscale
        :Save()

    module:NewCraft(46654, "Red Dragonscale Shoulders", 300, {})
        :SetResult(65001)
        :AddRecipe(83537, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(8170, 30) -- Rugged Leather
        :AddReagent(12803, 4) -- Living Essence
        :AddReagent(12810, 3) -- Enchanted Leather
        :AddReagent(14341, 1) -- Rune Thread
        :AddReagent(15414, 30) -- Red Dragonscale
        :Save()

    module:NewCraft(46655, "Red Dragonscale Boots", 300, {SpellSource.Trainer})
        :SetResult(65002)
        :AddReagent(8170, 30) -- Rugged Leather
        :AddReagent(12803, 4) -- Living Essence
        :AddReagent(12810, 2) -- Enchanted Leather
        :AddReagent(14341, 2) -- Rune Thread
        :AddReagent(15414, 25) -- Red Dragonscale
        :Save()

    module:NewCraft(46659, "Stormscale Leggings", 300, {})
        :SetResult(65006)
        :AddRecipe(83544, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(7082, 12) -- Essence of Air
        :AddReagent(8170, 30) -- Rugged Leather
        :AddReagent(12810, 16) -- Enchanted Leather
        :AddReagent(15407, 4) -- Cured Rugged Hide
        :AddReagent(15415, 40) -- Blue Dragonscale
        :AddReagent(20295, 1) -- Blue Dragonscale Leggings
        :Save()

    module:NewCraft(46662, "Shadowskin Boots", 205, {})
        :SetResult(65009)
        :AddRecipe(83536, Quality.Common, {RecipeSource.Drop})
        :AddReagent(1210, 6) -- Shadowgem
        :AddReagent(4236, 4) -- Cured Heavy Hide
        :AddReagent(4304, 8) -- Thick Leather
        :AddReagent(7428, 8) -- Shadowcat Hide
        :AddReagent(7971, 2) -- Black Pearl
        :AddReagent(8343, 2) -- Heavy Silken Thread
        :Save()

    module:NewCraft(46695, "Dragonscale Leggings", 245, {})
        :SetResult(65019)
        :AddRecipe(83534, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(4304, 30) -- Thick Leather
        :AddReagent(8165, 25) -- Worn Dragonscale
        :AddReagent(8172, 3) -- Cured Thick Hide
        :AddReagent(8343, 4) -- Heavy Silken Thread
        :Save()

    module:NewCraft(47015, "Primalist's Gloves", 275, {SpellSource.Trainer})
        :SetResult(81061)
        :AddReagent(8170, 6) -- Rugged Leather
        :AddReagent(14047, 4) -- Runecloth
        :AddReagent(14341, 1) -- Rune Thread
        :Save()

    module:NewCraft(47016, "Primalist's Shoulders", 280, {SpellSource.Trainer})
        :SetResult(81062)
        :AddReagent(8170, 12) -- Rugged Leather
        :AddReagent(12803, 1) -- Living Essence
        :AddReagent(14341, 1) -- Rune Thread
        :Save()

    module:NewCraft(47017, "Primalist's Headdress", 275, {SpellSource.Trainer})
        :SetResult(81063)
        :AddReagent(7080, 1) -- Essence of Water
        :AddReagent(8170, 10) -- Rugged Leather
        :AddReagent(12803, 1) -- Living Essence
        :AddReagent(14341, 1) -- Rune Thread
        :Save()

    module:NewCraft(47018, "Primalist's Pants", 280, {SpellSource.Trainer})
        :SetResult(81064)
        :AddReagent(8170, 12) -- Rugged Leather
        :AddReagent(8343, 2) -- Heavy Silken Thread
        :AddReagent(14341, 1) -- Rune Thread
        :Save()

    module:NewCraft(47019, "Primalist's Vest", 285, {SpellSource.Trainer})
        :SetResult(81066)
        :AddReagent(8170, 24) -- Rugged Leather
        :AddReagent(12803, 4) -- Living Essence
        :AddReagent(14341, 1) -- Rune Thread
        :AddReagent(15407, 1) -- Cured Rugged Hide
        :Save()

    module:NewCraft(47020, "Primalist's Boots", 275, {SpellSource.Trainer})
        :SetResult(81065)
        :AddReagent(8170, 8) -- Rugged Leather
        :AddReagent(14047, 4) -- Runecloth
        :AddReagent(14341, 1) -- Rune Thread
        :Save()

    module:NewCraft(47035, "Verdant Dreamer's Breastplate", 300, {})
        :SetResult(65021)
        :AddRecipe(83546, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(8211, 1) -- Wild Leather Vest
        :AddReagent(12803, 20) -- Living Essence
        :AddReagent(12810, 16) -- Enchanted Leather
        :AddReagent(14227, 4) -- Ironweb Spider Silk
        :AddReagent(15407, 4) -- Cured Rugged Hide
        :AddReagent(20002, 10) -- Greater Dreamless Sleep Potion
        :Save()

    module:NewCraft(54001, "Blue Dragonscale Boots", 290, {})
        :SetResult(65015)
        :AddRecipe(62000, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(8170, 24) -- Rugged Leather
        :AddReagent(14341, 1) -- Rune Thread
        :AddReagent(15407, 1) -- Cured Rugged Hide
        :AddReagent(15415, 25) -- Blue Dragonscale
        :Save()

    module:NewCraft(54007, "Corehound Gloves", 300, {})
        :SetResult(65038)
        :AddRecipe(62003, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(12607, 6) -- Brilliant Chromatic Scale
        :AddReagent(12810, 12) -- Enchanted Leather
        :AddReagent(14227, 4) -- Ironweb Spider Silk
        :AddReagent(15407, 5) -- Cured Rugged Hide
        :AddReagent(17010, 9) -- Fiery Core
        :AddReagent(17012, 12) -- Core Leather
        :Save()

    module:NewCraft(54013, "Chromatic Leggings", 300, {})
        :SetResult(65036)
        :AddRecipe(62006, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(12607, 6) -- Brilliant Chromatic Scale
        :AddReagent(14227, 4) -- Ironweb Spider Silk
        :AddReagent(15407, 5) -- Cured Rugged Hide
        :AddReagent(17010, 5) -- Fiery Core
        :AddReagent(17011, 3) -- Lava Core
        :AddReagent(17012, 6) -- Core Leather
        :Save()

    module:NewCraft(54015, "Molten Leggings", 300, {})
        :SetResult(65037)
        :AddRecipe(62007, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(7076, 6) -- Essence of Earth
        :AddReagent(12607, 6) -- Brilliant Chromatic Scale
        :AddReagent(14227, 4) -- Ironweb Spider Silk
        :AddReagent(15407, 4) -- Cured Rugged Hide
        :AddReagent(17010, 3) -- Fiery Core
        :AddReagent(17011, 6) -- Lava Core
        :Save()

    module:NewCraft(57008, "Breastplate of the Earth", 265, {})
        :SetResult(65022)
        :AddRecipe(60780, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(4304, 40) -- Thick Leather
        :AddReagent(7075, 12) -- Core of Earth
        :AddReagent(8172, 3) -- Cured Thick Hide
        :AddReagent(8343, 4) -- Heavy Silken Thread
        :Save()

    module:NewCraft(57010, "Boots of the Wind", 255, {})
        :SetResult(65023)
        :AddRecipe(60781, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(4304, 20) -- Thick Leather
        :AddReagent(7081, 10) -- Breath of Wind
        :AddReagent(8172, 1) -- Cured Thick Hide
        :AddReagent(8343, 4) -- Heavy Silken Thread
        :Save()

    module:NewCraft(57012, "Earthguard Tunic", 300, {})
        :SetResult(65024)
        :AddRecipe(83559, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(7076, 20) -- Essence of Earth
        :AddReagent(8170, 20) -- Rugged Leather
        :AddReagent(8343, 2) -- Heavy Silken Thread
        :AddReagent(12809, 10) -- Guardian Stone
        :AddReagent(13455, 5) -- Greater Stoneshield Potion
        :AddReagent(15407, 6) -- Cured Rugged Hide
        :AddReagent(15419, 20) -- Warbear Leather
        :Save()

    module:NewCraft(57014, "Flamewrath Leggings", 300, {})
        :SetResult(65025)
        :AddRecipe(83558, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(7078, 25) -- Essence of Fire
        :AddReagent(8170, 20) -- Rugged Leather
        :AddReagent(8343, 2) -- Heavy Silken Thread
        :AddReagent(11751, 2) -- Burning Essence
        :AddReagent(15407, 5) -- Cured Rugged Hide
        :AddReagent(15417, 15) -- Devilsaur Leather
        :AddReagent(21546, 5) -- Elixir of Greater Firepower
        :Save()

    module:NewCraft(57016, "Depthstalker Helmet", 300, {})
        :SetResult(65026)
        :AddRecipe(83561, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(7080, 20) -- Essence of Water
        :AddReagent(8170, 15) -- Rugged Leather
        :AddReagent(8343, 2) -- Heavy Silken Thread
        :AddReagent(12457, 10) -- Juju Chill
        :AddReagent(15407, 5) -- Cured Rugged Hide
        :AddReagent(15422, 20) -- Frostsaber Leather
        :AddReagent(18294, 10) -- Elixir of Greater Water Breathing
        :Save()

    module:NewCraft(57018, "Windwalker Boots", 300, {})
        :SetResult(65027)
        :AddRecipe(83560, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(2459, 10) -- Swiftness Potion
        :AddReagent(7082, 20) -- Essence of Air
        :AddReagent(8170, 10) -- Rugged Leather
        :AddReagent(8343, 2) -- Heavy Silken Thread
        :AddReagent(12753, 6) -- Skin of Shadow
        :AddReagent(15407, 6) -- Cured Rugged Hide
        :AddReagent(15423, 20) -- Chimera Leather
        :Save()

    module:NewCraft(57022, "Centaur Battle Harness", 300, {})
        :SetResult(60910)
        :AddRecipe(60968, Quality.Rare, {RecipeSource.Vendor})
        :AddReagent(7076, 1) -- Essence of Earth
        :AddReagent(7082, 2) -- Essence of Air
        :AddReagent(8170, 20) -- Rugged Leather
        :AddReagent(12810, 8) -- Enchanted Leather
        :Save()

    module:NewCraft(57115, "Enchanted Armor Kit", 300, {})
        :SetResult(61183)
        :AddRecipe(61179, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(12810, 3) -- Enchanted Leather
        :AddReagent(14341, 2) -- Rune Thread
        :AddReagent(61673, 3) -- Arcane Essence
        :Save()
end
