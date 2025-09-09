local lib = LibCraftsGetLibrary()
local name, version = "Professions-Jewelcrafting", 14
local module = --[[---@type LcProfessionModule]] lib:RegisterProfessionModule(name, version, "Jewelcrafting")
if not module then return end

local Quality = lib.constants.qualities
local SpellSource = lib.constants.spell_sources
local RecipeSource = lib.constants.recipe_sources

if lib.env.is_turtle_wow then
    module:NewCraft(93, "Refined Dwarven Necklace", 185, {})
        :SetResult(156)
        :AddRecipe(76, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(3860, 12) -- Mithril Bar
        :AddReagent(55249, 3) -- Crystal Quartz
        :AddReagent(6371, 3) -- Fire Oil
        :AddReagent(3466, 2) -- Strong Flux
        :AddReagent(55152, 2) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(104, "Ancient Dwarven Gemstone", 185, {})
        :SetResult(56112)
        :AddRecipe(77, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(3860, 1) -- Mithril Bar
        :AddReagent(55249, 1) -- Crystal Quartz
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(29728, "Rough Gritted Paper", 1, {SpellSource.LearnedAutomatically})
        :SetResult(55150)
        :AddReagent(2589, 1) -- Linen Cloth
        :AddReagent(2835, 1) -- Rough Stone
        :Save()

    module:NewCraft(29730, "Rough Copper Ring", 1, {SpellSource.LearnedAutomatically})
        :SetResult(55156)
        :AddReagent(2840, 2) -- Copper Bar
        :Save()

    module:NewCraft(29732, "Copper Bangle", 1, {SpellSource.LearnedAutomatically})
        :SetResult(55157)
        :AddReagent(2840, 4) -- Copper Bar
        :Save()

    module:NewCraft(36905, "Grandstaff of the Shen'dralar Elder", 300, {})
        :SetResult(55060)
        :AddRecipe(55059, Quality.Epic, {RecipeSource.Vendor})
        :AddReagent(55252, 1) -- Imperial Topaz
        :AddReagent(12360, 2) -- Arcanite Bar
        :AddReagent(12655, 16) -- Enchanted Thorium Bar
        :AddReagent(20725, 4) -- Nexus Crystal
        :AddReagent(11291, 20) -- Star Wood
        :AddReagent(12800, 6) -- Azerothian Diamond
        :AddReagent(55248, 4) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41001, "Bright Copper Ring", 15, {SpellSource.Trainer})
        :SetResult(55158)
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(55245, 1) -- Polishing Oil
        :Save()

    module:NewCraft(41005, "Sturdy Copper Ring", 25, {SpellSource.Trainer})
        :SetResult(55159)
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(2840, 1) -- Copper Bar
        :AddReagent(55150, 2) -- Rough Gritted Paper
        :Save()

    module:NewCraft(41007, "Inlaid Copper Ring", 35, {SpellSource.Trainer})
        :SetResult(55160)
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(55245, 1) -- Polishing Oil
        :AddReagent(55150, 4) -- Rough Gritted Paper
        :AddReagent(818, 1) -- Tigerseye
        :Save()

    module:NewCraft(41009, "Copper Staff", 40, {SpellSource.Trainer})
        :SetResult(81092)
        :AddReagent(2840, 4) -- Copper Bar
        :AddReagent(55245, 1) -- Polishing Oil
        :Save()

    module:NewCraft(41011, "Encrusted Copper Bangle", 50, {SpellSource.Trainer})
        :SetResult(55161)
        :AddReagent(2840, 4) -- Copper Bar
        :AddReagent(55245, 2) -- Polishing Oil
        :AddReagent(774, 1) -- Malachite
        :Save()

    module:NewCraft(41013, "Lesser Fortification Ring", 50, {SpellSource.Trainer})
        :SetResult(55162)
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(5997, 1) -- Elixir of Minor Defense
        :AddReagent(774, 1) -- Malachite
        :Save()

    module:NewCraft(41015, "Tigercrest Ring", 50, {SpellSource.Trainer})
        :SetResult(55163)
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(55150, 1) -- Rough Gritted Paper
        :AddReagent(55245, 1) -- Polishing Oil
        :AddReagent(818, 1) -- Tigerseye
        :Save()

    module:NewCraft(41017, "Small Pearlstone Staff", 55, {SpellSource.Trainer})
        :SetResult(55165)
        :AddReagent(2840, 10) -- Copper Bar
        :AddReagent(55150, 4) -- Rough Gritted Paper
        :AddReagent(5498, 2) -- Small Lustrous Pearl
        :Save()

    module:NewCraft(41019, "Amber Ring", 60, {SpellSource.Trainer})
        :SetResult(55166)
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(55150, 1) -- Rough Gritted Paper
        :AddReagent(81094, 1) -- Amber Topaz
        :Save()

    module:NewCraft(41021, "Azure Ring", 60, {SpellSource.Trainer})
        :SetResult(55167)
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(55245, 1) -- Polishing Oil
        :AddReagent(1210, 1) -- Shadowgem
        :AddReagent(159, 5) -- Refreshing Spring Water
        :Save()

    module:NewCraft(41023, "Bright Copper Necklace", 65, {SpellSource.Trainer})
        :SetResult(81031)
        :AddReagent(2840, 6) -- Copper Bar
        :AddReagent(774, 2) -- Malachite
        :AddReagent(55245, 1) -- Polishing Oil
        :Save()

    module:NewCraft(41025, "Softglow Ring", 65, {SpellSource.Trainer})
        :SetResult(55168)
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(774, 1) -- Malachite
        :AddReagent(2880, 1) -- Weak Flux
        :AddReagent(818, 1) -- Tigerseye
        :Save()

    module:NewCraft(41027, "Topaz Studded Ring", 70, {SpellSource.Trainer})
        :SetResult(55170)
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(81094, 2) -- Amber Topaz
        :AddReagent(2880, 1) -- Weak Flux
        :AddReagent(55150, 1) -- Rough Gritted Paper
        :Save()

    module:NewCraft(41029, "Coarse Gritted Paper", 70, {SpellSource.Trainer})
        :SetResult(55151)
        :AddReagent(2592, 2) -- Wool Cloth
        :AddReagent(2836, 2) -- Coarse Stone
        :Save()

    module:NewCraft(41031, "Rough Gemstone Cluster", 25, {SpellSource.Trainer})
        :SetResult(81032)
        :AddReagent(55150, 1) -- Rough Gritted Paper
        :AddReagent(2770, 1) -- Copper Ore
        :Save()

    module:NewCraft(41033, "Lavish Gemmed Necklace", 80, {SpellSource.Trainer})
        :SetResult(55171)
        :AddReagent(2840, 8) -- Copper Bar
        :AddReagent(81094, 1) -- Amber Topaz
        :AddReagent(818, 1) -- Tigerseye
        :AddReagent(2880, 1) -- Weak Flux
        :AddReagent(1210, 1) -- Shadowgem
        :Save()

    module:NewCraft(41035, "Amberstone Pendant", 80, {SpellSource.Trainer})
        :SetResult(55172)
        :AddReagent(2840, 6) -- Copper Bar
        :AddReagent(81094, 3) -- Amber Topaz
        :AddReagent(55245, 1) -- Polishing Oil
        :AddReagent(55150, 4) -- Rough Gritted Paper
        :Save()

    module:NewCraft(41037, "Deepmist Choker", 85, {SpellSource.Trainer})
        :SetResult(55173)
        :AddReagent(2840, 8) -- Copper Bar
        :AddReagent(5498, 1) -- Small Lustrous Pearl
        :AddReagent(818, 1) -- Tigerseye
        :AddReagent(2880, 1) -- Weak Flux
        :AddReagent(55150, 2) -- Rough Gritted Paper
        :Save()

    module:NewCraft(41039, "Rough Bronze Ring", 90, {SpellSource.Trainer})
        :SetResult(55174)
        :AddReagent(2841, 2) -- Bronze Bar
        :Save()

    module:NewCraft(41041, "Shimmering Bronze Ring", 90, {SpellSource.Trainer})
        :SetResult(41308)
        :AddReagent(55174, 1) -- Rough Bronze Ring
        :AddReagent(55246, 1) -- Shimmering Oil
        :AddReagent(2880, 2) -- Weak Flux
        :AddReagent(55151, 2) -- Coarse Gritted Paper
        :Save()

    module:NewCraft(41043, "Amber Orb", 95, {SpellSource.Trainer})
        :SetResult(41309)
        :AddReagent(2841, 2) -- Bronze Bar
        :AddReagent(81094, 3) -- Amber Topaz
        :AddReagent(55150, 4) -- Rough Gritted Paper
        :AddReagent(55245, 1) -- Polishing Oil
        :Save()

    module:NewCraft(41045, "Encrusted Bronze Staff", 100, {SpellSource.Trainer})
        :SetResult(55175)
        :AddReagent(2841, 8) -- Bronze Bar
        :AddReagent(1210, 1) -- Shadowgem
        :AddReagent(81094, 1) -- Amber Topaz
        :AddReagent(55151, 4) -- Coarse Gritted Paper
        :AddReagent(55245, 2) -- Polishing Oil
        :Save()

    module:NewCraft(41047, "Earthrock Loop", 100, {SpellSource.Trainer})
        :SetResult(55176)
        :AddReagent(55174, 1) -- Rough Bronze Ring
        :AddReagent(2449, 3) -- Earthroot
        :AddReagent(2836, 6) -- Coarse Stone
        :AddReagent(2880, 4) -- Weak Flux
        :Save()

    module:NewCraft(41049, "Bronze Cuffed Bangles", 105, {SpellSource.Trainer})
        :SetResult(41310)
        :AddReagent(2841, 6) -- Bronze Bar
        :AddReagent(2880, 2) -- Weak Flux
        :AddReagent(55245, 2) -- Polishing Oil
        :Save()

    module:NewCraft(41051, "Shadowgem Band", 105, {SpellSource.Trainer})
        :SetResult(41311)
        :AddReagent(55174, 1) -- Rough Bronze Ring
        :AddReagent(1210, 2) -- Shadowgem
        :AddReagent(55246, 1) -- Shimmering Oil
        :Save()

    module:NewCraft(41053, "Bronze Scepter", 110, {SpellSource.Trainer})
        :SetResult(41313)
        :AddReagent(2841, 6) -- Bronze Bar
        :AddReagent(55246, 1) -- Shimmering Oil
        :AddReagent(55151, 4) -- Coarse Gritted Paper
        :Save()

    module:NewCraft(41055, "Pendant of Midnight", 120, {SpellSource.Trainer})
        :SetResult(41312)
        :AddReagent(2841, 6) -- Bronze Bar
        :AddReagent(1210, 3) -- Shadowgem
        :AddReagent(785, 1) -- Mageroyal
        :AddReagent(55246, 1) -- Shimmering Oil
        :Save()

    module:NewCraft(41057, "Agatestone Crown", 125, {SpellSource.Trainer})
        :SetResult(41314)
        :AddReagent(2841, 6) -- Bronze Bar
        :AddReagent(1206, 1) -- Moss Agate
        :AddReagent(3466, 2) -- Strong Flux
        :AddReagent(55151, 2) -- Coarse Gritted Paper
        :Save()

    module:NewCraft(41059, "Moonlight Staff", 125, {SpellSource.Trainer})
        :SetResult(41315)
        :AddReagent(2841, 8) -- Bronze Bar
        :AddReagent(1705, 3) -- Lesser Moonstone
        :AddReagent(3466, 1) -- Strong Flux
        :AddReagent(55246, 1) -- Shimmering Oil
        :Save()

    module:NewCraft(41061, "Binding Signet", 125, {SpellSource.Trainer})
        :SetResult(41316)
        :AddReagent(55174, 1) -- Rough Bronze Ring
        :AddReagent(1705, 2) -- Lesser Moonstone
        :AddReagent(3385, 1) -- Lesser Mana Potion
        :Save()

    module:NewCraft(41063, "Enchanted Bracelets", 125, {SpellSource.Trainer})
        :SetResult(41318)
        :AddReagent(2842, 3) -- Silver Bar
        :AddReagent(10998, 1) -- Lesser Astral Essence
        :AddReagent(1210, 1) -- Shadowgem
        :Save()

    module:NewCraft(41065, "Coarse Gemstone Cluster", 125, {SpellSource.Trainer})
        :SetResult(41320)
        :AddReagent(2771, 2) -- Tin Ore
        :AddReagent(55151, 2) -- Coarse Gritted Paper
        :Save()

    module:NewCraft(41067, "Rough Silver Ring", 125, {SpellSource.Trainer})
        :SetResult(41319)
        :AddReagent(2842, 2) -- Silver Bar
        :Save()

    module:NewCraft(41069, "Silver Medallion", 135, {SpellSource.Trainer})
        :SetResult(41325)
        :AddReagent(2842, 5) -- Silver Bar
        :AddReagent(3466, 1) -- Strong Flux
        :AddReagent(55246, 2) -- Shimmering Oil
        :AddReagent(55151, 2) -- Coarse Gritted Paper
        :Save()

    module:NewCraft(41071, "Ring of Purified Silver", 135, {SpellSource.Trainer})
        :SetResult(41329)
        :AddReagent(41319, 1) -- Rough Silver Ring
        :AddReagent(3466, 2) -- Strong Flux
        :AddReagent(55246, 4) -- Shimmering Oil
        :AddReagent(55151, 8) -- Coarse Gritted Paper
        :AddReagent(55249, 3) -- Crystal Quartz
        :AddReagent(1206, 3) -- Moss Agate
        :Save()

    module:NewCraft(41081, "Rough Iron Ring", 150, {SpellSource.Trainer})
        :SetResult(41332)
        :AddReagent(3575, 2) -- Iron Bar
        :Save()

    module:NewCraft(41083, "Rough Gold Ring", 150, {SpellSource.Trainer})
        :SetResult(41331)
        :AddReagent(3577, 2) -- Gold Bar
        :Save()

    module:NewCraft(41085, "Emberstone Studded Ring", 225, {SpellSource.Trainer})
        :SetResult(41323)
        :AddReagent(41322, 1) -- Rough Mithril Ring
        :AddReagent(7077, 1) -- Heart of Fire
        :AddReagent(55250, 4) -- Emberstone
        :AddReagent(55247, 2) -- Gemstone Oil
        :Save()

    module:NewCraft(41087, "Rough Thorium Ring", 235, {SpellSource.Trainer})
        :SetResult(41321)
        :AddReagent(12359, 2) -- Thorium Bar
        :Save()

    module:NewCraft(41089, "Mithril Blackstone Necklace", 245, {}) -- TODO add source
        :SetResult(41324)
        :AddReagent(3860, 10) -- Mithril Bar
        :AddReagent(7971, 3) -- Black Pearl
        :AddReagent(7909, 1) -- Aquamarine
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41091, "Dense Gritted Paper", 250, {SpellSource.Trainer})
        :SetResult(55154)
        :AddReagent(14047, 3) -- Runecloth
        :AddReagent(12365, 3) -- Dense Stone
        :Save()

    module:NewCraft(41093, "Radiant Thorium Twilight", 255, {}) -- TODO add source
        :SetResult(55256)
        :AddReagent(41321, 1) -- Rough Thorium Ring
        :AddReagent(3466, 2) -- Strong Flux
        :AddReagent(55251, 3) -- Pure Moonstone
        :AddReagent(55153, 3) -- Solid Gritted Paper
        :Save()

    module:NewCraft(41095, "Glyph Codex", 260, {}) -- TODO add source
        :SetResult(55269)
        :AddReagent(12359, 8) -- Thorium Bar
        :AddReagent(55251, 5) -- Pure Moonstone
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41097, "Spellweaver Rod", 265, {}) -- TODO add source
        :SetResult(55271)
        :AddReagent(12359, 12) -- Thorium Bar
        :AddReagent(6037, 6) -- Truesilver Bar
        :AddReagent(7910, 3) -- Star Ruby
        :AddReagent(7909, 3) -- Aquamarine
        :AddReagent(3466, 1) -- Strong Flux
        :Save()

    module:NewCraft(41099, "Quicksilver Whirl", 265, {}) -- TODO add source
        :SetResult(55268)
        :AddReagent(6037, 4) -- Truesilver Bar
        :AddReagent(12361, 2) -- Blue Sapphire
        :AddReagent(55247, 2) -- Gemstone Oil
        :AddReagent(7069, 4) -- Elemental Air
        :Save()

    module:NewCraft(41101, "Crystalweft Bracers", 280, {}) -- TODO add source
        :SetResult(55273)
        :AddReagent(12359, 14) -- Thorium Bar
        :AddReagent(55154, 4) -- Dense Gritted Paper
        :AddReagent(3864, 3) -- Citrine
        :AddReagent(55246, 1) -- Shimmering Oil
        :Save()

    module:NewCraft(41103, "Ethereal Frostspark Crown", 280, {}) -- TODO add source
        :SetResult(55267)
        :AddReagent(12359, 12) -- Thorium Bar
        :AddReagent(55154, 6) -- Dense Gritted Paper
        :AddReagent(12361, 1) -- Blue Sapphire
        :AddReagent(3829, 1) -- Frost Oil
        :Save()

    module:NewCraft(41105, "Pendant of Arcane Radiance", 280, {}) -- TODO add source
        :SetResult(41330)
        :AddReagent(12359, 6) -- Thorium Bar
        :AddReagent(13454, 1) -- Greater Arcane Elixir
        :AddReagent(12363, 1) -- Arcane Crystal
        :Save()

    module:NewCraft(41201, "Heavy Gritted Paper", 150, {SpellSource.Trainer})
        :SetResult(55152)
        :AddReagent(4306, 3) -- Silk Cloth
        :AddReagent(2838, 3) -- Heavy Stone
        :Save()

    module:NewCraft(41203, "Heavy Gemstone Cluster", 150, {SpellSource.Trainer})
        :SetResult(41344)
        :AddReagent(2772, 3) -- Iron Ore
        :AddReagent(55152, 3) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41205, "Goldfire Crystal Bracelet", 155, {SpellSource.Trainer})
        :SetResult(55144)
        :AddReagent(2841, 6) -- Bronze Bar
        :AddReagent(3577, 1) -- Gold Bar
        :AddReagent(55249, 1) -- Crystal Quartz
        :AddReagent(2880, 1) -- Weak Flux
        :Save()

    module:NewCraft(41207, "Quartz Halo", 155, {SpellSource.Trainer})
        :SetResult(55142)
        :AddReagent(41332, 1) -- Rough Iron Ring
        :AddReagent(55249, 2) -- Crystal Quartz
        :AddReagent(55151, 2) -- Coarse Gritted Paper
        :AddReagent(55246, 1) -- Shimmering Oil
        :Save()

    module:NewCraft(41209, "Staff of Blossomed Jade", 165, {SpellSource.Trainer})
        :SetResult(55148)
        :AddReagent(3575, 12) -- Iron Bar
        :AddReagent(1529, 2) -- Jade
        :AddReagent(1705, 2) -- Lesser Moonstone
        :AddReagent(3357, 2) -- Liferoot
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41211, "Jade Harmony Circlet", 170, {SpellSource.Trainer})
        :SetResult(55143)
        :AddReagent(41331, 1) -- Rough Gold Ring
        :AddReagent(1529, 1) -- Jade
        :AddReagent(55246, 2) -- Shimmering Oil
        :AddReagent(55152, 2) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41213, "Goldenshade Quartz Crown", 175, {SpellSource.Trainer})
        :SetResult(55145)
        :AddReagent(3575, 8) -- Iron Bar
        :AddReagent(3577, 2) -- Gold Bar
        :AddReagent(55249, 2) -- Crystal Quartz
        :Save()

    module:NewCraft(41215, "The Golden Goblet", 175, {SpellSource.Trainer})
        :SetResult(55146)
        :AddReagent(3577, 5) -- Gold Bar
        :AddReagent(4234, 2) -- Heavy Leather
        :AddReagent(3466, 2) -- Strong Flux
        :AddReagent(3825, 1) -- Elixir of Fortitude
        :Save()

    module:NewCraft(41217, "Powerful Citrine Pendant", 175, {SpellSource.Trainer})
        :SetResult(55147)
        :AddReagent(3575, 12) -- Iron Bar
        :AddReagent(3577, 4) -- Gold Bar
        :AddReagent(3864, 4) -- Citrine
        :AddReagent(1206, 2) -- Moss Agate
        :AddReagent(55247, 1) -- Gemstone Oil
        :AddReagent(11135, 1) -- Greater Mystic Essence
        :Save()

    module:NewCraft(41219, "Rough Mithril Ring", 175, {SpellSource.Trainer})
        :SetResult(41322)
        :AddReagent(3860, 2) -- Mithril Bar
        :Save()

    module:NewCraft(41221, "Ironsun Citrine Ring", 185, {SpellSource.Trainer})
        :SetResult(55141)
        :AddReagent(41332, 1) -- Rough Iron Ring
        :AddReagent(3577, 2) -- Gold Bar
        :AddReagent(3864, 4) -- Citrine
        :AddReagent(55246, 1) -- Shimmering Oil
        :Save()

    module:NewCraft(41223, "Shimmering Gold Necklace", 190, {SpellSource.Trainer})
        :SetResult(41340)
        :AddReagent(3577, 8) -- Gold Bar
        :AddReagent(55246, 3) -- Shimmering Oil
        :AddReagent(55152, 3) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41225, "Ironbloom Ring", 190, {SpellSource.Trainer})
        :SetResult(41342)
        :AddReagent(41332, 1) -- Rough Iron Ring
        :AddReagent(3575, 2) -- Iron Bar
        :AddReagent(2838, 6) -- Heavy Stone
        :AddReagent(3355, 1) -- Wild Steelbloom
        :AddReagent(55152, 2) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41227, "Ornate Mithril Scepter", 200, {SpellSource.Trainer})
        :SetResult(41343)
        :AddReagent(3860, 8) -- Mithril Bar
        :AddReagent(4234, 2) -- Heavy Leather
        :AddReagent(55152, 2) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41229, "Solid Gritted Paper", 200, {SpellSource.Trainer})
        :SetResult(55153)
        :AddReagent(4338, 3) -- Mageweave Cloth
        :AddReagent(7912, 3) -- Solid Stone
        :Save()

    module:NewCraft(41231, "Minor Trollblood Ring", 50, {SpellSource.Trainer})
        :SetResult(55164)
        :AddRecipe(50298, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(3382, 1) -- Weak Troll's Blood Potion
        :AddReagent(55245, 1) -- Polishing Oil
        :Save()

    module:NewCraft(41233, "Rough Truesilver Ring", 200, {SpellSource.Trainer})
        :SetResult(41341)
        :AddReagent(7911, 2) -- Truesilver Ore
        :AddReagent(6037, 2) -- Truesilver Bar
        :Save()

    module:NewCraft(41235, "Aquamarine Pendant", 215, {SpellSource.Trainer})
        :SetResult(55196)
        :AddReagent(3860, 8) -- Mithril Bar
        :AddReagent(7909, 2) -- Aquamarine
        :AddReagent(55152, 2) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41237, "Solid Gemstone Cluster", 200, {SpellSource.Trainer})
        :SetResult(56020)
        :AddReagent(3858, 3) -- Mithril Ore
        :AddReagent(55153, 3) -- Solid Gritted Paper
        :Save()

    module:NewCraft(41239, "Greater Binding Signet", 210, {SpellSource.Trainer})
        :SetResult(41346)
        :AddReagent(41322, 1) -- Rough Mithril Ring
        :AddReagent(55251, 1) -- Pure Moonstone
        :AddReagent(7909, 1) -- Aquamarine
        :AddReagent(6149, 2) -- Greater Mana Potion
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41241, "Royal Gemstone Staff", 215, {SpellSource.Trainer})
        :SetResult(41345)
        :AddReagent(3860, 14) -- Mithril Bar
        :AddReagent(3577, 4) -- Gold Bar
        :AddReagent(55251, 2) -- Pure Moonstone
        :AddReagent(7909, 2) -- Aquamarine
        :AddReagent(55153, 4) -- Solid Gritted Paper
        :Save()

    module:NewCraft(41243, "Emberstone Idol", 220, {SpellSource.Trainer})
        :SetResult(41349)
        :AddReagent(55250, 5) -- Emberstone
        :AddReagent(6371, 3) -- Fire Oil
        :AddReagent(7077, 1) -- Heart of Fire
        :AddReagent(7068, 1) -- Elemental Fire
        :Save()

    module:NewCraft(41245, "Runed Truesilver Ring", 220, {SpellSource.Trainer})
        :SetResult(41347)
        :AddReagent(41341, 1) -- Rough Truesilver Ring
        :AddReagent(7067, 1) -- Elemental Earth
        :AddReagent(7075, 1) -- Core of Earth
        :AddReagent(55153, 2) -- Solid Gritted Paper
        :Save()

    module:NewCraft(41247, "Small Pearl Ring", 65, {})
        :SetResult(55169)
        :AddRecipe(56021, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(5498, 1) -- Small Lustrous Pearl
        :AddReagent(55150, 2) -- Rough Gritted Paper
        :AddReagent(55245, 1) -- Polishing Oil
        :Save()

    module:NewCraft(41249, "Bulky Copper Ring", 25, {})
        :SetResult(81093)
        :AddRecipe(56022, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(2880, 1) -- Weak Flux
        :AddReagent(55245, 1) -- Polishing Oil
        :Save()

    module:NewCraft(41251, "Blue Starfire", 265, {})
        :SetResult(55258)
        :AddRecipe(56024, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(41321, 1) -- Rough Thorium Ring
        :AddReagent(12361, 1) -- Blue Sapphire
        :AddReagent(55251, 1) -- Pure Moonstone
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41253, "Emerald Monarch's Glow", 300, {})
        :SetResult(55265)
        :AddRecipe(56025, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(41321, 1) -- Rough Thorium Ring
        :AddReagent(12655, 4) -- Enchanted Thorium Bar
        :AddReagent(12364, 2) -- Huge Emerald
        :AddReagent(55154, 2) -- Dense Gritted Paper
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41255, "Sapphire Luminescence", 300, {})
        :SetResult(55259)
        :AddRecipe(56026, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(41341, 1) -- Rough Truesilver Ring
        :AddReagent(12655, 5) -- Enchanted Thorium Bar
        :AddReagent(12361, 5) -- Blue Sapphire
        :AddReagent(7076, 1) -- Essence of Earth
        :AddReagent(55154, 8) -- Dense Gritted Paper
        :AddReagent(55247, 3) -- Gemstone Oil
        :Save()

    module:NewCraft(41259, "Arcanum Baton", 300, {})
        :SetResult(55272)
        :AddRecipe(56027, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(12359, 28) -- Thorium Bar
        :AddReagent(3577, 4) -- Gold Bar
        :AddReagent(7082, 2) -- Essence of Air
        :AddReagent(61673, 2) -- Arcane Essence
        :AddReagent(55154, 8) -- Dense Gritted Paper
        :Save()

    module:NewCraft(41261, "Sunburst Tiara", 250, {})
        :SetResult(55266)
        :AddRecipe(56028, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(12359, 20) -- Thorium Bar
        :AddReagent(7910, 2) -- Star Ruby
        :AddReagent(55250, 2) -- Emberstone
        :AddReagent(3466, 2) -- Strong Flux
        :AddReagent(55246, 4) -- Shimmering Oil
        :Save()

    module:NewCraft(41263, "Ocean's Gaze", 190, {})
        :SetResult(56023)
        :AddRecipe(56029, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(41322, 1) -- Rough Mithril Ring
        :AddReagent(7909, 3) -- Aquamarine
        :AddReagent(6372, 3) -- Swim Speed Potion
        :AddReagent(55152, 3) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41265, "Starry Thorium Band", 260, {})
        :SetResult(55260)
        :AddRecipe(56030, Quality.Uncommon, {}) -- TODO add source
        :AddReagent(41321, 1) -- Rough Thorium Ring
        :AddReagent(7910, 2) -- Star Ruby
        :AddReagent(55246, 4) -- Shimmering Oil
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41267, "Ruby Ring of Ruin", 300, {})
        :SetResult(56032)
        :AddRecipe(70101, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(56033, 1) -- Pure Gold Ring
        :AddReagent(7910, 12) -- Star Ruby
        :AddReagent(55250, 12) -- Emberstone
        :AddReagent(7078, 8) -- Essence of Fire
        :AddReagent(7077, 12) -- Heart of Fire
        :AddReagent(55248, 8) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41269, "Encrusted Gemstone Ring", 300, {})
        :SetResult(56031)
        :AddRecipe(70102, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(56033, 1) -- Pure Gold Ring
        :AddReagent(55252, 1) -- Imperial Topaz
        :AddReagent(12364, 5) -- Huge Emerald
        :AddReagent(7910, 5) -- Star Ruby
        :AddReagent(12361, 5) -- Blue Sapphire
        :AddReagent(55248, 5) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41271, "Pure Gold Ring", 295, {}) -- TODO add source
        :SetResult(56033)
        :AddReagent(3577, 8) -- Gold Bar
        :AddReagent(12360, 2) -- Arcanite Bar
        :AddReagent(3466, 2) -- Strong Flux
        :Save()

    module:NewCraft(41273, "Prism Amulet", 265, {})
        :SetResult(55199)
        :AddRecipe(70103, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(12359, 8) -- Thorium Bar
        :AddReagent(12799, 2) -- Large Opal
        :AddReagent(55154, 2) -- Dense Gritted Paper
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41275, "Gemmed Citrine Pendant", 160, {})
        :SetResult(55202)
        :AddRecipe(70104, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(3575, 6) -- Iron Bar
        :AddReagent(3577, 1) -- Gold Bar
        :AddReagent(55249, 2) -- Crystal Quartz
        :AddReagent(3864, 2) -- Citrine
        :Save()

    module:NewCraft(41277, "Starforge Amulet", 220, {})
        :SetResult(55197)
        :AddRecipe(70105, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(3860, 6) -- Mithril Bar
        :AddReagent(7910, 2) -- Star Ruby
        :AddReagent(55249, 2) -- Crystal Quartz
        :AddReagent(55153, 4) -- Solid Gritted Paper
        :Save()

    module:NewCraft(41279, "Voidheart Charm", 280, {})
        :SetResult(55200)
        :AddRecipe(70106, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(12359, 5) -- Thorium Bar
        :AddReagent(12655, 1) -- Enchanted Thorium Bar
        :AddReagent(55249, 4) -- Crystal Quartz
        :AddReagent(12808, 2) -- Essence of Undeath
        :AddReagent(55154, 2) -- Dense Gritted Paper
        :Save()

    module:NewCraft(41281, "Runebound Amulet", 230, {})
        :SetResult(55204)
        :AddRecipe(70107, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(6037, 12) -- Truesilver Bar
        :AddReagent(7075, 4) -- Core of Earth
        :AddReagent(7067, 4) -- Elemental Earth
        :AddReagent(7068, 4) -- Elemental Fire
        :AddReagent(55153, 8) -- Solid Gritted Paper
        :Save()

    module:NewCraft(41283, "Astral Amulet", 175, {}) -- TODO add source
        :SetResult(55195)
        :AddReagent(3575, 6) -- Iron Bar
        :AddReagent(3864, 2) -- Citrine
        :AddReagent(55249, 2) -- Crystal Quartz
        :AddReagent(55152, 3) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41285, "Shimmering Moonstone Tablet", 195, {})
        :SetResult(56034)
        :AddRecipe(70108, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(55251, 2) -- Pure Moonstone
        :AddReagent(1705, 8) -- Lesser Moonstone
        :AddReagent(55246, 2) -- Shimmering Oil
        :AddReagent(55152, 4) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41287, "Stormcloud Sigil", 290, {})
        :SetResult(56035)
        :AddRecipe(70109, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(12655, 3) -- Enchanted Thorium Bar
        :AddReagent(7082, 3) -- Essence of Air
        :AddReagent(7069, 5) -- Elemental Air
        :AddReagent(7081, 5) -- Breath of Wind
        :Save()

    module:NewCraft(41303, "Massive Jewel Circlet", 300, {}) -- TODO add source
        :SetResult(55264)
        :AddReagent(41321, 1) -- Rough Thorium Ring
        :AddReagent(12364, 1) -- Huge Emerald
        :AddReagent(55154, 3) -- Dense Gritted Paper
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41305, "Golden Scepter of Authority", 260, {}) -- TODO add source
        :SetResult(56036)
        :AddReagent(3577, 8) -- Gold Bar
        :AddReagent(3860, 2) -- Mithril Bar
        :AddReagent(4304, 2) -- Thick Leather
        :AddReagent(55246, 6) -- Shimmering Oil
        :Save()

    module:NewCraft(41307, "Gemkeeper's Folio", 235, {}) -- TODO add source
        :SetResult(55243)
        :AddReagent(3860, 18) -- Mithril Bar
        :AddReagent(55249, 3) -- Crystal Quartz
        :AddReagent(55251, 3) -- Pure Moonstone
        :AddReagent(3864, 3) -- Citrine
        :AddReagent(55152, 6) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41309, "Stellar Ruby Ring", 300, {}) -- TODO add source
        :SetResult(55261)
        :AddReagent(41321, 1) -- Rough Thorium Ring
        :AddReagent(7910, 5) -- Star Ruby
        :AddReagent(55154, 3) -- Dense Gritted Paper
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41311, "Stellar Gemguards", 270, {}) -- TODO add source
        :SetResult(55178)
        :AddReagent(3860, 8) -- Mithril Bar
        :AddReagent(55249, 1) -- Crystal Quartz
        :AddReagent(55251, 1) -- Pure Moonstone
        :AddReagent(55250, 1) -- Emberstone
        :Save()

    module:NewCraft(41313, "Garnet Guardian Staff", 290, {}) -- TODO add source
        :SetResult(55241)
        :AddReagent(12359, 24) -- Thorium Bar
        :AddReagent(12800, 2) -- Azerothian Diamond
        :AddReagent(12799, 2) -- Large Opal
        :AddReagent(7075, 2) -- Core of Earth
        :AddReagent(55154, 4) -- Dense Gritted Paper
        :Save()

    module:NewCraft(41315, "Moonlit Charm", 275, {}) -- TODO add source
        :SetResult(55198)
        :AddReagent(3860, 12) -- Mithril Bar
        :AddReagent(55251, 4) -- Pure Moonstone
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41317, "Twilight Opal Cascade", 300, {}) -- TODO add source
        :SetResult(55263)
        :AddReagent(56033, 1) -- Pure Gold Ring
        :AddReagent(12799, 3) -- Large Opal
        :AddReagent(20520, 3) -- Dark Rune
        :AddReagent(55248, 2) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41321, "Gleaming Chain", 80, {})
        :SetResult(56037)
        :AddRecipe(70110, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(2840, 5) -- Copper Bar
        :AddReagent(55245, 2) -- Polishing Oil
        :AddReagent(55150, 2) -- Rough Gritted Paper
        :Save()

    module:NewCraft(41323, "Talisman of Stone", 100, {})
        :SetResult(56038)
        :AddRecipe(70111, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(2841, 8) -- Bronze Bar
        :AddReagent(2836, 4) -- Coarse Stone
        :AddReagent(55151, 2) -- Coarse Gritted Paper
        :Save()

    module:NewCraft(41325, "Medallion of Flame", 110, {})
        :SetResult(56039)
        :AddRecipe(70112, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(2841, 6) -- Bronze Bar
        :AddReagent(2880, 1) -- Weak Flux
        :AddReagent(10940, 1) -- Strange Dust
        :Save()

    module:NewCraft(41327, "Gleaming Silver Necklace", 135, {})
        :SetResult(56040)
        :AddRecipe(70113, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(2842, 4) -- Silver Bar
        :AddReagent(55249, 1) -- Crystal Quartz
        :AddReagent(55246, 2) -- Shimmering Oil
        :AddReagent(55245, 2) -- Polishing Oil
        :Save()

    module:NewCraft(41329, "Ring of The Turtle", 160, {})
        :SetResult(56041)
        :AddRecipe(70114, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(41331, 1) -- Rough Gold Ring
        :AddReagent(1206, 2) -- Moss Agate
        :AddReagent(3389, 1) -- Elixir of Defense
        :Save()

    module:NewCraft(41331, "Gem Encrusted Choker", 160, {})
        :SetResult(56042)
        :AddRecipe(70116, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(3575, 5) -- Iron Bar
        :AddReagent(1206, 1) -- Moss Agate
        :AddReagent(55249, 1) -- Crystal Quartz
        :AddReagent(1705, 1) -- Lesser Moonstone
        :Save()

    module:NewCraft(41333, "Goldcrest Amulet", 170, {})
        :SetResult(56043)
        :AddRecipe(70115, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(3577, 8) -- Gold Bar
        :AddReagent(3466, 1) -- Strong Flux
        :AddReagent(55152, 2) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41335, "Shining Copper Cuffs", 80, {})
        :SetResult(56044)
        :AddRecipe(70117, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(2840, 6) -- Copper Bar
        :AddReagent(818, 1) -- Tigerseye
        :AddReagent(55246, 1) -- Shimmering Oil
        :Save()

    module:NewCraft(41337, "Dawnbright Cuffs", 115, {})
        :SetResult(56045)
        :AddRecipe(70118, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(2841, 5) -- Bronze Bar
        :AddReagent(81094, 2) -- Amber Topaz
        :AddReagent(55245, 1) -- Polishing Oil
        :Save()

    module:NewCraft(41339, "Circlet of Dampening", 135, {})
        :SetResult(56046)
        :AddRecipe(70119, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(2841, 4) -- Bronze Bar
        :AddReagent(2842, 2) -- Silver Bar
        :AddReagent(3384, 1) -- Minor Magic Resistance Potion
        :AddReagent(55151, 3) -- Coarse Gritted Paper
        :Save()

    module:NewCraft(41348, "Crystalfire Armlets", 255, {})
        :SetResult(55180)
        :AddRecipe(70125, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(12359, 8) -- Thorium Bar
        :AddReagent(55249, 4) -- Crystal Quartz
        :AddReagent(8956, 2) -- Oil of Immolation
        :AddReagent(55153, 2) -- Solid Gritted Paper
        :Save()

    module:NewCraft(41350, "Cinderfall Band", 260, {})
        :SetResult(55228)
        :AddRecipe(70126, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(41321, 1) -- Rough Thorium Ring
        :AddReagent(55250, 1) -- Emberstone
        :AddReagent(7910, 1) -- Star Ruby
        :AddReagent(7077, 1) -- Heart of Fire
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41352, "Opaline Illuminator", 210, {})
        :SetResult(55242)
        :AddRecipe(70127, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(3860, 24) -- Mithril Bar
        :AddReagent(3864, 6) -- Citrine
        :AddReagent(55249, 6) -- Crystal Quartz
        :AddReagent(7075, 2) -- Core of Earth
        :AddReagent(55246, 4) -- Shimmering Oil
        :Save()

    module:NewCraft(41354, "Skyfire Jewel", 210, {})
        :SetResult(55255)
        :AddRecipe(70128, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(41321, 1) -- Rough Thorium Ring
        :AddReagent(55251, 3) -- Pure Moonstone
        :AddReagent(7069, 3) -- Elemental Air
        :Save()

    module:NewCraft(41356, "Gemstone Compendium", 275, {})
        :SetResult(55244)
        :AddRecipe(70129, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(8170, 12) -- Rugged Leather
        :AddReagent(10648, 20) -- Blank Parchment
        :AddReagent(16203, 2) -- Greater Eternal Essence
        :AddReagent(12655, 2) -- Enchanted Thorium Bar
        :AddReagent(7076, 3) -- Essence of Earth
        :Save()

    module:NewCraft(41541, "Dazzling Aquamarine Loop", 190, {})
        :SetResult(56048)
        :AddRecipe(70132, Quality.Common, {RecipeSource.Quest})
        :AddReagent(41322, 1) -- Rough Mithril Ring
        :AddReagent(7909, 4) -- Aquamarine
        :AddReagent(55246, 2) -- Shimmering Oil
        :AddReagent(55152, 2) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41546, "Alluring Citrine Choker", 200, {})
        :SetResult(56049)
        :AddRecipe(70134, Quality.Common, {RecipeSource.Quest})
        :AddReagent(3860, 12) -- Mithril Bar
        :AddReagent(3864, 2) -- Citrine
        :Save()

    module:NewCraft(41548, "Elaborate Golden Bracelets", 200, {})
        :SetResult(56050)
        :AddRecipe(70135, Quality.Common, {RecipeSource.Quest})
        :AddReagent(3577, 10) -- Gold Bar
        :AddReagent(4234, 4) -- Heavy Leather
        :AddReagent(55251, 2) -- Pure Moonstone
        :Save()

    module:NewCraft(41550, "Heart of the Sea", 200, {})
        :SetResult(56051)
        :AddRecipe(70136, Quality.Common, {RecipeSource.Quest})
        :AddReagent(3860, 4) -- Mithril Bar
        :AddReagent(7070, 4) -- Elemental Water
        :AddReagent(7909, 1) -- Aquamarine
        :AddReagent(55246, 1) -- Shimmering Oil
        :Save()

    module:NewCraft(41552, "Staff of Gallitrea", 200, {})
        :SetResult(56052)
        :AddRecipe(70137, Quality.Common, {RecipeSource.Quest})
        :AddReagent(3860, 18) -- Mithril Bar
        :AddReagent(55249, 3) -- Crystal Quartz
        :AddReagent(7070, 2) -- Elemental Water
        :AddReagent(55153, 6) -- Solid Gritted Paper
        :Save()

    module:NewCraft(41554, "Golden Jade Ring", 210, {})
        :SetResult(56053)
        :AddRecipe(70138, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(41331, 1) -- Rough Gold Ring
        :AddReagent(3577, 2) -- Gold Bar
        :AddReagent(1529, 6) -- Jade
        :AddReagent(3821, 6) -- Goldthorn
        :AddReagent(55247, 2) -- Gemstone Oil
        :Save()

    module:NewCraft(41556, "Delicate Mithril Amulet", 180, {})
        :SetResult(56054)
        :AddRecipe(70139, Quality.Common, {RecipeSource.Quest})
        :AddReagent(3860, 10) -- Mithril Bar
        :AddReagent(3466, 2) -- Strong Flux
        :AddReagent(55152, 4) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41558, "Draenethyst Baton", 200, {})
        :SetResult(56055)
        :AddRecipe(70140, Quality.Common, {RecipeSource.Quest})
        :AddReagent(3860, 4) -- Mithril Bar
        :AddReagent(10593, 1) -- Imperfect Draenethyst Fragment
        :AddReagent(55246, 1) -- Shimmering Oil
        :Save()

    module:NewCraft(41560, "Ebon Ring", 75, {})
        :SetResult(55316)
        :AddRecipe(70141, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(2880, 3) -- Weak Flux
        :AddReagent(55150, 2) -- Rough Gritted Paper
        :Save()

    module:NewCraft(41562, "The King's Conviction", 85, {})
        :SetResult(55317)
        :AddRecipe(70142, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(2880, 1) -- Weak Flux
        :AddReagent(2447, 4) -- Peacebloom
        :Save()

    module:NewCraft(41564, "Shadowfall Jewel", 100, {})
        :SetResult(55318)
        :AddRecipe(70143, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(55174, 1) -- Rough Bronze Ring
        :AddReagent(1210, 1) -- Shadowgem
        :AddReagent(81094, 1) -- Amber Topaz
        :AddReagent(55150, 1) -- Rough Gritted Paper
        :Save()

    module:NewCraft(41566, "Ocean's Wrath", 115, {})
        :SetResult(55319)
        :AddRecipe(70144, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(55174, 1) -- Rough Bronze Ring
        :AddReagent(5498, 1) -- Small Lustrous Pearl
        :AddReagent(2880, 1) -- Weak Flux
        :Save()

    module:NewCraft(41568, "Dazzling Moonstone Band", 130, {})
        :SetResult(55320)
        :AddRecipe(70145, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(55174, 1) -- Rough Bronze Ring
        :AddReagent(1705, 3) -- Lesser Moonstone
        :AddReagent(55245, 1) -- Polishing Oil
        :Save()

    module:NewCraft(41570, "Harpy Talon Ring", 145, {})
        :SetResult(55321)
        :AddRecipe(70146, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(55174, 1) -- Rough Bronze Ring
        :AddReagent(5635, 4) -- Sharp Claw
        :AddReagent(55151, 2) -- Coarse Gritted Paper
        :Save()

    module:NewCraft(41572, "Centaur Hoof Circlet", 160, {})
        :SetResult(55322)
        :AddRecipe(70147, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(41332, 1) -- Rough Iron Ring
        :AddReagent(7067, 1) -- Elemental Earth
        :AddReagent(3466, 1) -- Strong Flux
        :AddReagent(55151, 2) -- Coarse Gritted Paper
        :Save()

    module:NewCraft(41574, "Ogre Bone Band", 170, {})
        :SetResult(55323)
        :AddRecipe(70148, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(41332, 1) -- Rough Iron Ring
        :AddReagent(55249, 4) -- Crystal Quartz
        :AddReagent(3864, 4) -- Citrine
        :AddReagent(3391, 1) -- Elixir of Ogre's Strength
        :AddReagent(3466, 2) -- Strong Flux
        :Save()

    module:NewCraft(41577, "Malachite Ring", 20, {SpellSource.Trainer})
        :SetResult(81030)
        :AddReagent(55156, 1) -- Rough Copper Ring
        :AddReagent(774, 1) -- Malachite
        :AddReagent(55150, 1) -- Rough Gritted Paper
        :Save()

    module:NewCraft(41579, "Marine's Demise", 190, {})
        :SetResult(55325)
        :AddRecipe(70151, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(41322, 1) -- Rough Mithril Ring
        :AddReagent(7909, 2) -- Aquamarine
        :AddReagent(1210, 2) -- Shadowgem
        :AddReagent(55246, 1) -- Shimmering Oil
        :Save()

    module:NewCraft(41581, "Serpent's Coil Staff", 100, {})
        :SetResult(55326)
        :AddRecipe(70152, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(2841, 10) -- Bronze Bar
        :AddReagent(1210, 2) -- Shadowgem
        :AddReagent(2453, 2) -- Bruiseweed
        :Save()

    module:NewCraft(41583, "Farraki Ceremony Totem", 140, {})
        :SetResult(55327)
        :AddRecipe(70153, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(2841, 12) -- Bronze Bar
        :AddReagent(3575, 6) -- Iron Bar
        :AddReagent(7069, 2) -- Elemental Air
        :AddReagent(7068, 2) -- Elemental Fire
        :AddReagent(3388, 2) -- Strong Troll's Blood Potion
        :AddReagent(55151, 4) -- Coarse Gritted Paper
        :Save()

    module:NewCraft(41585, "Sphinx's Wisdom Staff", 170, {})
        :SetResult(55328)
        :AddRecipe(70154, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(3575, 18) -- Iron Bar
        :AddReagent(2838, 2) -- Heavy Stone
        :AddReagent(3864, 2) -- Citrine
        :Save()

    module:NewCraft(41587, "Gloomweed Bindings", 80, {})
        :SetResult(55329)
        :AddRecipe(70155, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(2840, 6) -- Copper Bar
        :AddReagent(2447, 2) -- Peacebloom
        :AddReagent(55245, 1) -- Polishing Oil
        :Save()

    module:NewCraft(41589, "Crystal Earring", 185, {})
        :SetResult(56047)
        :AddRecipe(70133, Quality.Common, {RecipeSource.Quest})
        :AddReagent(3575, 4) -- Iron Bar
        :AddReagent(55249, 5) -- Crystal Quartz
        :AddReagent(3466, 2) -- Strong Flux
        :AddReagent(55152, 2) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41591, "Specter's Shade Ring", 180, {})
        :SetResult(55324)
        :AddRecipe(70149, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(41332, 1) -- Rough Iron Ring
        :AddReagent(11135, 1) -- Greater Mystic Essence
        :AddReagent(55152, 1) -- Heavy Gritted Paper
        :AddReagent(3577, 2) -- Gold Bar
        :Save()

    module:NewCraft(41601, "Sharpened Citrine Gemstone", 200, {})
        :SetResult(56002)
        :AddRecipe(70156, Quality.Common, {RecipeSource.Quest})
        :AddReagent(3864, 1) -- Citrine
        :AddReagent(55152, 4) -- Heavy Gritted Paper
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41603, "Radiant Ember Gemstone", 200, {})
        :SetResult(56004)
        :AddRecipe(70157, Quality.Common, {RecipeSource.Quest})
        :AddReagent(55250, 1) -- Emberstone
        :AddReagent(55152, 4) -- Heavy Gritted Paper
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41605, "Glowing Ruby Gemstone", 200, {})
        :SetResult(56006)
        :AddRecipe(70158, Quality.Common, {RecipeSource.Quest})
        :AddReagent(7910, 1) -- Star Ruby
        :AddReagent(55152, 1) -- Heavy Gritted Paper
        :AddReagent(11134, 1) -- Lesser Mystic Essence
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41607, "Shimmering Aqua Gemstone", 150, {})
        :SetResult(56003)
        :AddRecipe(70159, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(7909, 1) -- Aquamarine
        :AddReagent(55152, 1) -- Heavy Gritted Paper
        :AddReagent(55246, 2) -- Shimmering Oil
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41609, "Azerothian Ruby Gemstone", 275, {})
        :SetResult(56015)
        :AddRecipe(70160, Quality.Rare, {RecipeSource.Drop, RecipeSource.Quest})
        :AddReagent(12800, 1) -- Azerothian Diamond
        :AddReagent(7910, 1) -- Star Ruby
        :AddReagent(16203, 1) -- Greater Eternal Essence
        :AddReagent(55154, 2) -- Dense Gritted Paper
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41611, "Gloomy Diamond Gemstone", 260, {})
        :SetResult(56012)
        :AddRecipe(70161, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(11754, 1) -- Black Diamond
        :AddReagent(55153, 5) -- Solid Gritted Paper
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41613, "Flawless Black Gemstone", 285, {})
        :SetResult(56013)
        :AddRecipe(70162, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(18335, 1) -- Pristine Black Diamond
        :AddReagent(16202, 1) -- Lesser Eternal Essence
        :AddReagent(55154, 2) -- Dense Gritted Paper
        :AddReagent(55248, 1) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41615, "Arcane Emerald Gemstone", 295, {})
        :SetResult(56016)
        :AddRecipe(70163, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(12363, 1) -- Arcane Crystal
        :AddReagent(12364, 1) -- Huge Emerald
        :AddReagent(14344, 1) -- Large Brilliant Shard
        :AddReagent(55154, 2) -- Dense Gritted Paper
        :AddReagent(55248, 1) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41617, "Tempered Azerothian Gemstone", 275, {})
        :SetResult(56017)
        :AddRecipe(70164, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(12800, 2) -- Azerothian Diamond
        :AddReagent(55154, 1) -- Dense Gritted Paper
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41619, "Stunning Imperial Gemstone", 300, {})
        :SetResult(56014)
        :AddRecipe(70166, Quality.Rare, {RecipeSource.Drop, RecipeSource.Quest})
        :AddReagent(55252, 1) -- Imperial Topaz
        :AddReagent(14344, 1) -- Large Brilliant Shard
        :AddReagent(8831, 4) -- Purple Lotus
        :AddReagent(7075, 1) -- Core of Earth
        :AddReagent(55248, 1) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41621, "Enchanted Emerald Gemstone", 250, {})
        :SetResult(56018)
        :AddRecipe(70167, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(12364, 1) -- Huge Emerald
        :AddReagent(7081, 3) -- Breath of Wind
        :AddReagent(55152, 1) -- Heavy Gritted Paper
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41623, "Pure Shining Moonstone", 175, {})
        :SetResult(56058)
        :AddRecipe(70168, Quality.Uncommon, {RecipeSource.Vendor})
        :AddReagent(55251, 1) -- Pure Moonstone
        :AddReagent(55152, 5) -- Heavy Gritted Paper
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41625, "Beautiful Diamond Gemstone", 270, {})
        :SetResult(56010)
        :AddRecipe(70169, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(12800, 2) -- Azerothian Diamond
        :AddReagent(55152, 2) -- Heavy Gritted Paper
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41627, "Pristine Crystal Gemstone", 150, {SpellSource.Trainer})
        :SetResult(56000)
        :AddReagent(55249, 1) -- Crystal Quartz
        :AddReagent(55151, 1) -- Coarse Gritted Paper
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41629, "Gleaming Jade Gemstone", 175, {SpellSource.Trainer})
        :SetResult(56001)
        :AddReagent(1529, 1) -- Jade
        :AddReagent(11135, 1) -- Greater Mystic Essence
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41631, "Illuminated Gemstone", 200, {SpellSource.Trainer})
        :SetResult(56005)
        :AddReagent(55251, 1) -- Pure Moonstone
        :AddReagent(11082, 1) -- Greater Astral Essence
        :AddReagent(55247, 1) -- Gemstone Oil
        :AddReagent(55152, 1) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41633, "Burning Star Gemstone", 225, {SpellSource.Trainer})
        :SetResult(56056)
        :AddReagent(7910, 1) -- Star Ruby
        :AddReagent(7068, 2) -- Elemental Fire
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41635, "Brilliant Opal Gemstone", 235, {SpellSource.Trainer})
        :SetResult(56008)
        :AddReagent(12799, 2) -- Large Opal
        :AddReagent(55153, 1) -- Solid Gritted Paper
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41637, "Elegant Emerald Gemstone", 250, {}) -- TODO add source
        :SetResult(56009)
        :AddReagent(12364, 1) -- Huge Emerald
        :AddReagent(55153, 2) -- Solid Gritted Paper
        :AddReagent(55247, 2) -- Gemstone Oil
        :Save()

    module:NewCraft(41639, "Shining Sapphire Gemstone", 250, {}) -- TODO add source
        :SetResult(56007)
        :AddReagent(12361, 1) -- Blue Sapphire
        :AddReagent(16203, 1) -- Greater Eternal Essence
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41641, "Unstable Arcane Gemstone", 275, {}) -- TODO add source
        :SetResult(56011)
        :AddReagent(12363, 1) -- Arcane Crystal
        :AddReagent(61673, 1) -- Arcane Essence
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41643, "Glittering Sapphire Gemstone", 290, {}) -- TODO add source
        :SetResult(56057)
        :AddReagent(12361, 1) -- Blue Sapphire
        :AddReagent(3819, 4) -- Wintersbite
        :AddReagent(7070, 1) -- Elemental Water
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41696, "Shimmering Diamond Band", 300, {})
        :SetResult(56059)
        :AddRecipe(70170, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(56033, 1) -- Pure Gold Ring
        :AddReagent(6037, 8) -- Truesilver Bar
        :AddReagent(12800, 10) -- Azerothian Diamond
        :AddReagent(3466, 6) -- Strong Flux
        :AddReagent(55154, 6) -- Dense Gritted Paper
        :AddReagent(55247, 6) -- Gemstone Oil
        :Save()

    module:NewCraft(41698, "Crown of Molten Ascension", 300, {})
        :SetResult(56060)
        :AddRecipe(70171, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(12360, 8) -- Arcanite Bar
        :AddReagent(55250, 12) -- Emberstone
        :AddReagent(7078, 6) -- Essence of Fire
        :AddReagent(7077, 6) -- Heart of Fire
        :AddReagent(7068, 6) -- Elemental Fire
        :AddReagent(55248, 2) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41700, "Embergem Cuffs", 300, {})
        :SetResult(56061)
        :AddRecipe(70172, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(12360, 4) -- Arcanite Bar
        :AddReagent(12655, 12) -- Enchanted Thorium Bar
        :AddReagent(7910, 8) -- Star Ruby
        :AddReagent(7078, 4) -- Essence of Fire
        :AddReagent(7068, 12) -- Elemental Fire
        :AddReagent(55247, 6) -- Gemstone Oil
        :Save()

    module:NewCraft(41702, "Blackwing Signet of Command", 300, {})
        :SetResult(56062)
        :AddRecipe(70173, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(12360, 6) -- Arcanite Bar
        :AddReagent(3577, 28) -- Gold Bar
        :AddReagent(15416, 32) -- Black Dragonscale
        :AddReagent(17010, 4) -- Fiery Core
        :AddReagent(55154, 8) -- Dense Gritted Paper
        :AddReagent(7078, 6) -- Essence of Fire
        :Save()

    module:NewCraft(41704, "Talisman of Hinderance", 300, {})
        :SetResult(56063)
        :AddRecipe(70174, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(12655, 20) -- Enchanted Thorium Bar
        :AddReagent(7082, 8) -- Essence of Air
        :AddReagent(7080, 8) -- Essence of Water
        :AddReagent(7076, 8) -- Essence of Earth
        :AddReagent(7078, 8) -- Essence of Fire
        :AddReagent(12803, 8) -- Living Essence
        :Save()

    module:NewCraft(41706, "Mastercrafted Diamond Crown", 300, {})
        :SetResult(56064)
        :AddRecipe(70175, Quality.Epic, {RecipeSource.Quest})
        :AddReagent(12360, 8) -- Arcanite Bar
        :AddReagent(6037, 8) -- Truesilver Bar
        :AddReagent(12800, 12) -- Azerothian Diamond
        :AddReagent(61673, 4) -- Arcane Essence
        :AddReagent(55154, 12) -- Dense Gritted Paper
        :AddReagent(55248, 4) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41708, "Opalstone Circle", 290, {})
        :SetResult(56065)
        :AddRecipe(70176, Quality.Rare, {}) -- TODO add source
        :AddReagent(41321, 1) -- Rough Thorium Ring
        :AddReagent(12799, 6) -- Large Opal
        :AddReagent(7076, 6) -- Essence of Earth
        :AddReagent(3356, 6) -- Kingsblood
        :AddReagent(55154, 8) -- Dense Gritted Paper
        :AddReagent(55247, 3) -- Gemstone Oil
        :Save()

    module:NewCraft(41710, "Deep Sapphire Circlet", 290, {})
        :SetResult(56066)
        :AddRecipe(70177, Quality.Rare, {RecipeSource.Drop, RecipeSource.Quest})
        :AddReagent(56033, 1) -- Pure Gold Ring
        :AddReagent(12361, 5) -- Blue Sapphire
        :AddReagent(7080, 2) -- Essence of Water
        :AddReagent(55247, 1) -- Gemstone Oil
        :Save()

    module:NewCraft(41712, "Dark Iron Signet Ring", 290, {})
        :SetResult(56067)
        :AddRecipe(70178, Quality.Rare, {RecipeSource.Vendor})
        :AddReagent(11371, 4) -- Dark Iron Bar
        :AddReagent(7077, 8) -- Heart of Fire
        :AddReagent(11382, 2) -- Blood of the Mountain
        :Save()

    module:NewCraft(41714, "Opal Guided Bangles", 250, {})
        :SetResult(56068)
        :AddRecipe(70179, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(12359, 8) -- Thorium Bar
        :AddReagent(12799, 4) -- Large Opal
        :AddReagent(7081, 6) -- Breath of Wind
        :AddReagent(9187, 1) -- Elixir of Greater Agility
        :AddReagent(55153, 4) -- Solid Gritted Paper
        :Save()

    module:NewCraft(41716, "Crown of Elegance", 230, {})
        :SetResult(56069)
        :AddRecipe(70180, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(3860, 20) -- Mithril Bar
        :AddReagent(7971, 2) -- Black Pearl
        :AddReagent(55249, 4) -- Crystal Quartz
        :AddReagent(55251, 4) -- Pure Moonstone
        :AddReagent(3466, 8) -- Strong Flux
        :Save()

    module:NewCraft(41718, "Ornate Mithril Bracelets", 200, {})
        :SetResult(56070)
        :AddRecipe(70181, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(3860, 8) -- Mithril Bar
        :AddReagent(3466, 6) -- Strong Flux
        :AddReagent(3864, 4) -- Citrine
        :AddReagent(55152, 4) -- Heavy Gritted Paper
        :AddReagent(55246, 4) -- Shimmering Oil
        :Save()

    module:NewCraft(41720, "Regal Twilight Staff", 240, {})
        :SetResult(56071)
        :AddRecipe(70182, Quality.Rare, {RecipeSource.Quest})
        :AddReagent(3860, 12) -- Mithril Bar
        :AddReagent(6037, 8) -- Truesilver Bar
        :AddReagent(7971, 4) -- Black Pearl
        :AddReagent(8839, 2) -- Blindweed
        :AddReagent(55251, 4) -- Pure Moonstone
        :AddReagent(55153, 8) -- Solid Gritted Paper
        :Save()

    module:NewCraft(41722, "Pendant of Instability", 300, {})
        :SetResult(56072)
        :AddRecipe(70183, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(12655, 12) -- Enchanted Thorium Bar
        :AddReagent(12363, 4) -- Arcane Crystal
        :AddReagent(61673, 8) -- Arcane Essence
        :AddReagent(16203, 2) -- Greater Eternal Essence
        :AddReagent(55248, 2) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41724, "Ornament of Restraint", 245, {})
        :SetResult(56073)
        :AddRecipe(70184, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(12359, 8) -- Thorium Bar
        :AddReagent(7971, 2) -- Black Pearl
        :AddReagent(11175, 2) -- Greater Nether Essence
        :AddReagent(7067, 4) -- Elemental Earth
        :AddReagent(55153, 4) -- Solid Gritted Paper
        :Save()

    module:NewCraft(41726, "Hydrathorn Bracers", 105, {})
        :SetResult(55330)
        :AddRecipe(70185, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(3576, 8) -- Tin Bar
        :AddReagent(2450, 2) -- Briarthorn
        :AddReagent(55151, 2) -- Coarse Gritted Paper
        :Save()

    module:NewCraft(41728, "Blackrock Ironclamps", 140, {})
        :SetResult(55331)
        :AddRecipe(70186, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(3575, 10) -- Iron Bar
        :AddReagent(1210, 2) -- Shadowgem
        :AddReagent(5500, 1) -- Iridescent Pearl
        :AddReagent(5635, 8) -- Sharp Claw
        :AddReagent(3466, 2) -- Strong Flux
        :Save()

    module:NewCraft(41730, "Monastery Emberbrace", 170, {})
        :SetResult(55332)
        :AddRecipe(70187, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(3859, 6) -- Steel Bar
        :AddReagent(4306, 2) -- Silk Cloth
        :AddReagent(3864, 2) -- Citrine
        :Save()

    module:NewCraft(41732, "Shadowmoon Orb", 85, {})
        :SetResult(55333)
        :AddRecipe(70188, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(2840, 5) -- Copper Bar
        :AddReagent(81094, 2) -- Amber Topaz
        :AddReagent(55150, 2) -- Rough Gritted Paper
        :Save()

    module:NewCraft(41734, "Fangclaw Relic", 120, {})
        :SetResult(55334)
        :AddRecipe(70189, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(2842, 4) -- Silver Bar
        :AddReagent(1206, 4) -- Moss Agate
        :AddReagent(55246, 2) -- Shimmering Oil
        :AddReagent(55151, 2) -- Coarse Gritted Paper
        :AddReagent(3390, 1) -- Elixir of Lesser Agility
        :AddReagent(5635, 8) -- Sharp Claw
        :Save()

    module:NewCraft(41736, "Netherbane Rod", 160, {})
        :SetResult(55335)
        :AddRecipe(70190, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(3575, 6) -- Iron Bar
        :AddReagent(3864, 4) -- Citrine
        :AddReagent(55246, 2) -- Shimmering Oil
        :Save()

    module:NewCraft(41738, "Marine Root", 200, {})
        :SetResult(55336)
        :AddRecipe(70191, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(3860, 2) -- Mithril Bar
        :AddReagent(3357, 2) -- Liferoot
        :AddReagent(7909, 2) -- Aquamarine
        :Save()

    module:NewCraft(41740, "Mistwood Tiara", 105, {})
        :SetResult(55337)
        :AddRecipe(70192, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(2841, 10) -- Bronze Bar
        :AddReagent(1206, 2) -- Moss Agate
        :AddReagent(55245, 1) -- Polishing Oil
        :Save()

    module:NewCraft(41742, "Venomspire Diadem", 145, {})
        :SetResult(55338)
        :AddRecipe(70193, Quality.Rare, {}) -- TODO add source
        :AddReagent(3575, 10) -- Iron Bar
        :AddReagent(1529, 2) -- Jade
        :AddReagent(55245, 2) -- Polishing Oil
        :AddReagent(1288, 6) -- Large Venom Sac
        :AddReagent(3466, 2) -- Strong Flux
        :Save()

    module:NewCraft(41744, "Bloodfire Circlet", 200, {})
        :SetResult(55339)
        :AddRecipe(70203, Quality.Uncommon, {}) -- TODO add source
        :AddReagent(3859, 7) -- Steel Bar
        :AddReagent(55250, 2) -- Emberstone
        :AddReagent(55245, 2) -- Polishing Oil
        :Save()

    module:NewCraft(41746, "Shadowforged Eye", 85, {})
        :SetResult(55340)
        :AddRecipe(70204, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(2840, 2) -- Copper Bar
        :AddReagent(774, 1) -- Malachite
        :AddReagent(818, 1) -- Tigerseye
        :AddReagent(81094, 1) -- Amber Topaz
        :AddReagent(1210, 1) -- Shadowgem
        :Save()

    module:NewCraft(41748, "Totem of Self Preservation", 135, {})
        :SetResult(55341)
        :AddRecipe(70205, Quality.Rare, {}) -- TODO add source
        :AddReagent(2842, 2) -- Silver Bar
        :AddReagent(5498, 2) -- Small Lustrous Pearl
        :AddReagent(55249, 4) -- Crystal Quartz
        :AddReagent(55246, 2) -- Shimmering Oil
        :AddReagent(55151, 2) -- Coarse Gritted Paper
        :Save()

    module:NewCraft(41750, "Facetted Moonstone Brooch", 185, {})
        :SetResult(55210)
        :AddRecipe(70194, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(3859, 3) -- Steel Bar
        :AddReagent(1705, 2) -- Lesser Moonstone
        :AddReagent(55152, 2) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41752, "Obsidian Brooch", 175, {})
        :SetResult(55211)
        :AddRecipe(70195, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(3859, 4) -- Steel Bar
        :AddReagent(1529, 2) -- Jade
        :AddReagent(55152, 2) -- Heavy Gritted Paper
        :Save()

    module:NewCraft(41754, "Smoldering Brooch", 200, {})
        :SetResult(55212)
        :AddRecipe(70196, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(3860, 3) -- Mithril Bar
        :AddReagent(55250, 2) -- Emberstone
        :AddReagent(55153, 2) -- Solid Gritted Paper
        :Save()

    module:NewCraft(41756, "Vitriol Brooch", 205, {})
        :SetResult(55213)
        :AddRecipe(70197, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(3860, 3) -- Mithril Bar
        :AddReagent(9262, 2) -- Black Vitriol
        :AddReagent(55153, 2) -- Solid Gritted Paper
        :Save()

    module:NewCraft(41760, "Graceful Agate Gemstone", 135, {})
        :SetResult(56074)
        :AddRecipe(70199, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(1206, 1) -- Moss Agate
        :AddReagent(55151, 2) -- Coarse Gritted Paper
        :AddReagent(55246, 2) -- Shimmering Oil
        :Save()

    module:NewCraft(41762, "Dreary Opal Gemstone", 270, {})
        :SetResult(56075)
        :AddRecipe(70200, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(12799, 1) -- Large Opal
        :AddReagent(13466, 1) -- Plaguebloom
        :AddReagent(55247, 2) -- Gemstone Oil
        :Save()

    module:NewCraft(41764, "Resurged Topaz Gemstone", 300, {})
        :SetResult(56077)
        :AddRecipe(70201, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(55252, 1) -- Imperial Topaz
        :AddReagent(61673, 3) -- Arcane Essence
        :AddReagent(55248, 3) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41768, "Resilient Arcane Gemstone", 300, {})
        :SetResult(56076)
        :AddRecipe(70202, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(55252, 1) -- Imperial Topaz
        :AddReagent(12363, 1) -- Arcane Crystal
        :AddReagent(7076, 2) -- Essence of Earth
        :AddReagent(55248, 1) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41770, "Dense Gemstone Cluster", 235, {SpellSource.Trainer})
        :SetResult(56019)
        :AddReagent(10620, 3) -- Thorium Ore
        :AddReagent(55154, 3) -- Dense Gritted Paper
        :Save()

    module:NewCraft(41774, "Spellweaver Pendant", 265, {})
        :SetResult(56090)
        :AddRecipe(70207, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(12359, 6) -- Thorium Bar
        :AddReagent(6037, 3) -- Truesilver Bar
        :AddReagent(7910, 1) -- Star Ruby
        :AddReagent(7909, 1) -- Aquamarine
        :Save()

    module:NewCraft(41776, "Ring of Midnight", 125, {})
        :SetResult(56091)
        :AddRecipe(70208, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(55174, 1) -- Rough Bronze Ring
        :AddReagent(1210, 2) -- Shadowgem
        :AddReagent(785, 1) -- Mageroyal
        :AddReagent(55246, 1) -- Shimmering Oil
        :Save()

    module:NewCraft(41778, "Stormcloud Shackles", 300, {SpellSource.Trainer})
        :SetResult(56092)
        :AddReagent(12655, 2) -- Enchanted Thorium Bar
        :AddReagent(7082, 1) -- Essence of Air
        :AddReagent(7081, 3) -- Breath of Wind
        :AddReagent(55154, 3) -- Dense Gritted Paper
        :Save()

    module:NewCraft(41780, "Stormcloud Signet", 290, {})
        :SetResult(56093)
        :AddRecipe(70210, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(41321, 1) -- Rough Thorium Ring
        :AddReagent(12655, 6) -- Enchanted Thorium Bar
        :AddReagent(7082, 3) -- Essence of Air
        :AddReagent(7081, 6) -- Breath of Wind
        :AddReagent(55154, 4) -- Dense Gritted Paper
        :AddReagent(55247, 4) -- Gemstone Oil
        :Save()

    module:NewCraft(41782, "Golden Runed Ring", 285, {})
        :SetResult(56094)
        :AddRecipe(70211, Quality.Epic, {RecipeSource.Drop, RecipeSource.Quest})
        :AddReagent(56033, 1) -- Pure Gold Ring
        :AddReagent(12360, 2) -- Arcanite Bar
        :AddReagent(12655, 6) -- Enchanted Thorium Bar
        :AddReagent(20520, 12) -- Dark Rune
        :AddReagent(7075, 20) -- Core of Earth
        :AddReagent(55248, 3) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41784, "Mana Binding Signet", 230, {})
        :SetResult(56095)
        :AddRecipe(70212, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(41341, 1) -- Rough Truesilver Ring
        :AddReagent(55251, 8) -- Pure Moonstone
        :AddReagent(7079, 8) -- Globe of Water
        :AddReagent(7070, 12) -- Elemental Water
        :AddReagent(3358, 12) -- Khadgar's Whisker
        :AddReagent(55247, 4) -- Gemstone Oil
        :Save()

    module:NewCraft(41786, "Ornate Mithril Crown", 210, {})
        :SetResult(56089)
        :AddRecipe(70206, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(3860, 16) -- Mithril Bar
        :AddReagent(55152, 4) -- Heavy Gritted Paper
        :AddReagent(3466, 1) -- Strong Flux
        :AddReagent(55246, 4) -- Shimmering Oil
        :Save()

    module:NewCraft(41788, "Blazefury Circlet", 300, {})
        :SetResult(55359)
        :AddRecipe(70213, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(56033, 1) -- Pure Gold Ring
        :AddReagent(55252, 2) -- Imperial Topaz
        :AddReagent(12364, 8) -- Huge Emerald
        :AddReagent(12799, 10) -- Large Opal
        :AddReagent(55248, 4) -- Enchanted Gemstone Oil
        :AddReagent(7078, 6) -- Essence of Fire
        :Save()

    module:NewCraft(41790, "Ring of Unleashed Potential", 290, {})
        :SetResult(55360)
        :AddRecipe(70214, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(56033, 1) -- Pure Gold Ring
        :AddReagent(55252, 1) -- Imperial Topaz
        :AddReagent(12803, 16) -- Living Essence
        :AddReagent(18335, 4) -- Pristine Black Diamond
        :AddReagent(12799, 6) -- Large Opal
        :AddReagent(55248, 4) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41792, "Empowered Domination Rod", 300, {})
        :SetResult(55361)
        :AddRecipe(70215, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(12360, 6) -- Arcanite Bar
        :AddReagent(12359, 12) -- Thorium Bar
        :AddReagent(55252, 1) -- Imperial Topaz
        :AddReagent(13926, 4) -- Golden Pearl
        :AddReagent(12800, 8) -- Azerothian Diamond
        :AddReagent(55248, 2) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41794, "Orb of Clairvoyance", 285, {})
        :SetResult(55362)
        :AddRecipe(70216, Quality.Rare, {RecipeSource.Vendor})
        :AddReagent(12359, 16) -- Thorium Bar
        :AddReagent(5116, 12) -- Long Tail Feather
        :AddReagent(12361, 6) -- Blue Sapphire
        :AddReagent(12799, 6) -- Large Opal
        :AddReagent(55247, 2) -- Gemstone Oil
        :Save()

    module:NewCraft(41796, "Grail of Forgotten Memories", 280, {})
        :SetResult(55363)
        :AddRecipe(70217, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(3577, 24) -- Gold Bar
        :AddReagent(55252, 1) -- Imperial Topaz
        :AddReagent(7080, 8) -- Essence of Water
        :AddReagent(7076, 8) -- Essence of Earth
        :AddReagent(12800, 6) -- Azerothian Diamond
        :AddReagent(55248, 4) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41798, "Guardbreaker Charm", 300, {})
        :SetResult(55364)
        :AddRecipe(70218, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(3577, 32) -- Gold Bar
        :AddReagent(7082, 8) -- Essence of Air
        :AddReagent(12800, 8) -- Azerothian Diamond
        :AddReagent(8152, 8) -- Flask of Big Mojo
        :AddReagent(55247, 6) -- Gemstone Oil
        :Save()

    module:NewCraft(41800, "Rudeus' Focusing Cane", 300, {})
        :SetResult(55365)
        :AddRecipe(70219, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(12359, 28) -- Thorium Bar
        :AddReagent(55252, 2) -- Imperial Topaz
        :AddReagent(12364, 12) -- Huge Emerald
        :AddReagent(7077, 8) -- Heart of Fire
        :AddReagent(61673, 8) -- Arcane Essence
        :AddReagent(18567, 1) -- Elemental Flux
        :AddReagent(55248, 6) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41802, "Spire of Channeled Power", 300, {})
        :SetResult(55366)
        :AddRecipe(70220, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(12359, 18) -- Thorium Bar
        :AddReagent(12360, 2) -- Arcanite Bar
        :AddReagent(12799, 10) -- Large Opal
        :AddReagent(61673, 6) -- Arcane Essence
        :AddReagent(55154, 6) -- Dense Gritted Paper
        :AddReagent(55247, 2) -- Gemstone Oil
        :Save()

    module:NewCraft(41804, "Bindings of Luminance", 300, {})
        :SetResult(55367)
        :AddRecipe(70221, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(3577, 26) -- Gold Bar
        :AddReagent(55252, 1) -- Imperial Topaz
        :AddReagent(17011, 2) -- Lava Core
        :AddReagent(12799, 8) -- Large Opal
        :AddReagent(55248, 2) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41806, "Crown of the Illustrious Queen", 300, {})
        :SetResult(55368)
        :AddRecipe(70222, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(3577, 32) -- Gold Bar
        :AddReagent(55252, 1) -- Imperial Topaz
        :AddReagent(12364, 6) -- Huge Emerald
        :AddReagent(12800, 8) -- Azerothian Diamond
        :AddReagent(3466, 6) -- Strong Flux
        :AddReagent(55248, 4) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41808, "Mastercrafted Diamond Bangles", 300, {})
        :SetResult(56096)
        :AddRecipe(70223, Quality.Epic, {RecipeSource.Quest})
        :AddReagent(12360, 6) -- Arcanite Bar
        :AddReagent(6037, 6) -- Truesilver Bar
        :AddReagent(12800, 8) -- Azerothian Diamond
        :AddReagent(61673, 4) -- Arcane Essence
        :AddReagent(55154, 6) -- Dense Gritted Paper
        :AddReagent(55248, 4) -- Enchanted Gemstone Oil
        :Save()

    module:NewCraft(41821, "Gorgeous Mountain Gemstone", 300, {})
        :SetResult(61818)
        :AddRecipe(70209, Quality.Rare, {RecipeSource.Drop, RecipeSource.Quest})
        :AddReagent(11382, 1) -- Blood of the Mountain
        :AddReagent(7077, 6) -- Heart of Fire
        :AddReagent(55248, 1) -- Enchanted Gemstone Oil
        :AddReagent(55154, 2) -- Dense Gritted Paper
        :Save()
end
