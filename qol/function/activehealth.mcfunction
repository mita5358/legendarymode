execute at @a as @e[distance=..7,type=!item,type=!area_effect_cloud,type=!lightning_bolt,type=!player,type=!end_crystal,type=!evoker_fangs,type=!marker,type=!item_display,type=!text_display,type=!interaction,type=!glow_item_frame,type=!small_fireball,type=!firework_rocket,type=!horse,type=!skeleton_horse,type=!zombie_horse,type=!mule,type=!donkey,type=!fishing_bobber,type=!leash_knot,type=!painting,type=!item_frame,type=!fireball,type=!dragon_fireball,type=!wither_skull,type=!shulker_bullet,type=!minecart,type=!hopper_minecart,type=!furnace_minecart,type=!tnt_minecart,type=!command_block_minecart,type=!spawner_minecart,type=!chest_minecart,type=!trident,type=!llama_spit,type=!tnt,type=!block_display,type=!arrow,type=!spectral_arrow,type=!snowball,type=!egg,type=!eye_of_ender,type=!ender_pearl,type=!ender_dragon,type=!wither,type=!experience_orb,type=!experience_bottle,type=!falling_block,type=!armor_stand,type=!#minecraft:boat] store result score @s damIn run data get entity @s Health
execute at @a as @e[distance=..7,tag=!linked,nbt={HurtTime:9s}] at @s run summon area_effect_cloud ~ ~ ~ {CustomNameVisible:1b,Radius:0f,Duration:999999,Tags:["linked","healthdisplay"],CustomName:{"color":"red","text":"♥ 0"}}
execute as @e[type=area_effect_cloud,tag=linked] at @s run ride @s mount @e[distance=..7,tag=!linked,sort=nearest,limit=1,scores={damIn=0..}]
execute as @e[type=area_effect_cloud,tag=linked,tag=!safe] on vehicle run function qol:datamerge
execute as @e[type=area_effect_cloud,tag=linked] on vehicle on passengers run tag @s add safe
execute at @a as @e[distance=..7] on passengers on vehicle run tag @s add linked
execute as @e[type=area_effect_cloud,tag=healthdisplay] at @s unless entity @a[distance=..7] on vehicle run tag @s remove linked
execute as @e[type=area_effect_cloud,tag=healthdisplay] at @s unless entity @a[distance=..7] run tag @s remove safe
execute as @e[type=area_effect_cloud,tag=healthdisplay,tag=!safe] run kill @s
tag @e[type=area_effect_cloud,tag=safe] remove safe

execute as @e[nbt={HurtTime:9s}] at @s run function qol:datamerge
scoreboard players reset @e damIn