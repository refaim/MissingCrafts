local lib = LibCraftsGetLibrary()
local name, version = "Professions-Engineering", 3
local module = --[[---@type LcProfessionModule]] lib:RegisterProfessionModule(name, version, "Engineering")
if not module then return end

local Quality = lib.constants.qualities
local SpellSource = lib.constants.spell_sources
local RecipeSource = lib.constants.recipe_sources

module:NewCraft(3918, "Rough Blasting Powder", 1, {SpellSource.LearnedAutomatically})
    :SetResult(4357)
    :AddReagent(2835, 1) -- Rough Stone
    :Save()

module:NewCraft(3919, "Rough Dynamite", 1, {SpellSource.LearnedAutomatically})
    :SetResult(4358)
    :AddReagent(2589, 1) -- Linen Cloth
    :AddReagent(4357, 2) -- Rough Blasting Powder
    :Save()

module:NewCraft(3920, "Crafted Light Shot", 1, {SpellSource.LearnedAutomatically})
    :SetResult(8067)
    :AddReagent(2840, 1) -- Copper Bar
    :AddReagent(4357, 1) -- Rough Blasting Powder
    :Save()

module:NewCraft(3922, "Handful of Copper Bolts", 30, {SpellSource.Trainer})
    :SetResult(4359)
    :AddReagent(2840, 1) -- Copper Bar
    :Save()

module:NewCraft(3923, "Rough Copper Bomb", 30, {SpellSource.Trainer})
    :SetResult(4360)
    :AddReagent(2589, 1) -- Linen Cloth
    :AddReagent(2840, 1) -- Copper Bar
    :AddReagent(4357, 2) -- Rough Blasting Powder
    :AddReagent(4359, 1) -- Handful of Copper Bolts
    :Save()

module:NewCraft(3924, "Copper Tube", 50, {SpellSource.Trainer})
    :SetResult(4361)
    :AddReagent(2840, 2) -- Copper Bar
    :AddReagent(2880, 1) -- Weak Flux
    :Save()

module:NewCraft(3925, "Rough Boomstick", 50, {SpellSource.Trainer})
    :SetResult(4362)
    :AddReagent(4359, 1) -- Handful of Copper Bolts
    :AddReagent(4361, 1) -- Copper Tube
    :AddReagent(4399, 1) -- Wooden Stock
    :Save()

module:NewCraft(3926, "Copper Modulator", 65, {SpellSource.Trainer})
    :SetResult(4363)
    :AddReagent(2589, 2) -- Linen Cloth
    :AddReagent(2840, 1) -- Copper Bar
    :AddReagent(4359, 2) -- Handful of Copper Bolts
    :Save()

