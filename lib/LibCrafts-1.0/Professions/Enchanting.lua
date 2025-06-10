local lib = LibCraftsGetLibrary()
local name, version = "Professions-Enchanting", 3
local module = --[[---@type LcProfessionModule]] lib:RegisterProfessionModule(name, version, "Enchanting")
if not module then return end

local Quality = lib.constants.qualities
local SpellSource = lib.constants.spell_sources
local RecipeSource = lib.constants.recipe_sources

module:NewCraft(7418, "Enchant Bracer - Minor Health", 1, {SpellSource.LearnedAutomatically})
    :AddReagent(10940, 1) -- Strange Dust
    :Save()

module:NewCraft(7420, "Enchant Chest - Minor Health", 15, {SpellSource.Trainer})
    :AddReagent(10940, 1) -- Strange Dust
    :Save()

module:NewCraft(7421, "Runed Copper Rod", 1, {SpellSource.LearnedAutomatically})
    :SetResult(6218)
    :AddReagent(6217, 1) -- Copper Rod
    :AddReagent(10938, 1) -- Lesser Magic Essence
    :AddReagent(10940, 1) -- Strange Dust
    :Save()

module:NewCraft(7426, "Enchant Chest - Minor Absorption", 40, {SpellSource.Trainer})
    :AddReagent(10938, 1) -- Lesser Magic Essence
    :AddReagent(10940, 2) -- Strange Dust
    :Save()

module:NewCraft(7428, "Enchant Bracer - Minor Deflect", 1, {SpellSource.LearnedAutomatically})
    :AddReagent(10938, 1) -- Lesser Magic Essence
    :AddReagent(10940, 1) -- Strange Dust
    :Save()

module:NewCraft(7443, "Enchant Chest - Minor Mana", 20, {})
    :AddRecipe(6342, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing, RecipeSource.Vendor})
    :AddReagent(10938, 1) -- Lesser Magic Essence
    :Save()

module:NewCraft(7454, "Enchant Cloak - Minor Resistance", 45, {SpellSource.Trainer})
    :AddReagent(10938, 2) -- Lesser Magic Essence
    :AddReagent(10940, 1) -- Strange Dust
    :Save()

module:NewCraft(7457, "Enchant Bracer - Minor Stamina", 50, {SpellSource.Trainer})
    :AddReagent(10940, 3) -- Strange Dust
    :Save()

module:NewCraft(7745, "Enchant 2H Weapon - Minor Impact", 100, {SpellSource.Trainer})
    :AddReagent(10940, 4) -- Strange Dust
    :AddReagent(10978, 1) -- Small Glimmering Shard
    :Save()

module:NewCraft(7748, "Enchant Chest - Lesser Health", 60, {SpellSource.Trainer})
    :AddReagent(10938, 2) -- Lesser Magic Essence
    :AddReagent(10940, 2) -- Strange Dust
    :Save()

