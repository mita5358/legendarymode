
#Set Max Durability

execute as @a[nbt={SelectedItem:{id:"minecraft:trident"}}] run scoreboard players set @s maxdurability 250
execute as @a[nbt={SelectedItem:{id:"minecraft:mace"}}] run scoreboard players set @s maxdurability 500
execute as @a[nbt={SelectedItem:{id:"minecraft:turtle_helmet"}}] run scoreboard players set @s maxdurability 275

execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_helmet"}}] run scoreboard players set @s maxdurability 407
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_chestplate"}}] run scoreboard players set @s maxdurability 592
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_leggings"}}] run scoreboard players set @s maxdurability 555
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] run scoreboard players set @s maxdurability 481

execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run scoreboard players set @s maxdurability 2031
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run scoreboard players set @s maxdurability 2031
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] run scoreboard players set @s maxdurability 2031
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_shovel"}}] run scoreboard players set @s maxdurability 2031
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_hoe"}}] run scoreboard players set @s maxdurability 2031

execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run scoreboard players set @s maxdurability 1561
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] run scoreboard players set @s maxdurability 1561
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run scoreboard players set @s maxdurability 1561
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}}] run scoreboard players set @s maxdurability 1561
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] run scoreboard players set @s maxdurability 1561

execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run scoreboard players set @s maxdurability 32
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] run scoreboard players set @s maxdurability 32
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run scoreboard players set @s maxdurability 32
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_shovel"}}] run scoreboard players set @s maxdurability 32
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] run scoreboard players set @s maxdurability 32

execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run scoreboard players set @s maxdurability 250
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] run scoreboard players set @s maxdurability 250
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run scoreboard players set @s maxdurability 250
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] run scoreboard players set @s maxdurability 250
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] run scoreboard players set @s maxdurability 250

execute as @a[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run scoreboard players set @s maxdurability 131
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] run scoreboard players set @s maxdurability 131
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run scoreboard players set @s maxdurability 131
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] run scoreboard players set @s maxdurability 131
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] run scoreboard players set @s maxdurability 131

execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run scoreboard players set @s maxdurability 59
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] run scoreboard players set @s maxdurability 59
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] run scoreboard players set @s maxdurability 59
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run scoreboard players set @s maxdurability 59
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] run scoreboard players set @s maxdurability 59

execute as @a[nbt={SelectedItem:{id:"minecraft:shears"}}] run scoreboard players set @s maxdurability 238

execute as @a[nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] run scoreboard players set @s maxdurability 64

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run scoreboard players set @s maxdurability 25

execute as @a[nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run scoreboard players set @s maxdurability 64

execute as @a[nbt={SelectedItem:{id:"minecraft:bow"}}] run scoreboard players set @s maxdurability 384

execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run scoreboard players set @s maxdurability 465

execute as @a[nbt={SelectedItem:{id:"minecraft:brush"}}] run scoreboard players set @s maxdurability 64

execute as @a[nbt={SelectedItem:{id:"minecraft:shield"}}] run scoreboard players set @s maxdurability 336

execute as @a run scoreboard players operation @s maxdurability *= @s multiplier

#Set Base Durability

execute as @a[nbt={SelectedItem:{id:"minecraft:mace"}}] run scoreboard players set @s durability 500
execute as @a[nbt={SelectedItem:{id:"minecraft:trident"}}] run scoreboard players set @s durability 250
execute as @a[nbt={SelectedItem:{id:"minecraft:turtle_helmet"}}] run scoreboard players set @s durability 275

execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_helmet"}}] run scoreboard players set @s durability 407
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_chestplate"}}] run scoreboard players set @s durability 592
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_leggings"}}] run scoreboard players set @s durability 555
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_boots"}}] run scoreboard players set @s durability 481

execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword"}}] run scoreboard players set @s durability 2031
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe"}}] run scoreboard players set @s durability 2031
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_axe"}}] run scoreboard players set @s durability 2031
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_shovel"}}] run scoreboard players set @s durability 2031
execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_hoe"}}] run scoreboard players set @s durability 2031

execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword"}}] run scoreboard players set @s durability 1561
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe"}}] run scoreboard players set @s durability 1561
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_axe"}}] run scoreboard players set @s durability 1561
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_shovel"}}] run scoreboard players set @s durability 1561
execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe"}}] run scoreboard players set @s durability 1561

execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword"}}] run scoreboard players set @s durability 32
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_pickaxe"}}] run scoreboard players set @s durability 32
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_axe"}}] run scoreboard players set @s durability 32
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_shovel"}}] run scoreboard players set @s durability 32
execute as @a[nbt={SelectedItem:{id:"minecraft:golden_hoe"}}] run scoreboard players set @s durability 32

execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword"}}] run scoreboard players set @s durability 250
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe"}}] run scoreboard players set @s durability 250
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_axe"}}] run scoreboard players set @s durability 250
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_hoe"}}] run scoreboard players set @s durability 250
execute as @a[nbt={SelectedItem:{id:"minecraft:iron_shovel"}}] run scoreboard players set @s durability 250

execute as @a[nbt={SelectedItem:{id:"minecraft:stone_sword"}}] run scoreboard players set @s durability 131
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_pickaxe"}}] run scoreboard players set @s durability 131
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_axe"}}] run scoreboard players set @s durability 131
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_shovel"}}] run scoreboard players set @s durability 131
execute as @a[nbt={SelectedItem:{id:"minecraft:stone_hoe"}}] run scoreboard players set @s durability 131

execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_sword"}}] run scoreboard players set @s durability 59
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_pickaxe"}}] run scoreboard players set @s durability 59
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_shovel"}}] run scoreboard players set @s durability 59
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_axe"}}] run scoreboard players set @s durability 59
execute as @a[nbt={SelectedItem:{id:"minecraft:wooden_hoe"}}] run scoreboard players set @s durability 59

execute as @a[nbt={SelectedItem:{id:"minecraft:shears"}}] run scoreboard players set @s durability 238

execute as @a[nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] run scoreboard players set @s durability 64

execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick"}}] run scoreboard players set @s durability 25

execute as @a[nbt={SelectedItem:{id:"minecraft:flint_and_steel"}}] run scoreboard players set @s durability 64

execute as @a[nbt={SelectedItem:{id:"minecraft:bow"}}] run scoreboard players set @s durability 384

execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow"}}] run scoreboard players set @s durability 465

execute as @a[nbt={SelectedItem:{id:"minecraft:brush"}}] run scoreboard players set @s durability 64

execute as @a[nbt={SelectedItem:{id:"minecraft:shield"}}] run scoreboard players set @s durability 336



