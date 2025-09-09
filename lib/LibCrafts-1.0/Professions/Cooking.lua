local lib = LibCraftsGetLibrary()
local name, version = "Professions-Cooking", 4
local module = --[[---@type LcProfessionModule]] lib:RegisterProfessionModule(name, version, "Cooking")
if not module then return end

local Quality = lib.constants.qualities
local SpellSource = lib.constants.spell_sources
local RecipeSource = lib.constants.recipe_sources

module:NewCraft(2538, "Charred Wolf Meat", 1, {SpellSource.LearnedAutomatically})
    :SetResult(2679)
    :AddReagent(2672, 1) -- Stringy Wolf Meat
    :Save()

module:NewCraft(2539, "Spiced Wolf Meat", 10, {SpellSource.Trainer})
    :SetResult(2680)
    :AddReagent(2672, 1) -- Stringy Wolf Meat
    :AddReagent(2678, 1) -- Mild Spices
    :Save()

module:NewCraft(2540, "Roasted Boar Meat", 1, {SpellSource.LearnedAutomatically})
    :SetResult(2681)
    :AddReagent(769, 1) -- Chunk of Boar Meat
    :Save()

module:NewCraft(2541, "Coyote Steak", 50, {SpellSource.Trainer})
    :SetResult(2684)
    :AddReagent(2673, 1) -- Coyote Meat
    :Save()