module:NewCraft(7766, "Enchant Bracer - Minor Spirit", 60, {})
    :AddRecipe(6344, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(10938, 2) -- Lesser Magic Essence
    :Save()

module:NewCraft(7771, "Enchant Cloak - Minor Protection", 70, {SpellSource.Trainer})
    :AddReagent(10939, 1) -- Greater Magic Essence
    :AddReagent(10940, 3) -- Strange Dust
    :Save()

module:NewCraft(7776, "Enchant Chest - Lesser Mana", 80, {})
    :AddRecipe(6346, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(10938, 1) -- Lesser Magic Essence
    :AddReagent(10939, 1) -- Greater Magic Essence
    :Save()

module:NewCraft(7779, "Enchant Bracer - Minor Agility", 80, {SpellSource.Trainer})
    :AddReagent(10939, 1) -- Greater Magic Essence
    :AddReagent(10940, 2) -- Strange Dust
    :Save()

module:NewCraft(7782, "Enchant Bracer - Minor Strength", 80, {})
    :AddRecipe(6347, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(10940, 5) -- Strange Dust
    :Save()

module:NewCraft(7786, "Enchant Weapon - Minor Beastslayer", 90, {})
    :AddRecipe(6348, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(10939, 2) -- Greater Magic Essence
    :AddReagent(10940, 4) -- Strange Dust
    :Save()

module:NewCraft(7788, "Enchant Weapon - Minor Striking", 90, {SpellSource.Trainer})
    :AddReagent(10939, 1) -- Greater Magic Essence
    :AddReagent(10940, 2) -- Strange Dust
    :AddReagent(10978, 1) -- Small Glimmering Shard
    :Save()

module:NewCraft(7793, "Enchant 2H Weapon - Lesser Intellect", 100, {})
    :AddRecipe(6349, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(10939, 3) -- Greater Magic Essence
    :Save()

module:NewCraft(7795, "Runed Silver Rod", 100, {SpellSource.Trainer})
    :SetResult(6339)
    :AddReagent(1210, 1) -- Shadowgem
    :AddReagent(6338, 1) -- Silver Rod
    :AddReagent(10939, 3) -- Greater Magic Essence
    :AddReagent(10940, 6) -- Strange Dust
    :Save()

module:NewCraft(7857, "Enchant Chest - Health", 120, {SpellSource.Trainer})
    :AddReagent(10940, 4) -- Strange Dust
    :AddReagent(10998, 1) -- Lesser Astral Essence
    :Save()

module:NewCraft(7859, "Enchant Bracer - Lesser Spirit", 120, {})
    :AddRecipe(6375, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(10998, 2) -- Lesser Astral Essence
    :Save()

module:NewCraft(7861, "Enchant Cloak - Lesser Fire Resistance", 125, {SpellSource.Trainer})
    :AddReagent(6371, 1) -- Fire Oil
    :AddReagent(10998, 1) -- Lesser Astral Essence
    :Save()

module:NewCraft(7863, "Enchant Boots - Minor Stamina", 125, {SpellSource.Trainer})
    :AddReagent(10940, 8) -- Strange Dust
    :Save()

module:NewCraft(7867, "Enchant Boots - Minor Agility", 125, {})
    :AddRecipe(6377, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(10940, 6) -- Strange Dust
    :AddReagent(10998, 2) -- Lesser Astral Essence
    :Save()

module:NewCraft(13378, "Enchant Shield - Minor Stamina", 105, {SpellSource.Trainer})
    :AddReagent(10940, 2) -- Strange Dust
    :AddReagent(10998, 1) -- Lesser Astral Essence
    :Save()

module:NewCraft(13380, "Enchant 2H Weapon - Lesser Spirit", 110, {})
    :AddRecipe(11038, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(10940, 6) -- Strange Dust
    :AddReagent(10998, 1) -- Lesser Astral Essence
    :Save()

module:NewCraft(13419, "Enchant Cloak - Minor Agility", 110, {})
    :AddRecipe(11039, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Vendor})
    :AddReagent(10998, 1) -- Lesser Astral Essence
    :Save()

module:NewCraft(13421, "Enchant Cloak - Lesser Protection", 115, {SpellSource.Trainer})
    :AddReagent(10940, 6) -- Strange Dust
    :AddReagent(10978, 1) -- Small Glimmering Shard
    :Save()

module:NewCraft(13464, "Enchant Shield - Lesser Protection", 115, {})
    :AddRecipe(11081, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(10940, 1) -- Strange Dust
    :AddReagent(10978, 1) -- Small Glimmering Shard
    :AddReagent(10998, 1) -- Lesser Astral Essence
    :Save()

module:NewCraft(13485, "Enchant Shield - Lesser Spirit", 130, {SpellSource.Trainer})
    :AddReagent(10940, 4) -- Strange Dust
    :AddReagent(10998, 2) -- Lesser Astral Essence
    :Save()

module:NewCraft(13501, "Enchant Bracer - Lesser Stamina", 130, {SpellSource.Trainer})
    :AddReagent(11083, 2) -- Soul Dust
    :Save()

module:NewCraft(13503, "Enchant Weapon - Lesser Striking", 140, {SpellSource.Trainer})
    :AddReagent(11083, 2) -- Soul Dust
    :AddReagent(11084, 1) -- Large Glimmering Shard
    :Save()

module:NewCraft(13522, "Enchant Cloak - Lesser Shadow Resistance", 135, {})
    :AddRecipe(11098, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(6048, 1) -- Shadow Protection Potion
    :AddReagent(11082, 1) -- Greater Astral Essence
    :Save()

module:NewCraft(13529, "Enchant 2H Weapon - Lesser Impact", 145, {SpellSource.Trainer})
    :AddReagent(11083, 3) -- Soul Dust
    :AddReagent(11084, 1) -- Large Glimmering Shard
    :Save()

module:NewCraft(13536, "Enchant Bracer - Lesser Strength", 140, {})
    :AddRecipe(11101, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(11083, 2) -- Soul Dust
    :Save()

module:NewCraft(13538, "Enchant Chest - Lesser Absorption", 140, {SpellSource.Trainer})
    :AddReagent(10940, 2) -- Strange Dust
    :AddReagent(11082, 1) -- Greater Astral Essence
    :AddReagent(11084, 1) -- Large Glimmering Shard
    :Save()

module:NewCraft(13607, "Enchant Chest - Mana", 145, {SpellSource.Trainer})
    :AddReagent(10998, 2) -- Lesser Astral Essence
    :AddReagent(11082, 1) -- Greater Astral Essence
    :Save()

module:NewCraft(13612, "Enchant Gloves - Mining", 145, {})
    :AddRecipe(11150, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(2772, 3) -- Iron Ore
    :AddReagent(11083, 1) -- Soul Dust
    :Save()

module:NewCraft(13617, "Enchant Gloves - Herbalism", 145, {})
    :AddRecipe(11151, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(3356, 3) -- Kingsblood
    :AddReagent(11083, 1) -- Soul Dust
    :Save()

module:NewCraft(13620, "Enchant Gloves - Fishing", 145, {})
    :AddRecipe(11152, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(6370, 3) -- Blackmouth Oil
    :AddReagent(11083, 1) -- Soul Dust
    :Save()

module:NewCraft(13622, "Enchant Bracer - Lesser Intellect", 150, {SpellSource.Trainer})
    :AddReagent(11082, 2) -- Greater Astral Essence
    :Save()

module:NewCraft(13626, "Enchant Chest - Minor Stats", 150, {SpellSource.Trainer})
    :AddReagent(11082, 1) -- Greater Astral Essence
    :AddReagent(11083, 1) -- Soul Dust
    :AddReagent(11084, 1) -- Large Glimmering Shard
    :Save()

module:NewCraft(13628, "Runed Golden Rod", 150, {SpellSource.Trainer})
    :SetResult(11130)
    :AddReagent(5500, 1) -- Iridescent Pearl
    :AddReagent(11082, 2) -- Greater Astral Essence
    :AddReagent(11083, 2) -- Soul Dust
    :AddReagent(11128, 1) -- Golden Rod
    :Save()

module:NewCraft(13631, "Enchant Shield - Lesser Stamina", 155, {SpellSource.Trainer})
    :AddReagent(11083, 1) -- Soul Dust
    :AddReagent(11134, 1) -- Lesser Mystic Essence
    :Save()

module:NewCraft(13635, "Enchant Cloak - Defense", 155, {SpellSource.Trainer})
    :AddReagent(11083, 3) -- Soul Dust
    :AddReagent(11138, 1) -- Small Glowing Shard
    :Save()

module:NewCraft(13637, "Enchant Boots - Lesser Agility", 160, {SpellSource.Trainer})
    :AddReagent(11083, 1) -- Soul Dust
    :AddReagent(11134, 1) -- Lesser Mystic Essence
    :Save()

module:NewCraft(13640, "Enchant Chest - Greater Health", 160, {SpellSource.Trainer})
    :AddReagent(11083, 3) -- Soul Dust
    :Save()

module:NewCraft(13642, "Enchant Bracer - Spirit", 165, {SpellSource.Trainer})
    :AddReagent(11134, 1) -- Lesser Mystic Essence
    :Save()

module:NewCraft(13644, "Enchant Boots - Lesser Stamina", 170, {SpellSource.Trainer})
    :AddReagent(11083, 4) -- Soul Dust
    :Save()

module:NewCraft(13646, "Enchant Bracer - Lesser Deflection", 170, {})
    :AddRecipe(11163, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(11083, 2) -- Soul Dust
    :AddReagent(11134, 1) -- Lesser Mystic Essence
    :Save()

module:NewCraft(13648, "Enchant Bracer - Stamina", 170, {SpellSource.Trainer})
    :AddReagent(11083, 6) -- Soul Dust
    :Save()

module:NewCraft(13653, "Enchant Weapon - Lesser Beastslayer", 175, {})
    :AddRecipe(11164, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(5637, 2) -- Large Fang
    :AddReagent(11134, 1) -- Lesser Mystic Essence
    :AddReagent(11138, 1) -- Small Glowing Shard
    :Save()

module:NewCraft(13655, "Enchant Weapon - Lesser Elemental Slayer", 175, {})
    :AddRecipe(11165, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(7067, 1) -- Elemental Earth
    :AddReagent(11134, 1) -- Lesser Mystic Essence
    :AddReagent(11138, 1) -- Small Glowing Shard
    :Save()

module:NewCraft(13657, "Enchant Cloak - Fire Resistance", 175, {SpellSource.Trainer})
    :AddReagent(7068, 1) -- Elemental Fire
    :AddReagent(11134, 1) -- Lesser Mystic Essence
    :Save()

module:NewCraft(13659, "Enchant Shield - Spirit", 180, {SpellSource.Trainer})
    :AddReagent(11135, 1) -- Greater Mystic Essence
    :AddReagent(11137, 1) -- Vision Dust
    :Save()

module:NewCraft(13661, "Enchant Bracer - Strength", 180, {SpellSource.Trainer})
    :AddReagent(11137, 1) -- Vision Dust
    :Save()

module:NewCraft(13663, "Enchant Chest - Greater Mana", 185, {SpellSource.Trainer})
    :AddReagent(11135, 1) -- Greater Mystic Essence
    :Save()

module:NewCraft(13687, "Enchant Boots - Lesser Spirit", 190, {})
    :AddRecipe(11167, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(11134, 2) -- Lesser Mystic Essence
    :AddReagent(11135, 1) -- Greater Mystic Essence
    :Save()

module:NewCraft(13689, "Enchant Shield - Lesser Block", 195, {})
    :AddRecipe(11168, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(11135, 2) -- Greater Mystic Essence
    :AddReagent(11137, 2) -- Vision Dust
    :AddReagent(11139, 1) -- Large Glowing Shard
    :Save()

module:NewCraft(13693, "Enchant Weapon - Striking", 195, {SpellSource.Trainer})
    :AddReagent(11135, 2) -- Greater Mystic Essence
    :AddReagent(11139, 1) -- Large Glowing Shard
    :Save()

module:NewCraft(13695, "Enchant 2H Weapon - Impact", 200, {SpellSource.Trainer})
    :AddReagent(11137, 4) -- Vision Dust
    :AddReagent(11139, 1) -- Large Glowing Shard
    :Save()

module:NewCraft(13698, "Enchant Gloves - Skinning", 200, {})
    :AddRecipe(11166, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7392, 3) -- Green Whelp Scale
    :AddReagent(11137, 1) -- Vision Dust
    :Save()

module:NewCraft(13700, "Enchant Chest - Lesser Stats", 200, {SpellSource.Trainer})
    :AddReagent(11135, 2) -- Greater Mystic Essence
    :AddReagent(11137, 2) -- Vision Dust
    :AddReagent(11139, 1) -- Large Glowing Shard
    :Save()

module:NewCraft(13702, "Runed Truesilver Rod", 200, {SpellSource.Trainer})
    :SetResult(11145)
    :AddReagent(7971, 1) -- Black Pearl
    :AddReagent(11135, 2) -- Greater Mystic Essence
    :AddReagent(11137, 2) -- Vision Dust
    :AddReagent(11144, 1) -- Truesilver Rod
    :Save()

module:NewCraft(13746, "Enchant Cloak - Greater Defense", 205, {SpellSource.Trainer})
    :AddReagent(11137, 3) -- Vision Dust
    :Save()

module:NewCraft(13794, "Enchant Cloak - Resistance", 205, {SpellSource.Trainer})
    :AddReagent(11174, 1) -- Lesser Nether Essence
    :Save()

module:NewCraft(13815, "Enchant Gloves - Agility", 210, {SpellSource.Trainer})
    :AddReagent(11137, 1) -- Vision Dust
    :AddReagent(11174, 1) -- Lesser Nether Essence
    :Save()

module:NewCraft(13817, "Enchant Shield - Stamina", 210, {})
    :AddRecipe(11202, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(11137, 5) -- Vision Dust
    :Save()

module:NewCraft(13822, "Enchant Bracer - Intellect", 210, {SpellSource.Trainer})
    :AddReagent(11174, 2) -- Lesser Nether Essence
    :Save()

module:NewCraft(13836, "Enchant Boots - Stamina", 215, {SpellSource.Trainer})
    :AddReagent(11137, 5) -- Vision Dust
    :Save()

module:NewCraft(13841, "Enchant Gloves - Advanced Mining", 215, {})
    :AddRecipe(11203, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(6037, 3) -- Truesilver Bar
    :AddReagent(11137, 3) -- Vision Dust
    :Save()

module:NewCraft(13846, "Enchant Bracer - Greater Spirit", 220, {})
    :AddRecipe(11204, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(11137, 1) -- Vision Dust
    :AddReagent(11174, 3) -- Lesser Nether Essence
    :Save()

module:NewCraft(13858, "Enchant Chest - Superior Health", 220, {SpellSource.Trainer})
    :AddReagent(11137, 6) -- Vision Dust
    :Save()

module:NewCraft(13868, "Enchant Gloves - Advanced Herbalism", 225, {})
    :AddRecipe(11205, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8838, 3) -- Sungrass
    :AddReagent(11137, 3) -- Vision Dust
    :Save()

module:NewCraft(13882, "Enchant Cloak - Lesser Agility", 225, {})
    :AddRecipe(11206, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(11174, 2) -- Lesser Nether Essence
    :Save()

module:NewCraft(13887, "Enchant Gloves - Strength", 225, {SpellSource.Trainer})
    :AddReagent(11137, 3) -- Vision Dust
    :AddReagent(11174, 2) -- Lesser Nether Essence
    :Save()

module:NewCraft(13890, "Enchant Boots - Minor Speed", 225, {SpellSource.Trainer})
    :AddReagent(7909, 1) -- Aquamarine
    :AddReagent(11174, 1) -- Lesser Nether Essence
    :AddReagent(11177, 1) -- Small Radiant Shard
    :Save()

module:NewCraft(13898, "Enchant Weapon - Fiery Weapon", 265, {})
    :AddRecipe(11207, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7078, 1) -- Essence of Fire
    :AddReagent(11177, 4) -- Small Radiant Shard
    :Save()

module:NewCraft(13905, "Enchant Shield - Greater Spirit", 230, {SpellSource.Trainer})
    :AddReagent(11175, 1) -- Greater Nether Essence
    :AddReagent(11176, 2) -- Dream Dust
    :Save()

module:NewCraft(13915, "Enchant Weapon - Demonslaying", 230, {})
    :AddRecipe(11208, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(9224, 1) -- Elixir of Demonslaying
    :AddReagent(11176, 2) -- Dream Dust
    :AddReagent(11177, 1) -- Small Radiant Shard
    :Save()

module:NewCraft(13917, "Enchant Chest - Superior Mana", 230, {SpellSource.Trainer})
    :AddReagent(11174, 2) -- Lesser Nether Essence
    :AddReagent(11175, 1) -- Greater Nether Essence
    :Save()

module:NewCraft(13931, "Enchant Bracer - Deflection", 235, {})
    :AddRecipe(11223, Quality.Uncommon, {RecipeSource.Vendor})
    :AddReagent(11175, 1) -- Greater Nether Essence
    :AddReagent(11176, 2) -- Dream Dust
    :Save()

module:NewCraft(13933, "Enchant Shield - Frost Resistance", 235, {})
    :AddRecipe(11224, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3829, 1) -- Frost Oil
    :AddReagent(11178, 1) -- Large Radiant Shard
    :Save()

module:NewCraft(13935, "Enchant Boots - Agility", 235, {SpellSource.Trainer})
    :AddReagent(11175, 2) -- Greater Nether Essence
    :Save()

module:NewCraft(13937, "Enchant 2H Weapon - Greater Impact", 240, {SpellSource.Trainer})
    :AddReagent(11176, 2) -- Dream Dust
    :AddReagent(11178, 2) -- Large Radiant Shard
    :Save()

module:NewCraft(13939, "Enchant Bracer - Greater Strength", 240, {SpellSource.Trainer})
    :AddReagent(11175, 1) -- Greater Nether Essence
    :AddReagent(11176, 2) -- Dream Dust
    :Save()

module:NewCraft(13941, "Enchant Chest - Stats", 245, {SpellSource.Trainer})
    :AddReagent(11175, 2) -- Greater Nether Essence
    :AddReagent(11176, 3) -- Dream Dust
    :AddReagent(11178, 1) -- Large Radiant Shard
    :Save()

module:NewCraft(13943, "Enchant Weapon - Greater Striking", 245, {SpellSource.Trainer})
    :AddReagent(11175, 2) -- Greater Nether Essence
    :AddReagent(11178, 2) -- Large Radiant Shard
    :Save()

module:NewCraft(13945, "Enchant Bracer - Greater Stamina", 245, {})
    :AddRecipe(11225, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(11176, 5) -- Dream Dust
    :Save()

module:NewCraft(13947, "Enchant Gloves - Riding Skill", 250, {})
    :AddRecipe(11226, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(11176, 3) -- Dream Dust
    :AddReagent(11178, 2) -- Large Radiant Shard
    :Save()

module:NewCraft(13948, "Enchant Gloves - Minor Haste", 250, {SpellSource.Trainer})
    :AddReagent(8153, 2) -- Wildvine
    :AddReagent(11178, 2) -- Large Radiant Shard
    :Save()

module:NewCraft(14293, "Lesser Magic Wand", 10, {SpellSource.Trainer})
    :SetResult(11287)
    :AddReagent(4470, 1) -- Simple Wood
    :AddReagent(10938, 1) -- Lesser Magic Essence
    :Save()

module:NewCraft(14807, "Greater Magic Wand", 70, {SpellSource.Trainer})
    :SetResult(11288)
    :AddReagent(4470, 1) -- Simple Wood
    :AddReagent(10939, 1) -- Greater Magic Essence
    :Save()

module:NewCraft(14809, "Lesser Mystic Wand", 155, {SpellSource.Trainer})
    :SetResult(11289)
    :AddReagent(11083, 1) -- Soul Dust
    :AddReagent(11134, 1) -- Lesser Mystic Essence
    :AddReagent(11291, 1) -- Star Wood
    :Save()

module:NewCraft(14810, "Greater Mystic Wand", 175, {SpellSource.Trainer})
    :SetResult(11290)
    :AddReagent(11135, 1) -- Greater Mystic Essence
    :AddReagent(11137, 1) -- Vision Dust
    :AddReagent(11291, 1) -- Star Wood
    :Save()

module:NewCraft(15596, "Smoking Heart of the Mountain", 265, {})
    :SetResult(11811)
    :AddRecipe(11813, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7078, 1) -- Essence of Fire
    :AddReagent(11382, 1) -- Blood of the Mountain
    :AddReagent(14343, 3) -- Small Brilliant Shard
    :Save()

module:NewCraft(17180, "Enchanted Thorium", 250, {SpellSource.Trainer})
    :SetResult(12655)
    :AddReagent(11176, 3) -- Dream Dust
    :AddReagent(12359, 1) -- Thorium Bar
    :Save()

module:NewCraft(17181, "Enchanted Leather", 250, {SpellSource.Trainer})
    :SetResult(12810)
    :AddReagent(8170, 1) -- Rugged Leather
    :AddReagent(16202, 1) -- Lesser Eternal Essence
    :Save()

module:NewCraft(20008, "Enchant Bracer - Greater Intellect", 255, {})
    :AddRecipe(16214, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(16202, 3) -- Lesser Eternal Essence
    :Save()

module:NewCraft(20009, "Enchant Bracer - Superior Spirit", 270, {})
    :AddRecipe(16218, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(11176, 10) -- Dream Dust
    :AddReagent(16202, 3) -- Lesser Eternal Essence
    :Save()

module:NewCraft(20010, "Enchant Bracer - Superior Strength", 295, {})
    :AddRecipe(16246, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(16203, 6) -- Greater Eternal Essence
    :AddReagent(16204, 6) -- Illusion Dust
    :Save()

module:NewCraft(20011, "Enchant Bracer - Superior Stamina", 300, {})
    :AddRecipe(16251, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(16204, 15) -- Illusion Dust
    :Save()

module:NewCraft(20012, "Enchant Gloves - Greater Agility", 270, {})
    :AddRecipe(16219, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(16202, 3) -- Lesser Eternal Essence
    :AddReagent(16204, 3) -- Illusion Dust
    :Save()

module:NewCraft(20013, "Enchant Gloves - Greater Strength", 295, {})
    :AddRecipe(16244, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(16203, 4) -- Greater Eternal Essence
    :AddReagent(16204, 4) -- Illusion Dust
    :Save()

module:NewCraft(20014, "Enchant Cloak - Greater Resistance", 265, {})
    :AddRecipe(16216, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7075, 1) -- Core of Earth
    :AddReagent(7077, 1) -- Heart of Fire
    :AddReagent(7079, 1) -- Globe of Water
    :AddReagent(7081, 1) -- Breath of Wind
    :AddReagent(7972, 1) -- Ichor of Undeath
    :AddReagent(16202, 2) -- Lesser Eternal Essence
    :Save()

module:NewCraft(20015, "Enchant Cloak - Superior Defense", 285, {})
    :AddRecipe(16224, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(16204, 8) -- Illusion Dust
    :Save()

module:NewCraft(20016, "Enchant Shield - Superior Spirit", 280, {})
    :AddRecipe(16222, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(16203, 2) -- Greater Eternal Essence
    :AddReagent(16204, 4) -- Illusion Dust
    :Save()

module:NewCraft(20017, "Enchant Shield - Greater Stamina", 265, {})
    :AddRecipe(16217, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(11176, 10) -- Dream Dust
    :Save()

module:NewCraft(20020, "Enchant Boots - Greater Stamina", 260, {})
    :AddRecipe(16215, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(11176, 10) -- Dream Dust
    :Save()

module:NewCraft(20023, "Enchant Boots - Greater Agility", 295, {})
    :AddRecipe(16245, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(16203, 8) -- Greater Eternal Essence
    :Save()

module:NewCraft(20024, "Enchant Boots - Spirit", 275, {})
    :AddRecipe(16220, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(16202, 1) -- Lesser Eternal Essence
    :AddReagent(16203, 2) -- Greater Eternal Essence
    :Save()

module:NewCraft(20025, "Enchant Chest - Greater Stats", 300, {})
    :AddRecipe(16253, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(14344, 4) -- Large Brilliant Shard
    :AddReagent(16203, 10) -- Greater Eternal Essence
    :AddReagent(16204, 15) -- Illusion Dust
    :Save()

module:NewCraft(20026, "Enchant Chest - Major Health", 275, {})
    :AddRecipe(16221, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(14343, 1) -- Small Brilliant Shard
    :AddReagent(16204, 6) -- Illusion Dust
    :Save()

module:NewCraft(20028, "Enchant Chest - Major Mana", 290, {})
    :AddRecipe(16242, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(14343, 1) -- Small Brilliant Shard
    :AddReagent(16203, 3) -- Greater Eternal Essence
    :Save()

module:NewCraft(20029, "Enchant Weapon - Icy Chill", 285, {})
    :AddRecipe(16223, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7080, 1) -- Essence of Water
    :AddReagent(7082, 1) -- Essence of Air
    :AddReagent(13467, 1) -- Icecap
    :AddReagent(14343, 4) -- Small Brilliant Shard
    :Save()

module:NewCraft(20030, "Enchant 2H Weapon - Superior Impact", 295, {})
    :AddRecipe(16247, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(14344, 4) -- Large Brilliant Shard
    :AddReagent(16204, 10) -- Illusion Dust
    :Save()

module:NewCraft(20031, "Enchant Weapon - Superior Striking", 300, {})
    :AddRecipe(16250, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(14344, 2) -- Large Brilliant Shard
    :AddReagent(16203, 10) -- Greater Eternal Essence
    :Save()

module:NewCraft(20032, "Enchant Weapon - Lifestealing", 300, {})
    :AddRecipe(16254, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(12803, 6) -- Living Essence
    :AddReagent(12808, 6) -- Essence of Undeath
    :AddReagent(14344, 6) -- Large Brilliant Shard
    :Save()

module:NewCraft(20033, "Enchant Weapon - Unholy Weapon", 295, {})
    :AddRecipe(16248, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(12808, 4) -- Essence of Undeath
    :AddReagent(14344, 4) -- Large Brilliant Shard
    :Save()

module:NewCraft(20034, "Enchant Weapon - Crusader", 300, {})
    :AddRecipe(16252, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(12811, 2) -- Righteous Orb
    :AddReagent(14344, 4) -- Large Brilliant Shard
    :Save()

module:NewCraft(20035, "Enchant 2H Weapon - Major Spirit", 300, {})
    :AddRecipe(16255, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(14344, 2) -- Large Brilliant Shard
    :AddReagent(16203, 12) -- Greater Eternal Essence
    :Save()

module:NewCraft(20036, "Enchant 2H Weapon - Major Intellect", 300, {})
    :AddRecipe(16249, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(14344, 2) -- Large Brilliant Shard
    :AddReagent(16203, 12) -- Greater Eternal Essence
    :Save()

module:NewCraft(20051, "Runed Arcanite Rod", 290, {})
    :SetResult(16207)
    :AddRecipe(16243, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(13926, 1) -- Golden Pearl
    :AddReagent(14343, 4) -- Small Brilliant Shard
    :AddReagent(14344, 2) -- Large Brilliant Shard
    :AddReagent(16203, 4) -- Greater Eternal Essence
    :AddReagent(16204, 10) -- Illusion Dust
    :AddReagent(16206, 1) -- Arcanite Rod
    :Save()

module:NewCraft(21931, "Enchant Weapon - Winter's Might", 190, {})
    :AddRecipe(17725, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(3819, 2) -- Wintersbite
    :AddReagent(11135, 3) -- Greater Mystic Essence
    :AddReagent(11137, 3) -- Vision Dust
    :AddReagent(11139, 1) -- Large Glowing Shard
    :Save()

module:NewCraft(22749, "Enchant Weapon - Spell Power", 300, {})
    :AddRecipe(18259, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7078, 4) -- Essence of Fire
    :AddReagent(7080, 4) -- Essence of Water
    :AddReagent(7082, 4) -- Essence of Air
    :AddReagent(13926, 2) -- Golden Pearl
    :AddReagent(14344, 4) -- Large Brilliant Shard
    :AddReagent(16203, 12) -- Greater Eternal Essence
    :Save()

module:NewCraft(22750, "Enchant Weapon - Healing Power", 300, {})
    :AddRecipe(18260, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7080, 6) -- Essence of Water
    :AddReagent(12803, 6) -- Living Essence
    :AddReagent(12811, 1) -- Righteous Orb
    :AddReagent(14344, 4) -- Large Brilliant Shard
    :AddReagent(16203, 8) -- Greater Eternal Essence
    :Save()

module:NewCraft(23799, "Enchant Weapon - Strength", 290, {})
    :AddRecipe(19444, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7076, 2) -- Essence of Earth
    :AddReagent(14344, 6) -- Large Brilliant Shard
    :AddReagent(16203, 6) -- Greater Eternal Essence
    :AddReagent(16204, 4) -- Illusion Dust
    :Save()

module:NewCraft(23800, "Enchant Weapon - Agility", 290, {})
    :AddRecipe(19445, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7082, 2) -- Essence of Air
    :AddReagent(14344, 6) -- Large Brilliant Shard
    :AddReagent(16203, 6) -- Greater Eternal Essence
    :AddReagent(16204, 4) -- Illusion Dust
    :Save()

module:NewCraft(23801, "Enchant Bracer - Mana Regeneration", 290, {})
    :AddRecipe(19446, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7080, 2) -- Essence of Water
    :AddReagent(16203, 4) -- Greater Eternal Essence
    :AddReagent(16204, 16) -- Illusion Dust
    :Save()

module:NewCraft(23802, "Enchant Bracer - Healing Power", 300, {})
    :AddRecipe(19447, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12803, 6) -- Living Essence
    :AddReagent(14344, 2) -- Large Brilliant Shard
    :AddReagent(16203, 4) -- Greater Eternal Essence
    :AddReagent(16204, 20) -- Illusion Dust
    :Save()

module:NewCraft(23803, "Enchant Weapon - Mighty Spirit", 300, {})
    :AddRecipe(19448, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(14344, 10) -- Large Brilliant Shard
    :AddReagent(16203, 8) -- Greater Eternal Essence
    :AddReagent(16204, 15) -- Illusion Dust
    :Save()

module:NewCraft(23804, "Enchant Weapon - Mighty Intellect", 300, {})
    :AddRecipe(19449, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(14344, 15) -- Large Brilliant Shard
    :AddReagent(16203, 12) -- Greater Eternal Essence
    :AddReagent(16204, 20) -- Illusion Dust
    :Save()

module:NewCraft(25072, "Enchant Gloves - Threat", 300, {})
    :AddRecipe(20726, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(14344, 6) -- Large Brilliant Shard
    :AddReagent(18512, 8) -- Larval Acid
    :AddReagent(20725, 4) -- Nexus Crystal
    :Save()

module:NewCraft(25073, "Enchant Gloves - Shadow Power", 300, {})
    :AddRecipe(20727, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(12808, 6) -- Essence of Undeath
    :AddReagent(14344, 10) -- Large Brilliant Shard
    :AddReagent(20725, 3) -- Nexus Crystal
    :Save()

module:NewCraft(25074, "Enchant Gloves - Frost Power", 300, {})
    :AddRecipe(20728, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7080, 4) -- Essence of Water
    :AddReagent(14344, 10) -- Large Brilliant Shard
    :AddReagent(20725, 3) -- Nexus Crystal
    :Save()

module:NewCraft(25078, "Enchant Gloves - Fire Power", 300, {})
    :AddRecipe(20729, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7078, 4) -- Essence of Fire
    :AddReagent(14344, 10) -- Large Brilliant Shard
    :AddReagent(20725, 2) -- Nexus Crystal
    :Save()

module:NewCraft(25079, "Enchant Gloves - Healing Power", 300, {})
    :AddRecipe(20730, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(12811, 1) -- Righteous Orb
    :AddReagent(14344, 8) -- Large Brilliant Shard
    :AddReagent(20725, 3) -- Nexus Crystal
    :Save()

module:NewCraft(25080, "Enchant Gloves - Superior Agility", 300, {})
    :AddRecipe(20731, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7082, 4) -- Essence of Air
    :AddReagent(14344, 8) -- Large Brilliant Shard
    :AddReagent(20725, 3) -- Nexus Crystal
    :Save()

module:NewCraft(25081, "Enchant Cloak - Greater Fire Resistance", 300, {})
    :AddRecipe(20732, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7078, 4) -- Essence of Fire
    :AddReagent(14344, 8) -- Large Brilliant Shard
    :AddReagent(20725, 3) -- Nexus Crystal
    :Save()

module:NewCraft(25082, "Enchant Cloak - Greater Nature Resistance", 300, {})
    :AddRecipe(20733, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12803, 4) -- Living Essence
    :AddReagent(14344, 8) -- Large Brilliant Shard
    :AddReagent(20725, 2) -- Nexus Crystal
    :Save()

module:NewCraft(25083, "Enchant Cloak - Stealth", 300, {})
    :AddRecipe(20734, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(13468, 2) -- Black Lotus
    :AddReagent(14344, 8) -- Large Brilliant Shard
    :AddReagent(20725, 3) -- Nexus Crystal
    :Save()

module:NewCraft(25084, "Enchant Cloak - Subtlety", 300, {})
    :AddRecipe(20735, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(11754, 2) -- Black Diamond
    :AddReagent(14344, 6) -- Large Brilliant Shard
    :AddReagent(20725, 4) -- Nexus Crystal
    :Save()

module:NewCraft(25086, "Enchant Cloak - Dodge", 300, {})
    :AddRecipe(20736, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(12809, 8) -- Guardian Stone
    :AddReagent(14344, 8) -- Large Brilliant Shard
    :AddReagent(20725, 3) -- Nexus Crystal
    :Save()

module:NewCraft(25124, "Minor Wizard Oil", 45, {})
    :SetResult(20744)
    :AddRecipe(20758, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3371, 1) -- Empty Vial
    :AddReagent(10940, 2) -- Strange Dust
    :AddReagent(17034, 1) -- Maple Seed
    :Save()

module:NewCraft(25125, "Minor Mana Oil", 150, {})
    :SetResult(20745)
    :AddRecipe(20752, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(11083, 3) -- Soul Dust
    :AddReagent(17034, 2) -- Maple Seed
    :Save()

module:NewCraft(25126, "Lesser Wizard Oil", 200, {})
    :SetResult(20746)
    :AddRecipe(20753, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3372, 1) -- Leaded Vial
    :AddReagent(11137, 3) -- Vision Dust
    :AddReagent(17035, 2) -- Stranglethorn Seed
    :Save()

module:NewCraft(25127, "Lesser Mana Oil", 250, {})
    :SetResult(20747)
    :AddRecipe(20754, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8831, 2) -- Purple Lotus
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(11176, 3) -- Dream Dust
    :Save()

module:NewCraft(25128, "Wizard Oil", 275, {})
    :SetResult(20750)
    :AddRecipe(20755, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4625, 2) -- Firebloom
    :AddReagent(8925, 1) -- Crystal Vial
    :AddReagent(16204, 3) -- Illusion Dust
    :Save()

module:NewCraft(25129, "Brilliant Wizard Oil", 300, {})
    :SetResult(20749)
    :AddRecipe(20756, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4625, 3) -- Firebloom
    :AddReagent(14344, 2) -- Large Brilliant Shard
    :AddReagent(18256, 1) -- Imbued Vial
    :Save()

module:NewCraft(25130, "Brilliant Mana Oil", 300, {})
    :SetResult(20748)
    :AddRecipe(20757, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8831, 3) -- Purple Lotus
    :AddReagent(14344, 2) -- Large Brilliant Shard
    :AddReagent(18256, 1) -- Imbued Vial
    :Save()

module:NewCraft(27837, "Enchant 2H Weapon - Agility", 290, {})
    :AddRecipe(22392, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(7082, 4) -- Essence of Air
    :AddReagent(14344, 10) -- Large Brilliant Shard
    :AddReagent(16203, 6) -- Greater Eternal Essence
    :AddReagent(16204, 14) -- Illusion Dust
    :Save()

if lib.env.is_turtle_wow then
    module:NewCraft(13915, "Enchant Weapon - Demonslaying", 230, {})
        :AddRecipe(11208, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
        :AddReagent(9224, 1) -- Elixir of Demonslaying
        :AddReagent(11176, 2) -- Dream Dust
        :AddReagent(11177, 1) -- Small Radiant Shard
        :Save()

    module:NewCraft(22434, "Charged Scale of Onyxia", 300, {SpellSource.Quest})
        :SetResult(17968)
        :AddReagent(16203, 2) -- Greater Eternal Essence
        :AddReagent(16204, 2) -- Illusion Dust
        :AddReagent(17967, 1) -- Refined Scale of Onyxia
        :Save()

    module:NewCraft(41758, "Enchanted Gemstone Oil", 275, {})
        :SetResult(55248)
        :AddRecipe(70198, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(11175, 1) -- Greater Nether Essence
        :AddReagent(16203, 1) -- Greater Eternal Essence
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(45071, "Enchant 2H Weapon - Minor Intellect", 75, {})
        :AddRecipe(51286, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(10939, 2) -- Greater Magic Essence
        :AddReagent(10940, 4) -- Strange Dust
        :Save()

    module:NewCraft(46086, "Enchant Gloves - Major Strength", 300, {})
        :AddRecipe(53017, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(7076, 4) -- Essence of Earth
        :AddReagent(7077, 4) -- Heart of Fire
        :AddReagent(14344, 4) -- Large Brilliant Shard
        :AddReagent(20725, 2) -- Nexus Crystal
        :Save()

    module:NewCraft(46601, "Enchant Gloves - Arcane Power", 300, {})
        :AddRecipe(70001, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(14344, 10) -- Large Brilliant Shard
        :AddReagent(16203, 4) -- Greater Eternal Essence
        :AddReagent(20725, 2) -- Nexus Crystal
        :Save()

    module:NewCraft(46602, "Enchant Gloves - Nature Power", 300, {})
        :AddRecipe(70000, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(7076, 2) -- Essence of Earth
        :AddReagent(7082, 2) -- Essence of Air
        :AddReagent(14344, 10) -- Large Brilliant Shard
        :AddReagent(20725, 2) -- Nexus Crystal
        :Save()

    module:NewCraft(57028, "Enchant Bracer - Spell Power", 300, {})
        :AddRecipe(60966, Quality.Rare, {RecipeSource.Vendor})
        :AddReagent(7076, 3) -- Essence of Earth
        :AddReagent(7082, 3) -- Essence of Air
        :AddReagent(14344, 2) -- Large Brilliant Shard
        :AddReagent(16204, 10) -- Illusion Dust
        :Save()

    module:NewCraft(57030, "Enchant Bracer - Greater Agility", 300, {})
        :AddRecipe(60969, Quality.Rare, {RecipeSource.Vendor})
        :AddReagent(7076, 2) -- Essence of Earth
        :AddReagent(7082, 2) -- Essence of Air
        :AddReagent(14344, 3) -- Large Brilliant Shard
        :AddReagent(16203, 1) -- Greater Eternal Essence
        :Save()

    module:NewCraft(57117, "Enchant Cloak - Greater Arcane Resistance", 300, {})
        :AddRecipe(61180, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(14344, 6) -- Large Brilliant Shard
        :AddReagent(16204, 20) -- Illusion Dust
        :AddReagent(20725, 2) -- Nexus Crystal
        :Save()

    module:NewCraft(57119, "Enchant Chest - Mighty Mana", 300, {})
        :AddRecipe(61217, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(14344, 6) -- Large Brilliant Shard
        :AddReagent(16204, 40) -- Illusion Dust
        :Save()

    module:NewCraft(57127, "Enchant Boots - Superior Stamina", 300, {})
        :AddRecipe(61219, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(8846, 2) -- Gromsblood
        :AddReagent(16203, 6) -- Greater Eternal Essence
        :Save()

    module:NewCraft(57142, "Enchant Boots - Greater Spirit", 300, {})
        :AddRecipe(61220, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(16203, 5) -- Greater Eternal Essence
        :Save()

    module:NewCraft(57144, "Enchant Bracer - Greater Deflection", 300, {})
        :AddRecipe(61221, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(7076, 2) -- Essence of Earth
        :AddReagent(14344, 1) -- Large Brilliant Shard
        :AddReagent(16203, 4) -- Greater Eternal Essence
        :AddReagent(61673, 2) -- Arcane Essence
        :Save()

    module:NewCraft(57146, "Enchant Bracer - Vampirism", 185, {})
        :AddRecipe(61738, Quality.Uncommon, {RecipeSource.Drop, RecipeSource.Vendor})
        :AddReagent(5637, 2) -- Large Fang
        :AddReagent(11135, 1) -- Greater Mystic Essence
        :Save()

    module:NewCraft(57148, "Enchant Boots - Vampirism", 300, {})
        :AddRecipe(61739, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(12808, 4) -- Essence of Undeath
        :AddReagent(14344, 4) -- Large Brilliant Shard
        :AddReagent(16204, 10) -- Illusion Dust
        :AddReagent(19933, 8) -- Glowing Scorpid Blood
        :Save()

    module:NewCraft(57518, "Eternal Dreamstone Shard", 300, {})
        :SetResult(61732)
        :AddRecipe(61733, Quality.Legendary, {RecipeSource.Drop})
        :AddReagent(12803, 80) -- Living Essence
        :AddReagent(13468, 5) -- Black Lotus
        :AddReagent(20725, 10) -- Nexus Crystal
        :AddReagent(61197, 5) -- Fading Dream Fragment
        :AddReagent(61199, 25) -- Bright Dream Shard
        :AddReagent(61673, 25) -- Arcane Essence
        :Save()
end
