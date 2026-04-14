#Durability

execute as @a[scores={durabilitysub=1..}] run function qol:durability

#Set Unbreaking Multiplier

scoreboard players set @a multiplier 1
execute as @a[nbt={SelectedItem:{components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}] run scoreboard players set @s multiplier 2
execute as @a[nbt={SelectedItem:{components:{"minecraft:enchantments":{"minecraft:unbreaking":2}}}}] run scoreboard players set @s multiplier 3
execute as @a[nbt={SelectedItem:{components:{"minecraft:enchantments":{"minecraft:unbreaking":3}}}}] run scoreboard players set @s multiplier 4

#Math

execute as @a run scoreboard players operation @s durability *= @s multiplier

execute as @a store result score @s durabilitysub run data get entity @s SelectedItem.components.minecraft:damage
execute as @a run scoreboard players operation @s durabilitysub *= @s multiplier
execute as @a run scoreboard players operation @s durability -= @s durabilitysub
execute as @a[scores={durabilitysub=1..}] run title @s actionbar ["",{"score":{"name":"@s","objective":"durability"},"color":"green"}," / ",{"score":{"name":"@s","objective":"maxdurability"},"color":"green"}]

#Health Displays

#execute at @e if entity @a[distance=0..7] run function qol:activehealth



#TNT Displays

execute as @e[type=tnt] store result score @s fuse run data get entity @s fuse
execute if entity @e[type=tnt] run function qol:tnttimer


#sStarting Tools / Playtime

execute as @a[scores={playtime=20..}] run scoreboard players add @s playtimeS 1
execute as @a[scores={playtime=20..}] run scoreboard players reset @s playtime

execute as @a[scores={playtimeS=60..}] run scoreboard players add @s playtimeM 1
execute as @a[scores={playtimeS=60..}] run scoreboard players reset @s playtimeS

execute as @a[scores={playtimeM=60..}] run scoreboard players add @s playtimeH 1
execute as @a[scores={playtimeM=60..}] run scoreboard players reset @s playtimeM

execute as @a[scores={playtimeH=24..}] run scoreboard players add @s playtimeD 1
execute as @a[scores={playtimeH=24..}] run scoreboard players reset @s playtimeH

execute as @a[scores={kit=1}] run function qol:kit

#Dragon Egg Respawn

execute as @a if score @s dragonegg matches 1 unless entity @e[type=ender_dragon] run scoreboard players add !Timer dragoneggT 1
execute if score !Timer dragoneggT matches 200.. run execute in minecraft:the_end positioned over world_surface unless block 0 ~-1 0 dragon_egg run setblock 0 ~ 0 dragon_egg
execute if score !Timer dragoneggT matches 200.. run scoreboard players reset @a dragonegg
execute if score !Timer dragoneggT matches 200.. run scoreboard players reset !Timer dragoneggT

#Grandmaster Villagers

#Toolsmith GM

execute as @e[type=villager,nbt={VillagerData:{level:5,profession:"minecraft:toolsmith"}}] at @s if entity @e[type=item,nbt={Item:{count:1,id:"minecraft:netherite_pickaxe"}},distance=0..1] run tag @s add grandtool
execute as @e[type=villager,tag=grandtool] run data merge entity @s {CustomName:"Toolsmith - Grandmaster",VillagerData:{level:99,profession:"minecraft:toolsmith"},Offers:{Recipes:[{maxUses:2147483647,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:stone_shovel",count:1}},{maxUses:2147483647,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:stone_pickaxe",count:1}},{maxUses:2147483647,xp:5,buy:{id:"minecraft:emerald",count:36},sell:{id:"minecraft:bell",count:1}},{maxUses:2147483647,xp:10,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:emerald",count:1}},{maxUses:2147483647,xp:10,buy:{id:"minecraft:emerald",count:11},sell:{id:"minecraft:iron_shovel",count:1,components:{"minecraft:enchantments":{"minecraft:efficiency":1}}}},{maxUses:2147483647,xp:10,buy:{id:"minecraft:emerald",count:17},sell:{id:"minecraft:iron_pickaxe",count:1,components:{"minecraft:enchantments":{"minecraft:efficiency":2}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:diamond",count:1},sell:{id:"minecraft:emerald",count:1}},{maxUses:2147483647,xp:15,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":3,"minecraft:efficiency":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:diamond_pickaxe",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":3,"minecraft:efficiency":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:diamond_shovel",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":3,"minecraft:efficiency":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:diamond_hoe",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":3,"minecraft:efficiency":3}}}}]}}
execute at @e[type=villager,tag=grandtool] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 0
execute at @e[type=villager,tag=grandtool] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 2
execute at @e[type=villager,tag=grandtool] run particle minecraft:happy_villager ~ ~2 ~ 0.125 0.125 0.125 1 10 force
execute as @e[type=item,nbt={Item:{count:1,id:"minecraft:netherite_pickaxe"}}] at @s if entity @e[type=villager,tag=grandtool,distance=0..1] run kill @s
tag @e remove grandtool

#Weaponsmith GM

execute as @e[type=villager,nbt={VillagerData:{level:5,profession:"minecraft:weaponsmith"}}] at @s if entity @e[type=item,nbt={Item:{count:1,id:"minecraft:netherite_sword"}},distance=0..1] run tag @s add grandweap
execute as @e[type=villager,tag=grandweap] run data merge entity @s {CustomName:"Weaponsmith - Grandmaster",VillagerData:{level:99,profession:"minecraft:weaponsmith"},Offers:{Recipes:[{maxUses:2147483647,buy:{id:"minecraft:emerald",count:3},sell:{id:"minecraft:iron_axe",count:1}},{maxUses:2147483647,xp:2,buy:{id:"minecraft:coal",count:15},sell:{id:"minecraft:emerald",count:1}},{maxUses:2147483647,xp:5,buy:{id:"minecraft:emerald",count:36},sell:{id:"minecraft:bell",count:1}},{maxUses:2147483647,xp:10,buy:{id:"minecraft:iron_ingot",count:4},sell:{id:"minecraft:emerald",count:1}},{maxUses:2147483647,xp:20,buy:{id:"minecraft:flint",count:24},sell:{id:"minecraft:emerald",count:1}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:diamond",count:1},sell:{id:"minecraft:emerald",count:1}},{maxUses:2147483647,xp:15,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":3,"minecraft:efficiency":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:enchantments":{"minecraft:sharpness":3}}}}]}}
execute at @e[type=villager,tag=grandweap] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 0
execute at @e[type=villager,tag=grandweap] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 2
execute at @e[type=villager,tag=grandweap] run particle minecraft:happy_villager ~ ~2 ~ 0.125 0.125 0.125 1 10 force
execute as @e[type=item,nbt={Item:{count:1,id:"minecraft:netherite_sword"}}] at @s if entity @e[type=villager,tag=grandweap,distance=0..1] run kill @s
tag @e remove grandweap

#Armorer GM

execute as @e[type=villager,nbt={VillagerData:{level:5,profession:"minecraft:armorer"}}] at @s if entity @e[type=item,nbt={Item:{count:1,id:"minecraft:netherite_chestplate"}},distance=0..1] run tag @s add grandarmo
execute as @e[type=villager,tag=grandarmo] run data merge entity @s {CustomName:"Armorer - Grandmaster",VillagerData:{level:99,profession:"minecraft:armorer"},Offers:{Recipes:[{maxUses:2147483647,buy:{id:"minecraft:emerald",count:7},sell:{id:"minecraft:iron_leggings",count:1}},{maxUses:2147483647,buy:{id:"minecraft:emerald",count:9},sell:{id:"minecraft:iron_chestplate",count:1}},{maxUses:2147483647,xp:5,buy:{id:"minecraft:emerald",count:36},sell:{id:"minecraft:bell",count:1}},{maxUses:2147483647,xp:5,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:chainmail_boots",count:1}},{maxUses:2147483647,xp:10,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:chainmail_helmet",count:1}},{maxUses:2147483647,xp:20,buy:{id:"minecraft:diamond",count:1},sell:{id:"minecraft:emerald",count:1}},{maxUses:2147483647,xp:15,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:diamond_boots",count:1,components:{"minecraft:enchantments":{"minecraft:protection":3,"minecraft:unbreaking":3}}}},{maxUses:2147483647,xp:15,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:diamond_leggings",count:1,components:{"minecraft:enchantments":{"minecraft:protection":3,"minecraft:unbreaking":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:diamond_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:protection":3,"minecraft:unbreaking":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:diamond_helmet",count:1,components:{"minecraft:enchantments":{"minecraft:protection":3,"minecraft:unbreaking":3}}}},{maxUses:2147483647,xp:5,buy:{id:"minecraft:emerald",count:32},sell:{id:"minecraft:netherite_upgrade_smithing_template",count:1}}]}}
execute at @e[type=villager,tag=grandarmo] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 0
execute at @e[type=villager,tag=grandarmo] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 2
execute at @e[type=villager,tag=grandarmo] run particle minecraft:happy_villager ~ ~2 ~ 0.125 0.125 0.125 1 10 force
execute as @e[type=item,nbt={Item:{count:1,id:"minecraft:netherite_chestplate"}}] at @s if entity @e[type=villager,tag=grandarmo,distance=0..1] run kill @s
tag @e remove grandarmo

#Librarian GM

execute as @e[type=villager,nbt={VillagerData:{level:5,profession:"minecraft:librarian"}}] at @s if entity @e[type=item,nbt={Item:{count:1,id:"minecraft:netherite_ingot"}},distance=0..1] run tag @s add grandlibr
execute as @e[type=villager,tag=grandlibr] run data merge entity @s {CustomName:"Mystic - Grandmaster",VillagerData:{level:99,profession:"minecraft:librarian"},Offers:{Recipes:[{maxUses:2147483647,buy:{id:"minecraft:emerald",count:9},sell:{id:"minecraft:bookshelf",count:1}},{maxUses:2147483647,xp:10,buy:{id:"minecraft:book",count:4},sell:{id:"minecraft:emerald",count:1}},{maxUses:2147483647,xp:10,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:glass",count:4}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:writable_book",count:2},sell:{id:"minecraft:emerald",count:1}},{maxUses:2147483647,xp:15,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:compass",count:1}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:20},sell:{id:"minecraft:name_tag",count:1}},{maxUses:2147483647,xp:2,buy:{id:"minecraft:paper",count:24},sell:{id:"minecraft:emerald",count:1}},{maxUses:2147483647,xp:20,buy:{id:"minecraft:ink_sac",count:5},sell:{id:"minecraft:emerald",count:1}},{maxUses:2147483647,xp:5,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:lantern",count:1}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:10},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:mending":1}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:20},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:unbreaking":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:10},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:aqua_affinity":1}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:10},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:depth_strider":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:20},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:feather_falling":4}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:20},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:protection":4}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:10},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:respiration":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:10},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:soul_speed":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:20},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:thorns":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:10},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:swift_sneak":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:20},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:efficiency":5}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:10},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:fire_aspect":2}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:20},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:looting":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:10},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:knockback":2}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:30},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:sharpness":5}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:20},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:sweeping_edge":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:5},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:flame":1}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:10},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:infinity":1}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:30},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:power":5}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:20},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:punch":2}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:20},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:fortune":3}}}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:10},buyB:{id:"minecraft:book",count:1},sell:{id:"minecraft:enchanted_book",count:1,components:{"minecraft:stored_enchantments":{"minecraft:silk_touch":1}}}}]}}
execute at @e[type=villager,tag=grandlibr] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 0
execute at @e[type=villager,tag=grandlibr] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 2
execute at @e[type=villager,tag=grandlibr] run particle minecraft:happy_villager ~ ~2 ~ 0.125 0.125 0.125 1 10 force
execute as @e[type=item,nbt={Item:{count:1,id:"minecraft:netherite_ingot"}}] at @s if entity @e[type=villager,tag=grandlibr,distance=0..1] run kill @s
tag @e remove grandlibr

