schedule function survivalexpansion:ngloop 5t
execute as @e[tag=SummonNG2] at @s run kill @e[type=leash_knot,tag=particle]
execute as @e[tag=SummonNG2] at @s run setblock ~2 ~2 ~2 blue_ice
execute as @e[tag=SummonNG2] at @s run setblock ~-2 ~2 ~-2 blue_ice
execute as @e[tag=SummonNG2] at @s run setblock ~-2 ~2 ~2 blue_ice
execute as @e[tag=SummonNG2] at @s run setblock ~2 ~2 ~-2 blue_ice
execute as @e[tag=SummonNG2] at @s run playsound minecraft:entity.iron_golem.repair ambient @a[distance=..100] ~ ~ ~ 15 0
execute as @e[tag=SummonNG2] at @s run playsound minecraft:entity.explode ambient @a[distance=..100] ~ ~ ~ 15 1
execute as @e[tag=SummonNG2] at @s run playsound minecraft:entity.iron_golem.hurt ambient @a[distance=..100] ~ ~ ~ 15 0
execute as @e[tag=SummonNG2] at @s run playsound entity.wither.spawn ambient @a[distance=..100] ~ ~ ~ 15 0
execute as @e[tag=SummonNG2] at @s run particle explosion_emitter
execute as @e[tag=SummonNG2] at @s run summon iron_golem ~ ~ ~ {Silent:1b,DeathLootTable:"null",Team:"neptuniumgolem",PersistenceRequired:1b,NoAI:1b,Health:1250f,CustomName:{"color":"dark_purple","text":"Neptunium Golem"},equipment:{head:{id:"minecraft:iron_ingot",count:1,components:{"minecraft:item_model":"minecraft:nepingot","minecraft:custom_name":{color:"red",italic:0b,text:"Neptunium Ingot"},"minecraft:enchantment_glint_override":true}}},drop_chances:{head:1.000},attributes:[{id:"minecraft:max_health",base:1250},{id:"minecraft:scale",base:2}]}
execute as @e[tag=SummonNG2] at @s run summon vindicator ~ ~ ~ {HasVisualFire:0b,Silent:1b,Invulnerable:1b,DeathLootTable:"null",Team:"neptuniumgolem",PersistenceRequired:1b,CustomName:{"color":"dark_purple","text":"Neptunium Golem"},active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:999999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:20},{id:"minecraft:follow_range",base:1000},{id:"minecraft:knockback_resistance",base:1}]}
kill @e[tag=SummonNG2]