module:NewCraft(2542, "Goretusk Liver Pie", 50, {})
    :SetResult(724)
    :AddRecipe(2697, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(723, 1) -- Goretusk Liver
    :AddReagent(2678, 1) -- Mild Spices
    :Save()

module:NewCraft(2543, "Westfall Stew", 75, {})
    :SetResult(733)
    :AddRecipe(728, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(729, 1) -- Stringy Vulture Meat
    :AddReagent(730, 1) -- Murloc Eye
    :AddReagent(731, 1) -- Goretusk Snout
    :Save()

module:NewCraft(2544, "Crab Cake", 75, {SpellSource.Trainer})
    :SetResult(2683)
    :AddReagent(2674, 1) -- Crawler Meat
    :AddReagent(2678, 1) -- Mild Spices
    :Save()

module:NewCraft(2545, "Cooked Crab Claw", 85, {})
    :SetResult(2682)
    :AddRecipe(2698, Quality.Common, {RecipeSource.Drop, RecipeSource.Vendor})
    :AddReagent(2675, 1) -- Crawler Claw
    :AddReagent(2678, 1) -- Mild Spices
    :Save()

module:NewCraft(2546, "Dry Pork Ribs", 80, {SpellSource.Trainer})
    :SetResult(2687)
    :AddReagent(2677, 1) -- Boar Ribs
    :AddReagent(2678, 1) -- Mild Spices
    :Save()

module:NewCraft(2547, "Redridge Goulash", 100, {})
    :SetResult(1082)
    :AddRecipe(2699, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(1080, 1) -- Tough Condor Meat
    :AddReagent(1081, 1) -- Crisp Spider Meat
    :Save()

module:NewCraft(2548, "Succulent Pork Ribs", 110, {})
    :SetResult(2685)
    :AddRecipe(2700, Quality.Common, {RecipeSource.Drop, RecipeSource.Vendor})
    :AddReagent(2677, 2) -- Boar Ribs
    :AddReagent(2692, 1) -- Hot Spices
    :Save()

module:NewCraft(2549, "Seasoned Wolf Kabob", 100, {})
    :SetResult(1017)
    :AddRecipe(2701, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(1015, 2) -- Lean Wolf Flank
    :AddReagent(2665, 1) -- Stormwind Seasoning Herbs
    :Save()

module:NewCraft(2795, "Beer Basted Boar Ribs", 25, {})
    :SetResult(2888)
    :AddRecipe(2889, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(2886, 1) -- Crag Boar Rib
    :AddReagent(2894, 1) -- Rhapsody Malt
    :Save()

module:NewCraft(3370, "Crocolisk Steak", 80, {})
    :SetResult(3662)
    :AddRecipe(3678, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(2678, 1) -- Mild Spices
    :AddReagent(2924, 1) -- Crocolisk Meat
    :Save()

module:NewCraft(3371, "Blood Sausage", 60, {})
    :SetResult(3220)
    :AddRecipe(3679, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(3172, 1) -- Boar Intestines
    :AddReagent(3173, 1) -- Bear Meat
    :AddReagent(3174, 1) -- Spider Ichor
    :Save()

module:NewCraft(3372, "Murloc Fin Soup", 90, {})
    :SetResult(3663)
    :AddRecipe(3680, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(1468, 2) -- Murloc Fin
    :AddReagent(2692, 1) -- Hot Spices
    :Save()

module:NewCraft(3373, "Crocolisk Gumbo", 120, {})
    :SetResult(3664)
    :AddRecipe(3681, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(3667, 1) -- Tender Crocolisk Meat
    :Save()

module:NewCraft(3376, "Curiously Tasty Omelet", 130, {})
    :SetResult(3665)
    :AddRecipe(3682, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(3685, 1) -- Raptor Egg
    :Save()

module:NewCraft(3377, "Gooey Spider Cake", 110, {})
    :SetResult(3666)
    :AddRecipe(3683, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(2251, 2) -- Gooey Spider Leg
    :AddReagent(2692, 1) -- Hot Spices
    :Save()

module:NewCraft(3397, "Big Bear Steak", 110, {})
    :SetResult(3726)
    :AddRecipe(3734, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(3730, 1) -- Big Bear Meat
    :Save()

module:NewCraft(3398, "Hot Lion Chops", 125, {})
    :SetResult(3727)
    :AddRecipe(3735, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(3731, 1) -- Lion Meat
    :Save()

module:NewCraft(3399, "Tasty Lion Steak", 150, {})
    :SetResult(3728)
    :AddRecipe(3736, Quality.Common, {RecipeSource.Quest})
    :AddReagent(3713, 1) -- Soothing Spices
    :AddReagent(3731, 2) -- Lion Meat
    :Save()

module:NewCraft(3400, "Soothing Turtle Bisque", 175, {})
    :SetResult(3729)
    :AddRecipe(3737, Quality.Common, {RecipeSource.Quest})
    :AddReagent(3712, 1) -- Turtle Meat
    :AddReagent(3713, 1) -- Soothing Spices
    :Save()

module:NewCraft(4094, "Barbecued Buzzard Wing", 175, {SpellSource.Trainer})
    :SetResult(4457)
    :AddRecipe(4609, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(3404, 1) -- Buzzard Wing
    :Save()

module:NewCraft(6412, "Kaldorei Spider Kabob", 10, {})
    :SetResult(5472)
    :AddRecipe(5482, Quality.Common, {RecipeSource.Quest})
    :AddReagent(5465, 1) -- Small Spider Leg
    :Save()

module:NewCraft(6413, "Scorpid Surprise", 20, {})
    :SetResult(5473)
    :AddRecipe(5483, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(5466, 1) -- Scorpid Stinger
    :Save()

module:NewCraft(6414, "Roasted Kodo Meat", 35, {})
    :SetResult(5474)
    :AddRecipe(5484, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2678, 1) -- Mild Spices
    :AddReagent(5467, 1) -- Kodo Meat
    :Save()

module:NewCraft(6415, "Fillet of Frenzy", 50, {})
    :SetResult(5476)
    :AddRecipe(5485, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2678, 1) -- Mild Spices
    :AddReagent(5468, 1) -- Soft Frenzy Flesh
    :Save()

module:NewCraft(6416, "Strider Stew", 50, {})
    :SetResult(5477)
    :AddRecipe(5486, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(4536, 1) -- Shiny Red Apple
    :AddReagent(5469, 1) -- Strider Meat
    :Save()

module:NewCraft(6417, "Dig Rat Stew", 90, {})
    :SetResult(5478)
    :AddRecipe(5487, Quality.Common, {RecipeSource.Quest})
    :AddReagent(5051, 1) -- Dig Rat
    :Save()

module:NewCraft(6418, "Crispy Lizard Tail", 100, {})
    :SetResult(5479)
    :AddRecipe(5488, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(5470, 1) -- Thunder Lizard Tail
    :Save()

module:NewCraft(6419, "Lean Venison", 110, {})
    :SetResult(5480)
    :AddRecipe(5489, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2678, 4) -- Mild Spices
    :AddReagent(5471, 1) -- Stag Meat
    :Save()

module:NewCraft(6499, "Boiled Clams", 50, {SpellSource.Trainer})
    :SetResult(5525)
    :AddReagent(159, 1) -- Refreshing Spring Water
    :AddReagent(5503, 1) -- Clam Meat
    :Save()

module:NewCraft(6500, "Goblin Deviled Clams", 125, {SpellSource.Trainer})
    :SetResult(5527)
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(5504, 1) -- Tangy Clam Meat
    :Save()

module:NewCraft(6501, "Clam Chowder", 90, {})
    :SetResult(5526)
    :AddRecipe(5528, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(1179, 1) -- Ice Cold Milk
    :AddReagent(2678, 1) -- Mild Spices
    :AddReagent(5503, 1) -- Clam Meat
    :Save()

module:NewCraft(7213, "Giant Clam Scorcho", 175, {})
    :SetResult(6038)
    :AddRecipe(6039, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(4655, 1) -- Giant Clam Meat
    :Save()

module:NewCraft(7751, "Brilliant Smallfish", 1, {})
    :SetResult(6290)
    :AddRecipe(6325, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(6291, 1) -- Raw Brilliant Smallfish
    :Save()

module:NewCraft(7752, "Slitherskin Mackerel", 1, {})
    :SetResult(787)
    :AddRecipe(6326, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(6303, 1) -- Raw Slitherskin Mackerel
    :Save()

module:NewCraft(7753, "Longjaw Mud Snapper", 50, {})
    :SetResult(4592)
    :AddRecipe(6328, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(6289, 1) -- Raw Longjaw Mud Snapper
    :Save()

module:NewCraft(7754, "Loch Frenzy Delight", 50, {})
    :SetResult(6316)
    :AddRecipe(6329, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2678, 1) -- Mild Spices
    :AddReagent(6317, 1) -- Raw Loch Frenzy
    :Save()

module:NewCraft(7755, "Bristle Whisker Catfish", 100, {})
    :SetResult(4593)
    :AddRecipe(6330, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(6308, 1) -- Raw Bristle Whisker Catfish
    :Save()

module:NewCraft(7827, "Rainbow Fin Albacore", 50, {})
    :SetResult(5095)
    :AddRecipe(6368, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(6361, 1) -- Raw Rainbow Fin Albacore
    :Save()

module:NewCraft(7828, "Rockscale Cod", 175, {})
    :SetResult(4594)
    :AddRecipe(6369, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(6362, 1) -- Raw Rockscale Cod
    :Save()

module:NewCraft(8238, "Savory Deviate Delight", 85, {})
    :SetResult(6657)
    :AddRecipe(6661, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(2678, 1) -- Mild Spices
    :AddReagent(6522, 1) -- Deviate Fish
    :Save()

module:NewCraft(8604, "Herb Baked Egg", 1, {SpellSource.LearnedAutomatically})
    :SetResult(6888)
    :AddReagent(2678, 1) -- Mild Spices
    :AddReagent(6889, 1) -- Small Egg
    :Save()

module:NewCraft(8607, "Smoked Bear Meat", 40, {})
    :SetResult(6890)
    :AddRecipe(6892, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3173, 1) -- Bear Meat
    :Save()

module:NewCraft(9513, "Thistle Tea", 60, {})
    :SetResult(7676)
    :AddRecipe(7678, Quality.Common, {RecipeSource.Quest})
    :AddRecipe(18160, Quality.Uncommon, {RecipeSource.Quest, RecipeSource.Vendor})
    :AddReagent(159, 1) -- Refreshing Spring Water
    :AddReagent(2452, 1) -- Swiftthistle
    :Save()

module:NewCraft(13028, "Goldthorn Tea", 175, {SpellSource.Trainer})
    :SetResult(10841)
    :AddReagent(159, 1) -- Refreshing Spring Water
    :AddReagent(3821, 1) -- Goldthorn
    :Save()

module:NewCraft(15853, "Lean Wolf Steak", 125, {})
    :SetResult(12209)
    :AddRecipe(12227, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(1015, 1) -- Lean Wolf Flank
    :AddReagent(2678, 1) -- Mild Spices
    :Save()

module:NewCraft(15855, "Roast Raptor", 175, {})
    :SetResult(12210)
    :AddRecipe(12228, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(12184, 1) -- Raptor Flesh
    :Save()

module:NewCraft(15856, "Hot Wolf Ribs", 175, {})
    :SetResult(13851)
    :AddRecipe(12229, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(12203, 1) -- Red Wolf Meat
    :Save()

module:NewCraft(15861, "Jungle Stew", 175, {})
    :SetResult(12212)
    :AddRecipe(12231, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(159, 1) -- Refreshing Spring Water
    :AddReagent(4536, 2) -- Shiny Red Apple
    :AddReagent(12202, 1) -- Tiger Meat
    :Save()

module:NewCraft(15863, "Carrion Surprise", 175, {})
    :SetResult(12213)
    :AddRecipe(12232, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(12037, 1) -- Mystery Meat
    :Save()

module:NewCraft(15865, "Mystery Stew", 175, {})
    :SetResult(12214)
    :AddRecipe(12233, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2596, 1) -- Skin of Dwarven Stout
    :AddReagent(12037, 1) -- Mystery Meat
    :Save()

module:NewCraft(15906, "Dragonbreath Chili", 200, {})
    :SetResult(12217)
    :AddRecipe(12239, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(4402, 1) -- Small Flame Sac
    :AddReagent(12037, 1) -- Mystery Meat
    :Save()

module:NewCraft(15910, "Heavy Kodo Stew", 200, {})
    :SetResult(12215)
    :AddRecipe(12240, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(159, 1) -- Refreshing Spring Water
    :AddReagent(3713, 1) -- Soothing Spices
    :AddReagent(12204, 2) -- Heavy Kodo Meat
    :Save()

module:NewCraft(15915, "Spiced Chili Crab", 225, {})
    :SetResult(12216)
    :AddRecipe(16111, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2692, 2) -- Hot Spices
    :AddReagent(12206, 1) -- Tender Crab Meat
    :Save()

module:NewCraft(15933, "Monster Omelet", 225, {})
    :SetResult(12218)
    :AddRecipe(16110, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3713, 2) -- Soothing Spices
    :AddReagent(12207, 1) -- Giant Egg
    :Save()

module:NewCraft(15935, "Crispy Bat Wing", 1, {})
    :SetResult(12224)
    :AddRecipe(12226, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2678, 1) -- Mild Spices
    :AddReagent(12223, 1) -- Meaty Bat Wing
    :Save()

module:NewCraft(18238, "Spotted Yellowtail", 225, {})
    :SetResult(6887)
    :AddRecipe(13939, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4603, 1) -- Raw Spotted Yellowtail
    :Save()

module:NewCraft(18239, "Cooked Glossy Mightfish", 225, {})
    :SetResult(13927)
    :AddRecipe(13940, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3713, 1) -- Soothing Spices
    :AddReagent(13754, 1) -- Raw Glossy Mightfish
    :Save()

module:NewCraft(18240, "Grilled Squid", 240, {})
    :SetResult(13928)
    :AddRecipe(13942, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3713, 1) -- Soothing Spices
    :AddReagent(13755, 1) -- Winter Squid
    :Save()

module:NewCraft(18241, "Filet of Redgill", 225, {})
    :SetResult(13930)
    :AddRecipe(13941, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(13758, 1) -- Raw Redgill
    :Save()

module:NewCraft(18242, "Hot Smoked Bass", 240, {})
    :SetResult(13929)
    :AddRecipe(13943, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2692, 2) -- Hot Spices
    :AddReagent(13756, 1) -- Raw Summer Bass
    :Save()

module:NewCraft(18243, "Nightfin Soup", 250, {})
    :SetResult(13931)
    :AddRecipe(13945, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(159, 1) -- Refreshing Spring Water
    :AddReagent(13759, 1) -- Raw Nightfin Snapper
    :Save()

module:NewCraft(18244, "Poached Sunscale Salmon", 250, {})
    :SetResult(13932)
    :AddRecipe(13946, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(13760, 1) -- Raw Sunscale Salmon
    :Save()

module:NewCraft(18245, "Lobster Stew", 275, {})
    :SetResult(13933)
    :AddRecipe(13947, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(159, 1) -- Refreshing Spring Water
    :AddReagent(13888, 1) -- Darkclaw Lobster
    :Save()

module:NewCraft(18246, "Mightfish Steak", 275, {})
    :SetResult(13934)
    :AddRecipe(13948, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(3713, 1) -- Soothing Spices
    :AddReagent(13893, 1) -- Large Raw Mightfish
    :Save()

module:NewCraft(18247, "Baked Salmon", 275, {})
    :SetResult(13935)
    :AddRecipe(13949, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3713, 1) -- Soothing Spices
    :AddReagent(13889, 1) -- Raw Whitescale Salmon
    :Save()

module:NewCraft(20626, "Undermine Clam Chowder", 225, {})
    :SetResult(16766)
    :AddRecipe(16767, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(1179, 1) -- Ice Cold Milk
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(7974, 2) -- Zesty Clam Meat
    :Save()

module:NewCraft(20916, "Mithril Headed Trout", 175, {})
    :SetResult(8364)
    :AddRecipe(17062, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8365, 1) -- Raw Mithril Head Trout
    :Save()

module:NewCraft(21143, "Gingerbread Cookie", 1, {})
    :SetResult(17197)
    :AddRecipe(17200, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(6889, 1) -- Small Egg
    :AddReagent(17194, 1) -- Holiday Spices
    :Save()

module:NewCraft(21144, "Egg Nog", 35, {})
    :SetResult(17198)
    :AddRecipe(17201, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(1179, 1) -- Ice Cold Milk
    :AddReagent(6889, 1) -- Small Egg
    :AddReagent(17194, 1) -- Holiday Spices
    :AddReagent(17196, 1) -- Holiday Spirits
    :Save()

module:NewCraft(21175, "Spider Sausage", 200, {SpellSource.Trainer})
    :SetResult(17222)
    :AddReagent(12205, 2) -- White Spider Meat
    :Save()

module:NewCraft(22480, "Tender Wolf Steak", 225, {})
    :SetResult(18045)
    :AddRecipe(18046, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3713, 1) -- Soothing Spices
    :AddReagent(12208, 1) -- Tender Wolf Meat
    :Save()

module:NewCraft(22761, "Runn Tum Tuber Surprise", 275, {})
    :SetResult(18254)
    :AddRecipe(18267, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(3713, 1) -- Soothing Spices
    :AddReagent(18255, 1) -- Runn Tum Tuber
    :Save()

module:NewCraft(24418, "Heavy Crocolisk Stew", 150, {})
    :SetResult(20074)
    :AddRecipe(20075, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3667, 2) -- Tender Crocolisk Meat
    :AddReagent(3713, 1) -- Soothing Spices
    :Save()

module:NewCraft(24801, "Smoked Desert Dumplings", 285, {SpellSource.Quest})
    :SetResult(20452)
    :AddReagent(3713, 1) -- Soothing Spices
    :AddReagent(20424, 1) -- Sandworm Meat
    :Save()

module:NewCraft(25659, "Dirge's Kickin' Chimaerok Chops", 300, {})
    :SetResult(21023)
    :AddRecipe(21025, Quality.Epic, {RecipeSource.Quest})
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(8150, 1) -- Deeprock Salt
    :AddReagent(9061, 1) -- Goblin Rocket Fuel
    :AddReagent(21024, 1) -- Chimaerok Tenderloin
    :Save()

module:NewCraft(25704, "Smoked Sagefish", 80, {})
    :SetResult(21072)
    :AddRecipe(21099, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2678, 1) -- Mild Spices
    :AddReagent(21071, 1) -- Raw Sagefish
    :Save()

module:NewCraft(25954, "Sagefish Delight", 175, {})
    :SetResult(21217)
    :AddRecipe(21219, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(2692, 1) -- Hot Spices
    :AddReagent(21153, 1) -- Raw Greater Sagefish
    :Save()

if lib.env.is_turtle_wow then
    module:NewCraft(4094, "Barbecued Buzzard Wing", 175, {})
        :SetResult(4457)
        :AddRecipe(4609, Quality.Common, {RecipeSource.Quest, RecipeSource.Vendor})
        :AddReagent(2692, 1) -- Hot Spices
        :AddReagent(3404, 1) -- Buzzard Wing
        :Save()

    module:NewCraft(9513, "Thistle Tea", 60, {})
        :SetResult(7676)
        :AddRecipe(18160, Quality.Uncommon, {RecipeSource.Quest, RecipeSource.Vendor})
        :AddReagent(159, 1) -- Refreshing Spring Water
        :AddReagent(2452, 1) -- Swiftthistle
        :Save()

    module:NewCraft(45054, "Maritime Gumbo", 35, {})
        :SetResult(30818)
        :AddRecipe(30819, Quality.Common, {RecipeSource.Quest})
        :AddReagent(159, 1) -- Refreshing Spring Water
        :AddReagent(2674, 1) -- Crawler Meat
        :Save()

    module:NewCraft(45625, "Le Fishe Au Chocolat", 300, {})
        :SetResult(84040)
        :AddRecipe(61666, Quality.Epic, {RecipeSource.Quest})
        :AddReagent(3713, 1) -- Soothing Spices
        :AddReagent(13464, 1) -- Golden Sansam
        :AddReagent(13889, 1) -- Raw Whitescale Salmon
        :AddReagent(61173, 1) -- Premium Chocolate
        :Save()

    module:NewCraft(45627, "Gilneas Hot Stew", 200, {})
        :SetResult(84041)
        :AddRecipe(61676, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(159, 1) -- Refreshing Spring Water
        :AddReagent(12203, 1) -- Red Wolf Meat
        :AddReagent(12205, 1) -- White Spider Meat
        :Save()

    module:NewCraft(46085, "Gurubashi Gumbo", 300, {})
        :SetResult(53015)
        :AddRecipe(53016, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(159, 1) -- Refreshing Spring Water
        :AddReagent(2692, 1) -- Hot Spices
        :AddReagent(3667, 1) -- Tender Crocolisk Meat
        :AddReagent(3713, 1) -- Soothing Spices
        :AddReagent(12037, 2) -- Mystery Meat
        :AddReagent(12202, 1) -- Tiger Meat
        :Save()

    module:NewCraft(49551, "Empowering Herbal Salad", 300, {})
        :SetResult(83309)
        :AddRecipe(92045, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(8838, 1) -- Sungrass
        :AddReagent(22529, 1) -- Savage Frond
        :AddReagent(51714, 2) -- Sweet Mountain Berry
        :Save()

    module:NewCraft(57047, "Danonzo's Tel'Abim Surprise", 300, {})
        :SetResult(60976)
        :AddRecipe(60979, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(3713, 1) -- Soothing Spices
        :AddReagent(10286, 1) -- Heart of the Wild
        :AddReagent(60955, 1) -- Gargantuan Tel'Abim Banana
        :Save()

    module:NewCraft(57049, "Danonzo's Tel'Abim Delight", 300, {})
        :SetResult(60977)
        :AddRecipe(60980, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(3713, 1) -- Soothing Spices
        :AddReagent(13467, 1) -- Icecap
        :AddReagent(60955, 1) -- Gargantuan Tel'Abim Banana
        :Save()

    module:NewCraft(57051, "Danonzo's Tel'Abim Medley", 300, {})
        :SetResult(60978)
        :AddRecipe(60981, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(3713, 1) -- Soothing Spices
        :AddReagent(13464, 2) -- Golden Sansam
        :AddReagent(60955, 1) -- Gargantuan Tel'Abim Banana
        :Save()

    module:NewCraft(58044, "Ambersap Glazed Boar Ribs", 175, {})
        :SetResult(41674)
        :AddRecipe(19670, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(2677, 1) -- Boar Ribs
        :AddReagent(2692, 1) -- Hot Spices
        :AddReagent(41675, 1) -- Ambersap
        :Save()

    module:NewCraft(58046, "Crawford Apple Tarte", 175, {})
        :SetResult(41673)
        :AddRecipe(19671, Quality.Uncommon, {}) -- TODO add source
        :AddReagent(1179, 1) -- Ice Cold Milk
        :AddReagent(4539, 1) -- Goldenbark Apple
        :AddReagent(41677, 1) -- Northwind Flour
        :Save()
end
