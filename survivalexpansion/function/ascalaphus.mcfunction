bossbar set minecraft:ascalaphus visible true
execute as @e[tag=SummonAscalaphus2] at @s run kill @e[type=leash_knot,tag=particle]
execute as @e[tag=SummonAscalaphus2] at @s run setblock ~2 ~2 ~2 blue_ice
execute as @e[tag=SummonAscalaphus2] at @s run setblock ~-2 ~2 ~-2 blue_ice
execute as @e[tag=SummonAscalaphus2] at @s run setblock ~-2 ~2 ~2 blue_ice
execute as @e[tag=SummonAscalaphus2] at @s run setblock ~2 ~2 ~-2 blue_ice
execute as @e[tag=SummonAscalaphus2] at @s run playsound minecraft:entity.ghast.warn ambient @a[distance=..100] ~ ~ ~ 15 0
execute as @e[tag=SummonAscalaphus2] at @s run playsound minecraft:entity.generic.explode ambient @a[distance=..100] ~ ~ ~ 15 1
execute as @e[tag=SummonAscalaphus2] at @s run playsound entity.wither.spawn ambient @a[distance=..100] ~ ~ ~ 15 0
execute as @e[tag=SummonAscalaphus2] at @s run particle explosion_emitter
execute as @e[tag=SummonAscalaphus2] at @s run summon ghast ~ ~10 ~ {Silent:1b,Glowing:1b,DeathLootTable:"null",Team:"AscalaphusGlow",PersistenceRequired:1b,Health:100f,ExplosionPower:4,Tags:["ascalaphus"],CustomName:"Ascalaphus",equipment:{feet:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:enchantments":{"minecraft:blast_protection":4}}},legs:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:enchantments":{"minecraft:blast_protection":4}}},chest:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{"minecraft:blast_protection":4}}},head:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:enchantments":{"minecraft:blast_protection":4}}},mainhand:{id:"minecraft:ghast_tear",count:1,components:{"minecraft:enchantment_glint_override":true,"minecraft:item_model":"minecraft:ichortear","minecraft:custom_name":{"color":"yellow","italic":false,"text":"Ichor Tear"}}}},drop_chances:{feet:0.000,legs:0.000,chest:0.000,head:0.000,mainhand:1.000},attributes:[{id:"minecraft:follow_range",base:1000},{id:"minecraft:max_health",base:100},{id:"minecraft:scale",base:1.5}]}
kill @e[tag=SummonAscalaphus2]