module:NewCraft(3928, "Mechanical Squirrel", 75, {})
    :SetResult(4401)
    :AddRecipe(4408, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(774, 2) -- Malachite
    :AddReagent(2840, 1) -- Copper Bar
    :AddReagent(4359, 1) -- Handful of Copper Bolts
    :AddReagent(4363, 1) -- Copper Modulator
    :Save()

module:NewCraft(3929, "Coarse Blasting Powder", 75, {SpellSource.Trainer})
    :SetResult(4364)
    :AddReagent(2836, 1) -- Coarse Stone
    :Save()

module:NewCraft(3930, "Crafted Heavy Shot", 75, {SpellSource.Trainer})
    :SetResult(8068)
    :AddReagent(2840, 1) -- Copper Bar
    :AddReagent(4364, 1) -- Coarse Blasting Powder
    :Save()

module:NewCraft(3931, "Coarse Dynamite", 75, {SpellSource.Trainer})
    :SetResult(4365)
    :AddReagent(2589, 1) -- Linen Cloth
    :AddReagent(4364, 3) -- Coarse Blasting Powder
    :Save()

module:NewCraft(3932, "Target Dummy", 85, {SpellSource.Trainer})
    :SetResult(4366)
    :AddReagent(2592, 1) -- Wool Cloth
    :AddReagent(2841, 1) -- Bronze Bar
    :AddReagent(4359, 2) -- Handful of Copper Bolts
    :AddReagent(4363, 1) -- Copper Modulator
    :Save()

module:NewCraft(3933, "Small Seaforium Charge", 100, {})
    :SetResult(4367)
    :AddRecipe(4409, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(159, 1) -- Refreshing Spring Water
    :AddReagent(2318, 1) -- Light Leather
    :AddReagent(4363, 1) -- Copper Modulator
    :AddReagent(4364, 2) -- Coarse Blasting Powder
    :Save()

module:NewCraft(3934, "Flying Tiger Goggles", 100, {SpellSource.Trainer})
    :SetResult(4368)
    :AddReagent(818, 2) -- Tigerseye
    :AddReagent(2318, 6) -- Light Leather
    :Save()

module:NewCraft(3936, "Deadly Blunderbuss", 105, {SpellSource.Trainer})
    :SetResult(4369)
    :AddReagent(2319, 2) -- Medium Leather
    :AddReagent(4359, 4) -- Handful of Copper Bolts
    :AddReagent(4361, 2) -- Copper Tube
    :AddReagent(4399, 1) -- Wooden Stock
    :Save()

module:NewCraft(3937, "Large Copper Bomb", 105, {SpellSource.Trainer})
    :SetResult(4370)
    :AddReagent(2840, 3) -- Copper Bar
    :AddReagent(4364, 4) -- Coarse Blasting Powder
    :AddReagent(4404, 1) -- Silver Contact
    :Save()

module:NewCraft(3938, "Bronze Tube", 105, {SpellSource.Trainer})
    :SetResult(4371)
    :AddReagent(2841, 2) -- Bronze Bar
    :AddReagent(2880, 1) -- Weak Flux
    :Save()

module:NewCraft(3939, "Lovingly Crafted Boomstick", 120, {})
    :SetResult(4372)
    :AddRecipe(13309, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(1206, 3) -- Moss Agate
    :AddReagent(4359, 2) -- Handful of Copper Bolts
    :AddReagent(4371, 2) -- Bronze Tube
    :AddReagent(4400, 1) -- Heavy Stock
    :Save()

module:NewCraft(3940, "Shadow Goggles", 120, {})
    :SetResult(4373)
    :AddRecipe(4410, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1210, 2) -- Shadowgem
    :AddReagent(2319, 4) -- Medium Leather
    :Save()

module:NewCraft(3941, "Small Bronze Bomb", 120, {SpellSource.Trainer})
    :SetResult(4374)
    :AddReagent(2592, 1) -- Wool Cloth
    :AddReagent(2841, 2) -- Bronze Bar
    :AddReagent(4364, 4) -- Coarse Blasting Powder
    :AddReagent(4404, 1) -- Silver Contact
    :Save()

module:NewCraft(3942, "Whirring Bronze Gizmo", 125, {SpellSource.Trainer})
    :SetResult(4375)
    :AddReagent(2592, 1) -- Wool Cloth
    :AddReagent(2841, 2) -- Bronze Bar
    :Save()

module:NewCraft(3944, "Flame Deflector", 125, {})
    :SetResult(4376)
    :AddRecipe(4411, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(4375, 1) -- Whirring Bronze Gizmo
    :AddReagent(4402, 1) -- Small Flame Sac
    :Save()

module:NewCraft(3945, "Heavy Blasting Powder", 125, {SpellSource.Trainer})
    :SetResult(4377)
    :AddReagent(2838, 1) -- Heavy Stone
    :Save()

module:NewCraft(3946, "Heavy Dynamite", 125, {SpellSource.Trainer})
    :SetResult(4378)
    :AddReagent(2592, 1) -- Wool Cloth
    :AddReagent(4377, 2) -- Heavy Blasting Powder
    :Save()

module:NewCraft(3947, "Crafted Solid Shot", 125, {SpellSource.Trainer})
    :SetResult(8069)
    :AddReagent(2841, 1) -- Bronze Bar
    :AddReagent(4377, 1) -- Heavy Blasting Powder
    :Save()

module:NewCraft(3949, "Silver-plated Shotgun", 130, {SpellSource.Trainer})
    :SetResult(4379)
    :AddReagent(2842, 3) -- Silver Bar
    :AddReagent(4371, 2) -- Bronze Tube
    :AddReagent(4375, 2) -- Whirring Bronze Gizmo
    :AddReagent(4400, 1) -- Heavy Stock
    :Save()

module:NewCraft(3950, "Big Bronze Bomb", 140, {SpellSource.Trainer})
    :SetResult(4380)
    :AddReagent(2841, 3) -- Bronze Bar
    :AddReagent(4377, 2) -- Heavy Blasting Powder
    :AddReagent(4404, 1) -- Silver Contact
    :Save()

module:NewCraft(3952, "Minor Recombobulator", 140, {})
    :SetResult(4381)
    :AddRecipe(14639, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(1206, 1) -- Moss Agate
    :AddReagent(2319, 2) -- Medium Leather
    :AddReagent(4371, 1) -- Bronze Tube
    :AddReagent(4375, 2) -- Whirring Bronze Gizmo
    :Save()

module:NewCraft(3953, "Bronze Framework", 145, {SpellSource.Trainer})
    :SetResult(4382)
    :AddReagent(2319, 1) -- Medium Leather
    :AddReagent(2592, 1) -- Wool Cloth
    :AddReagent(2841, 2) -- Bronze Bar
    :Save()

module:NewCraft(3954, "Moonsight Rifle", 145, {})
    :SetResult(4383)
    :AddRecipe(4412, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(1705, 2) -- Lesser Moonstone
    :AddReagent(4371, 3) -- Bronze Tube
    :AddReagent(4375, 3) -- Whirring Bronze Gizmo
    :AddReagent(4400, 1) -- Heavy Stock
    :Save()

module:NewCraft(3955, "Explosive Sheep", 150, {SpellSource.Trainer})
    :SetResult(4384)
    :AddReagent(2592, 2) -- Wool Cloth
    :AddReagent(4375, 1) -- Whirring Bronze Gizmo
    :AddReagent(4377, 2) -- Heavy Blasting Powder
    :AddReagent(4382, 1) -- Bronze Framework
    :Save()

module:NewCraft(3956, "Green Tinted Goggles", 150, {SpellSource.Trainer})
    :SetResult(4385)
    :AddReagent(1206, 2) -- Moss Agate
    :AddReagent(2319, 4) -- Medium Leather
    :AddReagent(4368, 1) -- Flying Tiger Goggles
    :Save()

module:NewCraft(3957, "Ice Deflector", 155, {})
    :SetResult(4386)
    :AddRecipe(13308, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3829, 1) -- Frost Oil
    :AddReagent(4375, 1) -- Whirring Bronze Gizmo
    :Save()

module:NewCraft(3958, "Iron Strut", 160, {SpellSource.Trainer})
    :SetResult(4387)
    :AddReagent(3575, 2) -- Iron Bar
    :Save()

module:NewCraft(3959, "Discombobulator Ray", 160, {})
    :SetResult(4388)
    :AddRecipe(4413, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(1529, 1) -- Jade
    :AddReagent(4306, 2) -- Silk Cloth
    :AddReagent(4371, 1) -- Bronze Tube
    :AddReagent(4375, 3) -- Whirring Bronze Gizmo
    :Save()

module:NewCraft(3960, "Portable Bronze Mortar", 165, {})
    :SetResult(4403)
    :AddRecipe(4414, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(2319, 4) -- Medium Leather
    :AddReagent(4371, 4) -- Bronze Tube
    :AddReagent(4377, 4) -- Heavy Blasting Powder
    :AddReagent(4387, 1) -- Iron Strut
    :Save()

module:NewCraft(3961, "Gyrochronatom", 170, {SpellSource.Trainer})
    :SetResult(4389)
    :AddReagent(3575, 1) -- Iron Bar
    :AddReagent(10558, 1) -- Gold Power Core
    :Save()

module:NewCraft(3962, "Iron Grenade", 175, {SpellSource.Trainer})
    :SetResult(4390)
    :AddReagent(3575, 1) -- Iron Bar
    :AddReagent(4306, 1) -- Silk Cloth
    :AddReagent(4377, 1) -- Heavy Blasting Powder
    :Save()

module:NewCraft(3963, "Compact Harvest Reaper Kit", 175, {SpellSource.Trainer})
    :SetResult(4391)
    :AddReagent(4234, 4) -- Heavy Leather
    :AddReagent(4382, 1) -- Bronze Framework
    :AddReagent(4387, 2) -- Iron Strut
    :AddReagent(4389, 2) -- Gyrochronatom
    :Save()

module:NewCraft(3965, "Advanced Target Dummy", 185, {SpellSource.Trainer})
    :SetResult(4392)
    :AddReagent(4234, 4) -- Heavy Leather
    :AddReagent(4382, 1) -- Bronze Framework
    :AddReagent(4387, 1) -- Iron Strut
    :AddReagent(4389, 1) -- Gyrochronatom
    :Save()

module:NewCraft(3966, "Craftsman's Monocle", 185, {})
    :SetResult(4393)
    :AddRecipe(4415, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3864, 2) -- Citrine
    :AddReagent(4234, 6) -- Heavy Leather
    :Save()

module:NewCraft(3967, "Big Iron Bomb", 190, {SpellSource.Trainer})
    :SetResult(4394)
    :AddReagent(3575, 3) -- Iron Bar
    :AddReagent(4377, 3) -- Heavy Blasting Powder
    :AddReagent(4404, 1) -- Silver Contact
    :Save()

module:NewCraft(3968, "Goblin Land Mine", 195, {})
    :SetResult(4395)
    :AddRecipe(4416, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3575, 2) -- Iron Bar
    :AddReagent(4377, 3) -- Heavy Blasting Powder
    :AddReagent(4389, 1) -- Gyrochronatom
    :Save()

module:NewCraft(3969, "Mechanical Dragonling", 200, {})
    :SetResult(4396)
    :AddRecipe(13311, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3864, 2) -- Citrine
    :AddReagent(4382, 1) -- Bronze Framework
    :AddReagent(4387, 4) -- Iron Strut
    :AddReagent(4389, 4) -- Gyrochronatom
    :AddReagent(7191, 1) -- Fused Wiring
    :Save()

module:NewCraft(3971, "Gnomish Cloaking Device", 200, {})
    :SetResult(4397)
    :AddRecipe(7742, Quality.Common, {RecipeSource.Drop, RecipeSource.Vendor})
    :AddReagent(1529, 2) -- Jade
    :AddReagent(1705, 2) -- Lesser Moonstone
    :AddReagent(3864, 2) -- Citrine
    :AddReagent(4389, 4) -- Gyrochronatom
    :AddReagent(7191, 1) -- Fused Wiring
    :Save()

module:NewCraft(3972, "Large Seaforium Charge", 200, {})
    :SetResult(4398)
    :AddRecipe(4417, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(159, 1) -- Refreshing Spring Water
    :AddReagent(4234, 2) -- Heavy Leather
    :AddReagent(10505, 2) -- Solid Blasting Powder
    :Save()

module:NewCraft(3973, "Silver Contact", 90, {SpellSource.Trainer})
    :SetResult(4404)
    :AddReagent(2842, 1) -- Silver Bar
    :Save()

module:NewCraft(3977, "Crude Scope", 60, {SpellSource.Trainer})
    :SetResult(4405)
    :AddReagent(774, 1) -- Malachite
    :AddReagent(4359, 1) -- Handful of Copper Bolts
    :AddReagent(4361, 1) -- Copper Tube
    :Save()

module:NewCraft(3978, "Standard Scope", 110, {SpellSource.Trainer})
    :SetResult(4406)
    :AddReagent(1206, 1) -- Moss Agate
    :AddReagent(4371, 1) -- Bronze Tube
    :Save()

module:NewCraft(3979, "Accurate Scope", 180, {})
    :SetResult(4407)
    :AddRecipe(13310, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(1529, 1) -- Jade
    :AddReagent(3864, 1) -- Citrine
    :AddReagent(4371, 1) -- Bronze Tube
    :Save()

module:NewCraft(6458, "Ornate Spyglass", 135, {SpellSource.Trainer})
    :SetResult(5507)
    :AddReagent(1206, 1) -- Moss Agate
    :AddReagent(4363, 1) -- Copper Modulator
    :AddReagent(4371, 2) -- Bronze Tube
    :AddReagent(4375, 2) -- Whirring Bronze Gizmo
    :Save()

module:NewCraft(7430, "Arclight Spanner", 50, {SpellSource.Trainer})
    :SetResult(6219)
    :AddReagent(2840, 6) -- Copper Bar
    :Save()

module:NewCraft(8243, "Flash Bomb", 185, {})
    :SetResult(4852)
    :AddRecipe(6672, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(4306, 1) -- Silk Cloth
    :AddReagent(4377, 1) -- Heavy Blasting Powder
    :AddReagent(4611, 1) -- Blue Pearl
    :Save()

module:NewCraft(8334, "Practice Lock", 100, {SpellSource.Trainer})
    :SetResult(6712)
    :AddReagent(2841, 1) -- Bronze Bar
    :AddReagent(2880, 1) -- Weak Flux
    :AddReagent(4359, 2) -- Handful of Copper Bolts
    :Save()

module:NewCraft(8339, "EZ-Thro Dynamite", 100, {})
    :SetResult(6714)
    :AddRecipe(6716, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(2592, 1) -- Wool Cloth
    :AddReagent(4364, 4) -- Coarse Blasting Powder
    :Save()

module:NewCraft(8895, "Goblin Rocket Boots", 225, {SpellSource.Trainer})
    :SetResult(7189)
    :AddReagent(4234, 4) -- Heavy Leather
    :AddReagent(9061, 2) -- Goblin Rocket Fuel
    :AddReagent(10026, 1) -- Black Mageweave Boots
    :AddReagent(10559, 2) -- Mithril Tube
    :AddReagent(10560, 1) -- Unstable Trigger
    :Save()

module:NewCraft(9269, "Gnomish Universal Remote", 125, {})
    :SetResult(7506)
    :AddRecipe(7560, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(774, 1) -- Malachite
    :AddReagent(814, 2) -- Flask of Oil
    :AddReagent(818, 1) -- Tigerseye
    :AddReagent(2841, 6) -- Bronze Bar
    :AddReagent(4375, 1) -- Whirring Bronze Gizmo
    :Save()

module:NewCraft(9271, "Aquadynamic Fish Attractor", 150, {SpellSource.Trainer})
    :SetResult(6533)
    :AddReagent(2841, 2) -- Bronze Bar
    :AddReagent(4364, 1) -- Coarse Blasting Powder
    :AddReagent(6530, 1) -- Nightcrawlers
    :Save()

module:NewCraft(9273, "Goblin Jumper Cables", 165, {})
    :SetResult(7148)
    :AddRecipe(7561, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(814, 2) -- Flask of Oil
    :AddReagent(1210, 2) -- Shadowgem
    :AddReagent(3575, 6) -- Iron Bar
    :AddReagent(4306, 2) -- Silk Cloth
    :AddReagent(4375, 2) -- Whirring Bronze Gizmo
    :AddReagent(7191, 1) -- Fused Wiring
    :Save()

module:NewCraft(12584, "Gold Power Core", 150, {SpellSource.Trainer})
    :SetResult(10558)
    :AddReagent(3577, 1) -- Gold Bar
    :Save()

module:NewCraft(12585, "Solid Blasting Powder", 175, {SpellSource.Trainer})
    :SetResult(10505)
    :AddReagent(7912, 2) -- Solid Stone
    :Save()

module:NewCraft(12586, "Solid Dynamite", 175, {SpellSource.Trainer})
    :SetResult(10507)
    :AddReagent(4306, 1) -- Silk Cloth
    :AddReagent(10505, 1) -- Solid Blasting Powder
    :Save()

module:NewCraft(12587, "Bright-Eye Goggles", 175, {})
    :SetResult(10499)
    :AddRecipe(10601, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3864, 2) -- Citrine
    :AddReagent(4234, 6) -- Heavy Leather
    :Save()

module:NewCraft(12589, "Mithril Tube", 195, {SpellSource.Trainer})
    :SetResult(10559)
    :AddReagent(3860, 3) -- Mithril Bar
    :Save()

module:NewCraft(12590, "Gyromatic Micro-Adjustor", 175, {SpellSource.Trainer})
    :SetResult(10498)
    :AddReagent(3859, 4) -- Steel Bar
    :Save()

module:NewCraft(12591, "Unstable Trigger", 200, {SpellSource.Trainer})
    :SetResult(10560)
    :AddReagent(3860, 1) -- Mithril Bar
    :AddReagent(4338, 1) -- Mageweave Cloth
    :AddReagent(10505, 1) -- Solid Blasting Powder
    :Save()

module:NewCraft(12594, "Fire Goggles", 205, {SpellSource.Trainer})
    :SetResult(10500)
    :AddReagent(3864, 2) -- Citrine
    :AddReagent(4234, 4) -- Heavy Leather
    :AddReagent(4385, 1) -- Green Tinted Goggles
    :AddReagent(7068, 2) -- Elemental Fire
    :Save()

module:NewCraft(12595, "Mithril Blunderbuss", 205, {SpellSource.Trainer})
    :SetResult(10508)
    :AddReagent(3860, 4) -- Mithril Bar
    :AddReagent(4400, 1) -- Heavy Stock
    :AddReagent(7068, 2) -- Elemental Fire
    :AddReagent(10559, 1) -- Mithril Tube
    :AddReagent(10560, 1) -- Unstable Trigger
    :Save()

module:NewCraft(12596, "Hi-Impact Mithril Slugs", 210, {SpellSource.Trainer})
    :SetResult(10512)
    :AddReagent(3860, 1) -- Mithril Bar
    :AddReagent(10505, 1) -- Solid Blasting Powder
    :Save()

module:NewCraft(12597, "Deadly Scope", 210, {})
    :SetResult(10546)
    :AddRecipe(10602, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4304, 2) -- Thick Leather
    :AddReagent(7909, 2) -- Aquamarine
    :AddReagent(10559, 1) -- Mithril Tube
    :Save()

module:NewCraft(12599, "Mithril Casing", 215, {SpellSource.Trainer})
    :SetResult(10561)
    :AddReagent(3860, 3) -- Mithril Bar
    :Save()

module:NewCraft(12603, "Mithril Frag Bomb", 215, {SpellSource.Trainer})
    :SetResult(10514)
    :AddReagent(10505, 1) -- Solid Blasting Powder
    :AddReagent(10560, 1) -- Unstable Trigger
    :AddReagent(10561, 1) -- Mithril Casing
    :Save()

module:NewCraft(12607, "Catseye Ultra Goggles", 220, {})
    :SetResult(10501)
    :AddRecipe(10603, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(4304, 4) -- Thick Leather
    :AddReagent(7909, 2) -- Aquamarine
    :AddReagent(10592, 1) -- Catseye Elixir
    :Save()

module:NewCraft(12614, "Mithril Heavy-bore Rifle", 220, {})
    :SetResult(10510)
    :AddRecipe(10604, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(3860, 6) -- Mithril Bar
    :AddReagent(3864, 2) -- Citrine
    :AddReagent(4400, 1) -- Heavy Stock
    :AddReagent(10559, 2) -- Mithril Tube
    :AddReagent(10560, 1) -- Unstable Trigger
    :Save()

module:NewCraft(12615, "Spellpower Goggles Xtreme", 225, {})
    :SetResult(10502)
    :AddRecipe(10605, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(4304, 4) -- Thick Leather
    :AddReagent(7910, 2) -- Star Ruby
    :Save()

module:NewCraft(12616, "Parachute Cloak", 225, {})
    :SetResult(10518)
    :AddRecipe(10606, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop, RecipeSource.Fishing})
    :AddReagent(4339, 4) -- Bolt of Mageweave
    :AddReagent(10285, 2) -- Shadow Silk
    :AddReagent(10505, 4) -- Solid Blasting Powder
    :AddReagent(10560, 1) -- Unstable Trigger
    :Save()

module:NewCraft(12617, "Deepdive Helmet", 230, {})
    :SetResult(10506)
    :AddRecipe(10607, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(774, 4) -- Malachite
    :AddReagent(818, 4) -- Tigerseye
    :AddReagent(3860, 8) -- Mithril Bar
    :AddReagent(6037, 1) -- Truesilver Bar
    :AddReagent(10561, 1) -- Mithril Casing
    :Save()

module:NewCraft(12618, "Rose Colored Goggles", 230, {SpellSource.Trainer})
    :SetResult(10503)
    :AddReagent(4304, 6) -- Thick Leather
    :AddReagent(7910, 2) -- Star Ruby
    :Save()

module:NewCraft(12619, "Hi-Explosive Bomb", 235, {SpellSource.Trainer})
    :SetResult(10562)
    :AddReagent(10505, 2) -- Solid Blasting Powder
    :AddReagent(10560, 1) -- Unstable Trigger
    :AddReagent(10561, 2) -- Mithril Casing
    :Save()

module:NewCraft(12620, "Sniper Scope", 240, {})
    :SetResult(10548)
    :AddRecipe(10608, Quality.Rare, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(6037, 2) -- Truesilver Bar
    :AddReagent(7910, 1) -- Star Ruby
    :AddReagent(10559, 1) -- Mithril Tube
    :Save()

module:NewCraft(12621, "Mithril Gyro-Shot", 245, {SpellSource.Trainer})
    :SetResult(10513)
    :AddReagent(3860, 2) -- Mithril Bar
    :AddReagent(10505, 2) -- Solid Blasting Powder
    :Save()

module:NewCraft(12622, "Green Lens", 245, {SpellSource.Trainer})
    :SetResult(10504)
    :AddReagent(1529, 3) -- Jade
    :AddReagent(4304, 8) -- Thick Leather
    :AddReagent(7909, 3) -- Aquamarine
    :AddReagent(8153, 2) -- Wildvine
    :AddReagent(10286, 2) -- Heart of the Wild
    :Save()

module:NewCraft(12624, "Mithril Mechanical Dragonling", 250, {})
    :SetResult(10576)
    :AddRecipe(10609, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3860, 14) -- Mithril Bar
    :AddReagent(6037, 4) -- Truesilver Bar
    :AddReagent(7077, 4) -- Heart of Fire
    :AddReagent(7910, 2) -- Star Ruby
    :AddReagent(9060, 2) -- Inlaid Mithril Cylinder
    :AddReagent(9061, 2) -- Goblin Rocket Fuel
    :Save()

module:NewCraft(12715, "Goblin Rocket Fuel Recipe", 205, {SpellSource.Trainer})
    :SetResult(10644)
    :AddReagent(10647, 1) -- Engineer's Ink
    :AddReagent(10648, 1) -- Blank Parchment
    :Save()

module:NewCraft(12716, "Goblin Mortar", 205, {SpellSource.Trainer})
    :SetResult(10577)
    :AddReagent(3860, 4) -- Mithril Bar
    :AddReagent(7068, 1) -- Elemental Fire
    :AddReagent(10505, 5) -- Solid Blasting Powder
    :AddReagent(10558, 1) -- Gold Power Core
    :AddReagent(10559, 2) -- Mithril Tube
    :Save()

module:NewCraft(12717, "Goblin Mining Helmet", 205, {SpellSource.Trainer})
    :SetResult(10542)
    :AddReagent(3860, 8) -- Mithril Bar
    :AddReagent(3864, 1) -- Citrine
    :AddReagent(7067, 4) -- Elemental Earth
    :Save()

module:NewCraft(12718, "Goblin Construction Helmet", 205, {SpellSource.Trainer})
    :SetResult(10543)
    :AddReagent(3860, 8) -- Mithril Bar
    :AddReagent(3864, 1) -- Citrine
    :AddReagent(7068, 4) -- Elemental Fire
    :Save()

module:NewCraft(12754, "The Big One", 235, {SpellSource.Trainer})
    :SetResult(10586)
    :AddReagent(9061, 1) -- Goblin Rocket Fuel
    :AddReagent(10507, 6) -- Solid Dynamite
    :AddReagent(10560, 1) -- Unstable Trigger
    :AddReagent(10561, 1) -- Mithril Casing
    :Save()

module:NewCraft(12755, "Goblin Bomb Dispenser", 230, {SpellSource.Trainer})
    :SetResult(10587)
    :AddReagent(4407, 2) -- Accurate Scope
    :AddReagent(6037, 6) -- Truesilver Bar
    :AddReagent(10505, 4) -- Solid Blasting Powder
    :AddReagent(10560, 1) -- Unstable Trigger
    :AddReagent(10561, 2) -- Mithril Casing
    :Save()

module:NewCraft(12758, "Goblin Rocket Helmet", 245, {SpellSource.Trainer})
    :SetResult(10588)
    :AddReagent(3860, 4) -- Mithril Bar
    :AddReagent(9061, 4) -- Goblin Rocket Fuel
    :AddReagent(10543, 1) -- Goblin Construction Helmet
    :AddReagent(10560, 1) -- Unstable Trigger
    :Save()

module:NewCraft(12759, "Gnomish Death Ray", 240, {SpellSource.Trainer})
    :SetResult(10645)
    :AddReagent(7972, 4) -- Ichor of Undeath
    :AddReagent(9060, 1) -- Inlaid Mithril Cylinder
    :AddReagent(10559, 2) -- Mithril Tube
    :AddReagent(10560, 1) -- Unstable Trigger
    :AddReagent(12808, 1) -- Essence of Undeath
    :Save()

module:NewCraft(12760, "Goblin Sapper Charge", 205, {SpellSource.Trainer})
    :SetResult(10646)
    :AddReagent(4338, 1) -- Mageweave Cloth
    :AddReagent(10505, 3) -- Solid Blasting Powder
    :AddReagent(10560, 1) -- Unstable Trigger
    :Save()

module:NewCraft(12895, "Inlaid Mithril Cylinder Plans", 200, {SpellSource.Trainer})
    :SetResult(10713)
    :AddReagent(10647, 1) -- Engineer's Ink
    :AddReagent(10648, 1) -- Blank Parchment
    :Save()

module:NewCraft(12897, "Gnomish Goggles", 210, {SpellSource.Trainer})
    :SetResult(10545)
    :AddReagent(4234, 2) -- Heavy Leather
    :AddReagent(8151, 2) -- Flask of Mojo
    :AddReagent(10500, 1) -- Fire Goggles
    :AddReagent(10558, 2) -- Gold Power Core
    :AddReagent(10559, 1) -- Mithril Tube
    :Save()

module:NewCraft(12899, "Gnomish Shrink Ray", 205, {SpellSource.Trainer})
    :SetResult(10716)
    :AddReagent(1529, 2) -- Jade
    :AddReagent(3860, 4) -- Mithril Bar
    :AddReagent(8151, 4) -- Flask of Mojo
    :AddReagent(10559, 1) -- Mithril Tube
    :AddReagent(10560, 1) -- Unstable Trigger
    :Save()

module:NewCraft(12902, "Gnomish Net-o-Matic Projector", 210, {SpellSource.Trainer})
    :SetResult(10720)
    :AddReagent(3860, 4) -- Mithril Bar
    :AddReagent(4337, 4) -- Thick Spider's Silk
    :AddReagent(10285, 2) -- Shadow Silk
    :AddReagent(10505, 2) -- Solid Blasting Powder
    :AddReagent(10559, 1) -- Mithril Tube
    :Save()

module:NewCraft(12903, "Gnomish Harm Prevention Belt", 215, {SpellSource.Trainer})
    :SetResult(10721)
    :AddReagent(3860, 4) -- Mithril Bar
    :AddReagent(6037, 2) -- Truesilver Bar
    :AddReagent(7387, 1) -- Dusky Belt
    :AddReagent(7909, 2) -- Aquamarine
    :AddReagent(10560, 1) -- Unstable Trigger
    :Save()

module:NewCraft(12905, "Gnomish Rocket Boots", 225, {SpellSource.Trainer})
    :SetResult(10724)
    :AddReagent(4234, 4) -- Heavy Leather
    :AddReagent(4389, 4) -- Gyrochronatom
    :AddReagent(10026, 1) -- Black Mageweave Boots
    :AddReagent(10505, 8) -- Solid Blasting Powder
    :AddReagent(10559, 2) -- Mithril Tube
    :Save()

module:NewCraft(12906, "Gnomish Battle Chicken", 230, {SpellSource.Trainer})
    :SetResult(10725)
    :AddReagent(1529, 2) -- Jade
    :AddReagent(3860, 6) -- Mithril Bar
    :AddReagent(6037, 6) -- Truesilver Bar
    :AddReagent(9060, 2) -- Inlaid Mithril Cylinder
    :AddReagent(10558, 1) -- Gold Power Core
    :AddReagent(10561, 1) -- Mithril Casing
    :Save()

module:NewCraft(12907, "Gnomish Mind Control Cap", 235, {SpellSource.Trainer})
    :SetResult(10726)
    :AddReagent(3860, 10) -- Mithril Bar
    :AddReagent(4338, 4) -- Mageweave Cloth
    :AddReagent(6037, 4) -- Truesilver Bar
    :AddReagent(7910, 2) -- Star Ruby
    :AddReagent(10558, 1) -- Gold Power Core
    :Save()

module:NewCraft(12908, "Goblin Dragon Gun", 240, {SpellSource.Trainer})
    :SetResult(10727)
    :AddReagent(3860, 6) -- Mithril Bar
    :AddReagent(6037, 6) -- Truesilver Bar
    :AddReagent(9061, 4) -- Goblin Rocket Fuel
    :AddReagent(10559, 2) -- Mithril Tube
    :AddReagent(10560, 1) -- Unstable Trigger
    :Save()

module:NewCraft(13240, "The Mortar: Reloaded", 205, {SpellSource.Trainer})
    :SetResult(10577)
    :AddReagent(3860, 1) -- Mithril Bar
    :AddReagent(10505, 3) -- Solid Blasting Powder
    :AddReagent(10577, 1) -- Goblin Mortar
    :Save()

module:NewCraft(15255, "Mechanical Repair Kit", 200, {SpellSource.Trainer})
    :SetResult(11590)
    :AddReagent(3860, 1) -- Mithril Bar
    :AddReagent(4338, 1) -- Mageweave Cloth
    :AddReagent(10505, 1) -- Solid Blasting Powder
    :Save()

module:NewCraft(15628, "Pet Bombling", 205, {})
    :SetResult(11825)
    :AddRecipe(11828, Quality.Uncommon, {RecipeSource.GiftedToReturningEngineers})
    :AddReagent(3860, 6) -- Mithril Bar
    :AddReagent(4394, 1) -- Big Iron Bomb
    :AddReagent(7077, 1) -- Heart of Fire
    :AddReagent(7191, 1) -- Fused Wiring
    :Save()

module:NewCraft(15633, "Lil' Smoky", 205, {})
    :SetResult(11826)
    :AddRecipe(11827, Quality.Uncommon, {RecipeSource.GiftedToReturningEngineers})
    :AddReagent(3860, 2) -- Mithril Bar
    :AddReagent(4389, 2) -- Gyrochronatom
    :AddReagent(6037, 1) -- Truesilver Bar
    :AddReagent(7075, 1) -- Core of Earth
    :AddReagent(7191, 1) -- Fused Wiring
    :Save()

module:NewCraft(19567, "Salt Shaker", 250, {SpellSource.Trainer})
    :SetResult(15846)
    :AddReagent(10558, 1) -- Gold Power Core
    :AddReagent(10560, 4) -- Unstable Trigger
    :AddReagent(10561, 1) -- Mithril Casing
    :AddReagent(12359, 6) -- Thorium Bar
    :Save()

module:NewCraft(19788, "Dense Blasting Powder", 250, {SpellSource.Trainer})
    :SetResult(15992)
    :AddReagent(12365, 2) -- Dense Stone
    :Save()

module:NewCraft(19790, "Thorium Grenade", 260, {SpellSource.Trainer})
    :SetResult(15993)
    :AddRecipe(16041, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12359, 3) -- Thorium Bar
    :AddReagent(14047, 3) -- Runecloth
    :AddReagent(15992, 3) -- Dense Blasting Powder
    :AddReagent(15994, 1) -- Thorium Widget
    :Save()

module:NewCraft(19791, "Thorium Widget", 260, {SpellSource.Trainer})
    :SetResult(15994)
    :AddRecipe(16042, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12359, 3) -- Thorium Bar
    :AddReagent(14047, 1) -- Runecloth
    :Save()

module:NewCraft(19792, "Thorium Rifle", 260, {})
    :SetResult(15995)
    :AddRecipe(16043, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(10546, 1) -- Deadly Scope
    :AddReagent(10559, 2) -- Mithril Tube
    :AddReagent(10561, 2) -- Mithril Casing
    :AddReagent(12359, 4) -- Thorium Bar
    :AddReagent(15994, 2) -- Thorium Widget
    :Save()

module:NewCraft(19793, "Lifelike Mechanical Toad", 265, {})
    :SetResult(15996)
    :AddRecipe(16044, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(8170, 1) -- Rugged Leather
    :AddReagent(10558, 1) -- Gold Power Core
    :AddReagent(12803, 1) -- Living Essence
    :AddReagent(15994, 4) -- Thorium Widget
    :Save()

module:NewCraft(19794, "Spellpower Goggles Xtreme Plus", 270, {})
    :SetResult(15999)
    :AddRecipe(16045, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7910, 4) -- Star Ruby
    :AddReagent(10502, 1) -- Spellpower Goggles Xtreme
    :AddReagent(12810, 2) -- Enchanted Leather
    :AddReagent(14047, 8) -- Runecloth
    :Save()

module:NewCraft(19795, "Thorium Tube", 275, {})
    :SetResult(16000)
    :AddRecipe(16047, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12359, 6) -- Thorium Bar
    :Save()

module:NewCraft(19796, "Dark Iron Rifle", 275, {})
    :SetResult(16004)
    :AddRecipe(16048, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(10546, 2) -- Deadly Scope
    :AddReagent(11371, 6) -- Dark Iron Bar
    :AddReagent(12361, 2) -- Blue Sapphire
    :AddReagent(12799, 2) -- Large Opal
    :AddReagent(16000, 2) -- Thorium Tube
    :Save()

module:NewCraft(19799, "Dark Iron Bomb", 285, {})
    :SetResult(16005)
    :AddRecipe(16049, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(11371, 1) -- Dark Iron Bar
    :AddReagent(14047, 3) -- Runecloth
    :AddReagent(15992, 3) -- Dense Blasting Powder
    :AddReagent(15994, 2) -- Thorium Widget
    :Save()

module:NewCraft(19800, "Thorium Shells", 285, {})
    :SetResult(15997)
    :AddRecipe(16051, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(12359, 2) -- Thorium Bar
    :AddReagent(15992, 1) -- Dense Blasting Powder
    :Save()

module:NewCraft(19814, "Masterwork Target Dummy", 275, {})
    :SetResult(16023)
    :AddRecipe(16046, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(6037, 1) -- Truesilver Bar
    :AddReagent(8170, 2) -- Rugged Leather
    :AddReagent(10561, 1) -- Mithril Casing
    :AddReagent(14047, 4) -- Runecloth
    :AddReagent(15994, 2) -- Thorium Widget
    :AddReagent(16000, 1) -- Thorium Tube
    :Save()

module:NewCraft(19815, "Delicate Arcanite Converter", 285, {})
    :SetResult(16006)
    :AddRecipe(16050, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12360, 1) -- Arcanite Bar
    :AddReagent(14227, 1) -- Ironweb Spider Silk
    :Save()

module:NewCraft(19819, "Voice Amplification Modulator", 290, {})
    :SetResult(16009)
    :AddRecipe(16052, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(10558, 1) -- Gold Power Core
    :AddReagent(12799, 1) -- Large Opal
    :AddReagent(15994, 1) -- Thorium Widget
    :AddReagent(16006, 2) -- Delicate Arcanite Converter
    :Save()

module:NewCraft(19825, "Master Engineer's Goggles", 290, {})
    :SetResult(16008)
    :AddRecipe(16053, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(10500, 1) -- Fire Goggles
    :AddReagent(12364, 2) -- Huge Emerald
    :AddReagent(12810, 4) -- Enchanted Leather
    :Save()

module:NewCraft(19830, "Arcanite Dragonling", 300, {})
    :SetResult(16022)
    :AddRecipe(16054, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(10558, 4) -- Gold Power Core
    :AddReagent(10576, 1) -- Mithril Mechanical Dragonling
    :AddReagent(12655, 10) -- Enchanted Thorium Bar
    :AddReagent(12810, 6) -- Enchanted Leather
    :AddReagent(15994, 6) -- Thorium Widget
    :AddReagent(16006, 8) -- Delicate Arcanite Converter
    :Save()

module:NewCraft(19831, "Arcane Bomb", 300, {})
    :SetResult(16040)
    :AddRecipe(16055, Quality.Uncommon, {RecipeSource.Chest, RecipeSource.Drop})
    :AddReagent(12359, 3) -- Thorium Bar
    :AddReagent(14047, 1) -- Runecloth
    :AddReagent(16006, 1) -- Delicate Arcanite Converter
    :Save()

module:NewCraft(19833, "Flawless Arcanite Rifle", 300, {})
    :SetResult(16007)
    :AddRecipe(16056, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7076, 2) -- Essence of Earth
    :AddReagent(7078, 2) -- Essence of Fire
    :AddReagent(12360, 10) -- Arcanite Bar
    :AddReagent(12800, 2) -- Azerothian Diamond
    :AddReagent(12810, 2) -- Enchanted Leather
    :AddReagent(16000, 2) -- Thorium Tube
    :Save()

module:NewCraft(21940, "SnowMaster 9000", 190, {})
    :SetResult(17716)
    :AddRecipe(17720, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(3829, 1) -- Frost Oil
    :AddReagent(3860, 8) -- Mithril Bar
    :AddReagent(4389, 4) -- Gyrochronatom
    :AddReagent(17202, 4) -- Snowball
    :Save()

module:NewCraft(22704, "Field Repair Bot 74A", 300, {SpellSource.WorldObject})
    :SetResult(18232)
    :AddReagent(7067, 2) -- Elemental Earth
    :AddReagent(7068, 1) -- Elemental Fire
    :AddReagent(7191, 1) -- Fused Wiring
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(12359, 12) -- Thorium Bar
    :Save()

module:NewCraft(22793, "Biznicks 247x128 Accurascope", 300, {})
    :SetResult(18283)
    :AddRecipe(18290, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7076, 2) -- Essence of Earth
    :AddReagent(11371, 6) -- Dark Iron Bar
    :AddReagent(16000, 1) -- Thorium Tube
    :AddReagent(16006, 4) -- Delicate Arcanite Converter
    :AddReagent(17011, 2) -- Lava Core
    :Save()

module:NewCraft(22795, "Core Marksman Rifle", 300, {})
    :SetResult(18282)
    :AddRecipe(18292, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(12360, 6) -- Arcanite Bar
    :AddReagent(16000, 2) -- Thorium Tube
    :AddReagent(16006, 2) -- Delicate Arcanite Converter
    :AddReagent(17010, 4) -- Fiery Core
    :AddReagent(17011, 2) -- Lava Core
    :Save()

module:NewCraft(22797, "Force Reactive Disk", 300, {})
    :SetResult(18168)
    :AddRecipe(18291, Quality.Rare, {RecipeSource.Drop})
    :AddReagent(7076, 8) -- Essence of Earth
    :AddReagent(7082, 8) -- Essence of Air
    :AddReagent(12360, 6) -- Arcanite Bar
    :AddReagent(12803, 12) -- Living Essence
    :AddReagent(16006, 2) -- Delicate Arcanite Converter
    :Save()

module:NewCraft(23066, "Red Firework", 150, {})
    :SetResult(9318)
    :AddRecipe(18647, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4234, 1) -- Heavy Leather
    :AddReagent(4377, 1) -- Heavy Blasting Powder
    :Save()

module:NewCraft(23067, "Blue Firework", 150, {})
    :SetResult(9312)
    :AddRecipe(18649, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4234, 1) -- Heavy Leather
    :AddReagent(4377, 1) -- Heavy Blasting Powder
    :Save()

module:NewCraft(23068, "Green Firework", 150, {})
    :SetResult(9313)
    :AddRecipe(18648, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4234, 1) -- Heavy Leather
    :AddReagent(4377, 1) -- Heavy Blasting Powder
    :Save()

module:NewCraft(23069, "EZ-Thro Dynamite II", 200, {})
    :SetResult(18588)
    :AddRecipe(18650, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(4338, 2) -- Mageweave Cloth
    :AddReagent(10505, 1) -- Solid Blasting Powder
    :Save()

module:NewCraft(23070, "Dense Dynamite", 250, {SpellSource.Trainer})
    :SetResult(18641)
    :AddReagent(14047, 3) -- Runecloth
    :AddReagent(15992, 2) -- Dense Blasting Powder
    :Save()

module:NewCraft(23071, "Truesilver Transformer", 260, {SpellSource.Trainer})
    :SetResult(18631)
    :AddRecipe(18651, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(6037, 2) -- Truesilver Bar
    :AddReagent(7067, 2) -- Elemental Earth
    :AddReagent(7069, 1) -- Elemental Air
    :Save()

module:NewCraft(23077, "Gyrofreeze Ice Reflector", 260, {})
    :SetResult(18634)
    :AddRecipe(18652, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(3829, 2) -- Frost Oil
    :AddReagent(7078, 4) -- Essence of Fire
    :AddReagent(12361, 2) -- Blue Sapphire
    :AddReagent(13467, 4) -- Icecap
    :AddReagent(15994, 6) -- Thorium Widget
    :AddReagent(18631, 2) -- Truesilver Transformer
    :Save()

module:NewCraft(23078, "Goblin Jumper Cables XL", 265, {})
    :SetResult(18587)
    :AddRecipe(18653, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7191, 2) -- Fused Wiring
    :AddReagent(7910, 2) -- Star Ruby
    :AddReagent(14227, 2) -- Ironweb Spider Silk
    :AddReagent(15994, 2) -- Thorium Widget
    :AddReagent(18631, 2) -- Truesilver Transformer
    :Save()

module:NewCraft(23079, "Major Recombobulator", 275, {})
    :SetResult(18637)
    :AddRecipe(18655, Quality.Uncommon, {RecipeSource.Chest})
    :AddReagent(14047, 2) -- Runecloth
    :AddReagent(16000, 2) -- Thorium Tube
    :AddReagent(18631, 1) -- Truesilver Transformer
    :Save()

module:NewCraft(23080, "Powerful Seaforium Charge", 275, {})
    :SetResult(18594)
    :AddRecipe(18656, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(159, 1) -- Refreshing Spring Water
    :AddReagent(8170, 2) -- Rugged Leather
    :AddReagent(15992, 3) -- Dense Blasting Powder
    :AddReagent(15994, 2) -- Thorium Widget
    :Save()

module:NewCraft(23081, "Hyper-Radiant Flame Reflector", 290, {})
    :SetResult(18638)
    :AddRecipe(18657, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7080, 6) -- Essence of Water
    :AddReagent(7910, 4) -- Star Ruby
    :AddReagent(11371, 4) -- Dark Iron Bar
    :AddReagent(12800, 2) -- Azerothian Diamond
    :AddReagent(18631, 3) -- Truesilver Transformer
    :Save()

module:NewCraft(23082, "Ultra-Flash Shadow Reflector", 300, {})
    :SetResult(18639)
    :AddRecipe(18658, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(11371, 8) -- Dark Iron Bar
    :AddReagent(12799, 2) -- Large Opal
    :AddReagent(12800, 2) -- Azerothian Diamond
    :AddReagent(12803, 6) -- Living Essence
    :AddReagent(12808, 4) -- Essence of Undeath
    :AddReagent(18631, 4) -- Truesilver Transformer
    :Save()

module:NewCraft(23096, "Alarm-O-Bot", 265, {})
    :SetResult(18645)
    :AddRecipe(18654, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(7191, 1) -- Fused Wiring
    :AddReagent(7910, 1) -- Star Ruby
    :AddReagent(8170, 4) -- Rugged Leather
    :AddReagent(12359, 4) -- Thorium Bar
    :AddReagent(15994, 2) -- Thorium Widget
    :Save()

module:NewCraft(23129, "World Enlarger", 260, {})
    :SetResult(18660)
    :AddRecipe(18661, Quality.Uncommon, {RecipeSource.Drop})
    :AddReagent(3864, 1) -- Citrine
    :AddReagent(10558, 1) -- Gold Power Core
    :AddReagent(10560, 1) -- Unstable Trigger
    :AddReagent(10561, 1) -- Mithril Casing
    :AddReagent(15994, 2) -- Thorium Widget
    :Save()

module:NewCraft(23486, "Dimensional Ripper - Everlook", 260, {SpellSource.Trainer})
    :SetResult(18984)
    :AddReagent(3860, 10) -- Mithril Bar
    :AddReagent(7077, 4) -- Heart of Fire
    :AddReagent(7910, 2) -- Star Ruby
    :AddReagent(10586, 1) -- The Big One
    :AddReagent(18631, 1) -- Truesilver Transformer
    :Save()

module:NewCraft(23489, "Ultrasafe Transporter - Gadgetzan", 260, {SpellSource.Trainer})
    :SetResult(18986)
    :AddReagent(3860, 12) -- Mithril Bar
    :AddReagent(7075, 4) -- Core of Earth
    :AddReagent(7079, 2) -- Globe of Water
    :AddReagent(7909, 4) -- Aquamarine
    :AddReagent(9060, 1) -- Inlaid Mithril Cylinder
    :AddReagent(18631, 2) -- Truesilver Transformer
    :Save()

module:NewCraft(23507, "Snake Burst Firework", 250, {})
    :SetResult(19026)
    :AddRecipe(19027, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(8150, 1) -- Deeprock Salt
    :AddReagent(14047, 2) -- Runecloth
    :AddReagent(15992, 2) -- Dense Blasting Powder
    :Save()

module:NewCraft(24356, "Bloodvine Goggles", 300, {})
    :SetResult(19999)
    :AddRecipe(20000, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12804, 8) -- Powerful Mojo
    :AddReagent(12810, 4) -- Enchanted Leather
    :AddReagent(16006, 2) -- Delicate Arcanite Converter
    :AddReagent(19726, 4) -- Bloodvine
    :AddReagent(19774, 5) -- Souldarite
    :Save()

module:NewCraft(24357, "Bloodvine Lens", 300, {})
    :SetResult(19998)
    :AddRecipe(20001, Quality.Common, {RecipeSource.Vendor})
    :AddReagent(12804, 8) -- Powerful Mojo
    :AddReagent(12810, 4) -- Enchanted Leather
    :AddReagent(16006, 1) -- Delicate Arcanite Converter
    :AddReagent(19726, 5) -- Bloodvine
    :AddReagent(19774, 5) -- Souldarite
    :Save()

module:NewCraft(26011, "Tranquil Mechanical Yeti", 250, {SpellSource.Quest})
    :SetResult(21277)
    :AddReagent(7079, 2) -- Globe of Water
    :AddReagent(10558, 1) -- Gold Power Core
    :AddReagent(15407, 1) -- Cured Rugged Hide
    :AddReagent(15994, 4) -- Thorium Widget
    :AddReagent(18631, 2) -- Truesilver Transformer
    :Save()

module:NewCraft(26416, "Small Blue Rocket", 125, {})
    :SetResult(21558)
    :AddRecipe(21724, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(2319, 1) -- Medium Leather
    :AddReagent(4364, 1) -- Coarse Blasting Powder
    :Save()

module:NewCraft(26417, "Small Green Rocket", 125, {})
    :SetResult(21559)
    :AddRecipe(21725, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(2319, 1) -- Medium Leather
    :AddReagent(4364, 1) -- Coarse Blasting Powder
    :Save()

module:NewCraft(26418, "Small Red Rocket", 125, {})
    :SetResult(21557)
    :AddRecipe(21726, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(2319, 1) -- Medium Leather
    :AddReagent(4364, 1) -- Coarse Blasting Powder
    :Save()

module:NewCraft(26420, "Large Blue Rocket", 175, {})
    :SetResult(21589)
    :AddRecipe(21727, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(4234, 1) -- Heavy Leather
    :AddReagent(4377, 1) -- Heavy Blasting Powder
    :Save()

module:NewCraft(26421, "Large Green Rocket", 175, {})
    :SetResult(21590)
    :AddRecipe(21728, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(4234, 1) -- Heavy Leather
    :AddReagent(4377, 1) -- Heavy Blasting Powder
    :Save()

module:NewCraft(26422, "Large Red Rocket", 175, {})
    :SetResult(21592)
    :AddRecipe(21729, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(4234, 1) -- Heavy Leather
    :AddReagent(4377, 1) -- Heavy Blasting Powder
    :Save()

module:NewCraft(26423, "Blue Rocket Cluster", 225, {})
    :SetResult(21571)
    :AddRecipe(21730, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(4304, 1) -- Thick Leather
    :AddReagent(10505, 1) -- Solid Blasting Powder
    :Save()

module:NewCraft(26424, "Green Rocket Cluster", 225, {})
    :SetResult(21574)
    :AddRecipe(21731, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(4304, 1) -- Thick Leather
    :AddReagent(10505, 1) -- Solid Blasting Powder
    :Save()

module:NewCraft(26425, "Red Rocket Cluster", 225, {})
    :SetResult(21576)
    :AddRecipe(21732, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(4304, 1) -- Thick Leather
    :AddReagent(10505, 1) -- Solid Blasting Powder
    :Save()

module:NewCraft(26426, "Large Blue Rocket Cluster", 275, {})
    :SetResult(21714)
    :AddRecipe(21733, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(8170, 1) -- Rugged Leather
    :AddReagent(15992, 1) -- Dense Blasting Powder
    :Save()

module:NewCraft(26427, "Large Green Rocket Cluster", 275, {})
    :SetResult(21716)
    :AddRecipe(21734, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(8170, 1) -- Rugged Leather
    :AddReagent(15992, 1) -- Dense Blasting Powder
    :Save()

module:NewCraft(26428, "Large Red Rocket Cluster", 275, {})
    :SetResult(21718)
    :AddRecipe(21735, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(8170, 1) -- Rugged Leather
    :AddReagent(15992, 1) -- Dense Blasting Powder
    :Save()

module:NewCraft(26442, "Firework Launcher", 225, {})
    :SetResult(21569)
    :AddRecipe(21738, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(9060, 1) -- Inlaid Mithril Cylinder
    :AddReagent(9061, 1) -- Goblin Rocket Fuel
    :AddReagent(10560, 1) -- Unstable Trigger
    :AddReagent(10561, 1) -- Mithril Casing
    :Save()

module:NewCraft(26443, "Firework Cluster Launcher", 275, {})
    :SetResult(21570)
    :AddRecipe(21737, Quality.Uncommon, {RecipeSource.Quest})
    :AddReagent(9060, 4) -- Inlaid Mithril Cylinder
    :AddReagent(9061, 4) -- Goblin Rocket Fuel
    :AddReagent(10561, 1) -- Mithril Casing
    :AddReagent(18631, 2) -- Truesilver Transformer
    :Save()

if lib.env.is_turtle_wow then
    module:NewCraft(12722, "Goblin Radio", 225, {})
        :SetResult(10585)
        :AddRecipe(81196, Quality.Rare, {RecipeSource.Vendor})
        :AddReagent(3860, 2) -- Mithril Bar
        :AddReagent(4389, 1) -- Gyrochronatom
        :AddReagent(10560, 1) -- Unstable Trigger
        :AddReagent(10561, 1) -- Mithril Casing
        :Save()

    module:NewCraft(19790, "Thorium Grenade", 260, {})
        :SetResult(15993)
        :AddRecipe(16041, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(12359, 3) -- Thorium Bar
        :AddReagent(14047, 3) -- Runecloth
        :AddReagent(15992, 3) -- Dense Blasting Powder
        :AddReagent(15994, 1) -- Thorium Widget
        :Save()

    module:NewCraft(19791, "Thorium Widget", 260, {})
        :SetResult(15994)
        :AddRecipe(16042, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(12359, 3) -- Thorium Bar
        :AddReagent(14047, 1) -- Runecloth
        :Save()

    module:NewCraft(22704, "Field Repair Bot 74A", 300, {SpellSource.WorldObject})
        :SetResult(18232)
        :AddReagent(7191, 2) -- Fused Wiring
        :AddReagent(10558, 1) -- Gold Power Core
        :AddReagent(12359, 12) -- Thorium Bar
        :Save()

    module:NewCraft(23071, "Truesilver Transformer", 260, {})
        :SetResult(18631)
        :AddRecipe(18651, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(6037, 2) -- Truesilver Bar
        :AddReagent(7067, 2) -- Elemental Earth
        :AddReagent(7069, 1) -- Elemental Air
        :Save()

    module:NewCraft(26442, "Firework Launcher", 225, {})
        :SetResult(21569)
        :AddRecipe(21738, Quality.Uncommon, {RecipeSource.Quest, RecipeSource.Vendor})
        :AddReagent(9060, 1) -- Inlaid Mithril Cylinder
        :AddReagent(9061, 1) -- Goblin Rocket Fuel
        :AddReagent(10560, 1) -- Unstable Trigger
        :AddReagent(10561, 1) -- Mithril Casing
        :Save()

    module:NewCraft(26443, "Firework Cluster Launcher", 275, {})
        :SetResult(21570)
        :AddRecipe(21737, Quality.Uncommon, {RecipeSource.Quest, RecipeSource.Vendor})
        :AddReagent(9060, 4) -- Inlaid Mithril Cylinder
        :AddReagent(9061, 4) -- Goblin Rocket Fuel
        :AddReagent(10561, 1) -- Mithril Casing
        :AddReagent(18631, 2) -- Truesilver Transformer
        :Save()

    module:NewCraft(41073, "Jewelry Lens", 125, {})
        :SetResult(41326)
        :AddRecipe(40082, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(1705, 1) -- Lesser Moonstone
        :AddReagent(2319, 1) -- Medium Leather
        :AddReagent(2841, 2) -- Bronze Bar
        :AddReagent(4371, 2) -- Bronze Tube
        :AddReagent(4404, 1) -- Silver Contact
        :Save()

    module:NewCraft(41075, "Jewelry Scope", 225, {})
        :SetResult(41327)
        :AddRecipe(40083, Quality.Uncommon, {RecipeSource.Drop, RecipeSource.Vendor})
        :AddReagent(3864, 1) -- Citrine
        :AddReagent(4389, 1) -- Gyrochronatom
        :AddReagent(7191, 1) -- Fused Wiring
        :AddReagent(10559, 2) -- Mithril Tube
        :AddReagent(10561, 4) -- Mithril Casing
        :Save()

    module:NewCraft(41077, "Precision Jewelry Kit", 175, {})
        :SetResult(41328)
        :AddRecipe(40084, Quality.Uncommon, {RecipeSource.Drop, RecipeSource.Vendor})
        :AddReagent(4375, 3) -- Whirring Bronze Gizmo
        :AddReagent(4382, 3) -- Bronze Framework
        :AddReagent(4387, 1) -- Iron Strut
        :AddReagent(4389, 1) -- Gyrochronatom
        :AddReagent(55155, 1) -- Jewelers Kit
        :Save()

    module:NewCraft(45057, "Unstable Mining Dynamite", 75, {})
        :SetResult(51268)
        :AddRecipe(51269, Quality.Uncommon, {RecipeSource.Drop})
        :AddReagent(2589, 2) -- Linen Cloth
        :AddReagent(4357, 2) -- Rough Blasting Powder
        :AddReagent(4359, 4) -- Handful of Copper Bolts
        :Save()

    module:NewCraft(45481, "Intricate Gyroscope Goggles", 300, {})
        :SetResult(61187)
        :AddRecipe(61191, Quality.Epic, {RecipeSource.Drop})
        :AddReagent(10548, 2) -- Sniper Scope
        :AddReagent(12655, 8) -- Enchanted Thorium Bar
        :AddReagent(12800, 1) -- Azerothian Diamond
        :AddReagent(12810, 10) -- Enchanted Leather
        :AddReagent(15994, 6) -- Thorium Widget
        :AddReagent(16006, 8) -- Delicate Arcanite Converter
        :Save()

    module:NewCraft(46608, "Hypertech Battery Pack", 250, {})
        :SetResult(60098)
        :AddRecipe(51809, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(4404, 1) -- Silver Contact
        :AddReagent(10558, 1) -- Gold Power Core
        :AddReagent(10561, 1) -- Mithril Casing
        :Save()

    module:NewCraft(46610, "Battery-Powered Crowd Pummeler", 250, {})
        :SetResult(60099)
        :AddRecipe(51809, Quality.Rare, {RecipeSource.Drop})
        :AddReagent(814, 2) -- Flask of Oil
        :AddReagent(3829, 1) -- Frost Oil
        :AddReagent(4375, 6) -- Whirring Bronze Gizmo
        :AddReagent(7191, 1) -- Fused Wiring
        :AddReagent(9449, 1) -- Manual Crowd Pummeler
        :AddReagent(18631, 1) -- Truesilver Transformer
        :AddReagent(60098, 1) -- Hypertech Battery Pack
        :Save()

    module:NewCraft(47027, "Portable Wormhole Generator - Stormwind", 125, {})
        :SetResult(51312)
        :AddRecipe(83510, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(1206, 1) -- Moss Agate
        :AddReagent(2841, 2) -- Bronze Bar
        :AddReagent(4375, 2) -- Whirring Bronze Gizmo
        :AddReagent(10998, 1) -- Lesser Astral Essence
        :Save()

    module:NewCraft(47028, "Portable Wormhole Generator - Orgrimmar", 125, {})
        :SetResult(51313)
        :AddRecipe(83511, Quality.Common, {RecipeSource.Vendor})
        :AddReagent(1206, 1) -- Moss Agate
        :AddReagent(2841, 2) -- Bronze Bar
        :AddReagent(4375, 2) -- Whirring Bronze Gizmo
        :AddReagent(10998, 1) -- Lesser Astral Essence
        :Save()
end