#Stone Mason GM

execute as @e[type=villager,nbt={VillagerData:{level:5,profession:"minecraft:mason"}}] at @s if entity @e[type=item,nbt={Item:{count:1,id:"minecraft:netherite_ingot"}},distance=0..1] run tag @s add grandmaso
execute as @e[type=villager,tag=grandmaso] run data merge entity @s {CustomName:"Demolitionist - Grandmaster",VillagerData:{level:99,profession:"minecraft:mason"},Offers:{Recipes:[{maxUses:2147483647,xp:2,buy:{id:"minecraft:clay_ball",count:10},sell:{id:"minecraft:emerald",count:1}},{maxUses:2147483647,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:brick",count:10}},{maxUses:2147483647,xp:10,buy:{id:"minecraft:stone",count:20},sell:{id:"minecraft:emerald",count:1}},{maxUses:2147483647,xp:5,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:chiseled_stone_bricks",count:4}},{maxUses:2147483647,xp:10,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:polished_andesite",count:4}},{maxUses:2147483647,xp:20,buy:{id:"minecraft:diorite",count:16},sell:{id:"minecraft:emerald",count:1}},{maxUses:2147483647,xp:15,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:red_terracotta",count:1}},{maxUses:2147483647,xp:15,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:light_blue_terracotta",count:1}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:quartz_pillar",count:1}},{maxUses:2147483647,xp:30,buy:{id:"minecraft:emerald",count:1},sell:{id:"minecraft:quartz_block",count:1}},{maxUses:2147483647,xp:5,buy:{id:"minecraft:emerald",count:4},sell:{id:"minecraft:tnt",count:1}}]}}
execute at @e[type=villager,tag=grandmaso] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 0
execute at @e[type=villager,tag=grandmaso] run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 5 2        
execute at @e[type=villager,tag=grandmaso] run particle minecraft:happy_villager ~ ~2 ~ 0.125 0.125 0.125 1 10 force
execute as @e[type=item,nbt={Item:{count:1,id:"minecraft:netherite_ingot"}}] at @s if entity @e[type=villager,tag=grandmaso,distance=0..1] run kill @s
tag @e remove grandmaso

