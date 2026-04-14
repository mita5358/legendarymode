execute in survivalexpansion:the_void as @a[distance=0..] at @s if block ~ ~-1 ~ grass_block run effect give @s minecraft:instant_damage 1 2 true
kill @e[type=armor_stand,tag=hero3]
scoreboard players add !Timer herotimer2 1
execute if score !Timer herotimer2 matches 1 as @e[type=husk,tag=herobrine] run data merge entity @s {Invulnerable:1b}
execute if score !Timer herotimer2 matches 1 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer2 matches 5 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer2 matches 10 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer2 matches 15 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herotimer2 matches 20 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute as @e[type=husk,tag=herobrine,nbt={HurtTime:9s}] at @s run playsound minecraft:block.anvil.land ambient @a[distance=0..30] ~ ~ ~ 1 2
execute if score !Timer herotimer2 matches 1 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 10 1
execute if score !Timer herotimer2 matches 1 run playsound entity.wither.spawn master @a ~ ~ ~ 9999999 0
execute if score !Timer herotimer2 matches 1 run playsound minecraft:block.ender_chest.open ambient @a ~ ~ ~ 9999999 0
execute if score !Timer herotimer2 matches 1 run tellraw @a {"text":"<Herobrine> O' Helvius, the mighty Dreadlord. Grant me the strength of the dreadwrath once more.","color":"dark_red"}


execute if score !Timer herotimer2 matches 1..200 run execute as @e[type=husk,tag=herobrine] in survivalexpansion:the_void run tp @s 0 20 0
execute if score !Timer herotimer2 matches 1..240 run execute as @e[type=husk,tag=herobrine] run data merge entity @s {Health:10f}
execute if score !Timer herotimer2 matches 1..200 run execute at @e[type=husk,tag=herobrine] run particle crimson_spore ~ ~ ~ 1 1 1 1 10 force
execute if score !Timer herotimer2 matches 1..200 run execute at @e[type=husk,tag=herobrine] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 1 1 1 1 10 force
execute if score !Timer herotimer2 matches 100 run playsound minecraft:entity.warden.sonic_charge master @a[tag=void] ~ ~ ~ 9999999 0
execute if score !Timer herotimer2 matches 200 run bossbar set minecraft:herobrine max 10
execute if score !Timer herotimer2 matches 200 run playsound minecraft:block.ender_chest.close ambient @a[tag=void] ~ ~ ~ 9999999 0
execute if score !Timer herotimer2 matches 200 run playsound minecraft:entity.lightning_bolt.impact master @a[tag=void] ~ ~ ~ 99999999 0
execute if score !Timer herotimer2 matches 200 run playsound minecraft:entity.lightning_bolt.impact master @a[tag=void] ~ ~ ~ 99999999 1

execute if score !Timer herotimer2 matches 200 run playsound minecraft:entity.lightning_bolt.impact master @a[tag=void] ~ ~ ~ 99999999 2
execute if score !Timer herotimer2 matches 200 run playsound minecraft:entity.lightning_bolt.thunder master @a[tag=void] ~ ~ ~ 99999999 0
execute if score !Timer herotimer2 matches 200 run playsound minecraft:entity.lightning_bolt.thunder master @a[tag=void] ~ ~ ~ 99999999 1
execute if score !Timer herotimer2 matches 200 run playsound minecraft:entity.lightning_bolt.thunder master @a[tag=void] ~ ~ ~ 99999999 2
execute if score !Timer herotimer2 matches 200 run playsound minecraft:entity.husk.ambient master @a[tag=void] ~ ~ ~ 9999999 0
execute if score !Timer herotimer2 matches 200 run execute at @e[type=husk,tag=herobrine] run particle crimson_spore ~ ~ ~ 10 10 10 1 1000 force
execute if score !Timer herotimer2 matches 200 run execute at @e[type=husk,tag=herobrine] run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 1 1 1 1 10 force
execute if score !Timer herotimer2 matches 200 run execute at @e[type=husk,tag=herobrine] run particle explosion ~ ~ ~ 1 1 1 1 50 force
execute if score !Timer herotimer2 matches 200 run data merge entity @e[type=husk,limit=1,tag=herobrine] {equipment:{feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:custom_name":{"color":"red","italic":false,"text":"Bloodsteel Boots"},"minecraft:unbreakable":{},"minecraft:tooltip_display":{hidden_components:["unbreakable","enchantments"]},"minecraft:enchantments":{"minecraft:blast_protection":20,"minecraft:feather_falling":10,"minecraft:fire_protection":20,"minecraft:projectile_protection":20,"minecraft:protection":20,"minecraft:thorns":10,"minecraft:depth_strider":3,"minecraft:soul_speed":3}}},legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:custom_name":{"color":"red","italic":false,"text":"Bloodsteel Leggings"},"minecraft:unbreakable":{},"minecraft:tooltip_display":{hidden_components:["unbreakable","enchantments"]},"minecraft:enchantments":{"minecraft:blast_protection":20,"minecraft:fire_protection":20,"minecraft:projectile_protection":20,"minecraft:protection":20,"minecraft:thorns":10}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:custom_name":{"color":"red","italic":false,"text":"Bloodsteel Chestplate"},"minecraft:unbreakable":{},"minecraft:tooltip_display":{hidden_components:["unbreakable","enchantments"]},"minecraft:enchantments":{"minecraft:blast_protection":20,"minecraft:fire_protection":20,"minecraft:projectile_protection":20,"minecraft:protection":20,"minecraft:thorns":10}}},head:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:custom_name":{"color":"red","italic":false,"text":"Bloodsteel Helmet"},"minecraft:unbreakable":{},"minecraft:tooltip_display":{hidden_components:["unbreakable","enchantments"]},"minecraft:enchantments":{"minecraft:blast_protection":20,"minecraft:fire_protection":20,"minecraft:projectile_protection":20,"minecraft:protection":20,"minecraft:thorns":10,"minecraft:aqua_affinity":1,"minecraft:respiration":10}}},mainhand:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:custom_name":{"color":"red","italic":false,"text":"The Dread Blade"},"minecraft:lore":[{"color":"gray","italic":false,"text":"Bleeding I"}],"minecraft:unbreakable":{},"minecraft:enchantments":{"minecraft:fire_aspect":2,"minecraft:knockback":3,"minecraft:looting":5,"minecraft:sweeping_edge":3},"minecraft:attribute_modifiers":[{id:"movement_speed",type:"movement_speed",amount:0.1,operation:"add_value",slot:"any"},{id:"attack_damage",type:"attack_damage",amount:20,operation:"add_value",slot:"any"}],"minecraft:tooltip_display":{hidden_components:["attribute_modifiers"]}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:0.000}}
execute if score !Timer herotimer2 matches 200 as @e[type=husk,tag=herobrine] run data merge entity @s {Invulnerable:0b}