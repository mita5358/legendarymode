schedule function survivalexpansion:haloop 5t
execute as @e[tag=SummonHA2] at @s run kill @e[type=leash_knot,tag=particle]
execute as @e[tag=SummonHA2] at @s run setblock ~2 ~2 ~2 blue_ice
execute as @e[tag=SummonHA2] at @s run setblock ~-2 ~2 ~-2 blue_ice
execute as @e[tag=SummonHA2] at @s run setblock ~-2 ~2 ~2 blue_ice
execute as @e[tag=SummonHA2] at @s run setblock ~2 ~2 ~-2 blue_ice
execute as @e[tag=SummonHA2] at @s run playsound minecraft:block.beacon.activate master @a[distance=..100] ~ ~ ~ 15 0
execute as @e[tag=SummonHA2] at @s run playsound minecraft:entity.generic.explode ambient @a[distance=..100] ~ ~ ~ 15 1
execute as @e[tag=SummonHA2] at @s run playsound minecraft:block.end_portal_frame.fill master @a[distance=..100] ~ ~ ~ 15 0
execute as @e[tag=SummonHA2] at @s run playsound entity.wither.spawn ambient @a[distance=..100] ~ ~ ~ 15 0
execute as @e[tag=SummonHA2] at @s run particle explosion_emitter
execute as @e[tag=SummonHA2] at @s run summon husk ~ ~ ~ {Silent:1b,DeathLootTable:"null",Team:"havenangel",PersistenceRequired:1b,Health:1500f,Tags:["havenangel"],Passengers:[{id:"minecraft:armor_stand",Team:"havenangel",Marker:1b,Invisible:1b,PersistenceRequired:0b}],CustomName:{"color":"yellow","text":"Haven Angel"},equipment:{chest:{id:"minecraft:bone",count:2,components:{"minecraft:item_model":"minecraft:angelbone","minecraft:custom_name":{"color":"red","italic":false,"text":"Angel's Bone"},"minecraft:tooltip_display":{hidden_components:["enchantments"]},"minecraft:enchantment_glint_override":true}}},drop_chances:{chest:1.000},active_effects:[{id:"minecraft:12",amplifier:1,duration:9999999,show_particles:0b}],attributes:[{id:"minecraft:attack_damage",base:15},{id:"minecraft:knockback_resistance",base:1},{id:"minecraft:max_health",base:1500},{id:"minecraft:movement_speed",base:0.5}]}
kill @e[tag=SummonHA2]