#Despawn Timers

gamerule immediate_respawn false
execute as @e[type=item,nbt={Item:{id:"minecraft:barrier",components:{"minecraft:item_name":"cancel"}}}] at @s run tp @s @e[type=item,sort=nearest,limit=1,nbt=!{Item:{id:"minecraft:barrier",components:{"minecraft:item_name":"cancel"}}}]
execute as @a[nbt={Inventory:[{id:"minecraft:barrier",components:{"minecraft:item_name":"cancel"}}]},tag=deadtimer] run tellraw @s {"text":"You have picked up your items!","bold":false,"color":"green"}
execute as @a[nbt={Inventory:[{id:"minecraft:barrier",components:{"minecraft:item_name":"cancel"}}]}] run tag @s remove deadtimer
execute as @a[nbt={Inventory:[{id:"minecraft:barrier",components:{"minecraft:item_name":"cancel"}}]}] run scoreboard players reset @a deathtimer
execute as @a[nbt={Inventory:[{id:"minecraft:barrier",components:{"minecraft:item_name":"cancel"}}]}] run clear @s barrier
execute at @a[scores={deathtime=1..}] run summon item ~ ~ ~ {Item:{id:"minecraft:barrier",count:1,components:{"minecraft:item_name":"cancel"}}}
execute as @a[scores={deathtime=1..}] run tag @s add deadtimer
execute as @a[scores={deathtime=1..}] run scoreboard players reset @a deathtimer
scoreboard players reset @a deathtime
execute as @a[tag=deadtimer] run scoreboard players add @s deathtimer 1
execute as @a[scores={deathtimer=1}] run tellraw @s {"text":"Your items will despawn in 5 minutes!","bold":false,"color":"green"}
execute as @a[scores={deathtimer=1200}] run tellraw @s {"text":"Your items will despawn in 4 minutes!","bold":false,"color":"green"}
execute as @a[scores={deathtimer=2400}] run tellraw @s {"text":"Your items will despawn in 3 minutes!","bold":false,"color":"yellow"}
execute as @a[scores={deathtimer=3600}] run tellraw @s {"text":"Your items will despawn in 2 minutes!","bold":false,"color":"red"}
execute as @a[scores={deathtimer=4800}] run tellraw @s {"text":"Your items will despawn in 1 minute!","bold":false,"color":"red"}
execute as @a[scores={deathtimer=5400}] run tellraw @s {"text":"Your items will despawn in 30 seconds!","bold":false,"color":"dark_red"}
execute as @a[scores={deathtimer=5800}] run tellraw @s {"text":"Your items will despawn in 10 seconds!","bold":false,"color":"dark_red"}
execute as @a[scores={deathtimer=5900}] run tellraw @s {"text":"Your items will despawn in 5 seconds!","bold":false,"color":"dark_red"}
execute as @a[scores={deathtimer=5920}] run tellraw @s {"text":"Your items will despawn in 4 seconds!","bold":false,"color":"dark_red"}
execute as @a[scores={deathtimer=5940}] run tellraw @s {"text":"Your items will despawn in 3 seconds!","bold":false,"color":"dark_red"}
execute as @a[scores={deathtimer=5960}] run tellraw @s {"text":"Your items will despawn in 2 seconds!","bold":false,"color":"dark_red"}
execute as @a[scores={deathtimer=5980}] run tellraw @s {"text":"Your items will despawn in 1 second!","bold":false,"color":"dark_red"}
execute as @a[scores={deathtimer=6000..}] run tellraw @s {"text":"Your items have despawned.","bold":false,"color":"dark_red"}
execute as @a[scores={deathtimer=6000..}] run tag @s remove deadtimer
scoreboard players reset @a[scores={deathtimer=6000..}] deathtimer
