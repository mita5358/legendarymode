execute at @e[type=marker,name=dreadportal] in survivalexpansion:the_dreadlands run forceload add ~ ~ ~ ~
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run fill ~-1 ~2 ~-1 ~3 ~-2 ~3 air
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run fill ~-1 ~-2 ~-1 ~3 ~-2 ~0 obsidian
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run fill ~-1 ~-2 ~1 ~0 ~-2 ~3 obsidian
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run setblock ~1 ~-2 ~1 crying_obsidian
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run fill ~2 ~-2 ~1 ~3 ~-2 ~3 obsidian
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run fill ~1 ~-2 ~2 ~3 ~-2 ~3 obsidian
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run setblock ~0 ~-1 ~0 grass_block
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run setblock ~1 ~-1 ~0 light_blue_stained_glass
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run setblock ~2 ~-1 ~0 grass_block
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run setblock ~0 ~-1 ~1 light_blue_stained_glass
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run setblock ~2 ~-1 ~1 light_blue_stained_glass
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run setblock ~0 ~-1 ~2 grass_block
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run setblock ~1 ~-1 ~2 light_blue_stained_glass
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run setblock ~2 ~-1 ~2 grass_block
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run setblock ~1 ~-1 ~1 water[level=0]
execute at @a[tag=dreadtp] run execute in survivalexpansion:the_dreadlands run summon leash_knot ~1.0 ~-1.0 ~1.0 {Tags:["aligndread"]}
execute at @a[tag=dreadtp] run kill @e[type=armor_stand,name=owportal,nbt={Marker:1b},distance=..5]
execute at @e[type=leash_knot,tag=aligndread] run execute in survivalexpansion:the_dreadlands run summon armor_stand ~ ~-1 ~ {Invulnerable:1,Invisible:1,Small:1,Marker:1,CustomName:{"text":"owportal"}}
kill @e[type=leash_knot,tag=aligndread]
execute as @a[tag=dreadtp] at @s run execute in survivalexpansion:the_dreadlands run playsound minecraft:block.portal.travel ambient @s
execute as @a[tag=dreadtp] run effect give @s minecraft:nausea 10 50 true
execute at @e[type=armor_stand,name=owportal,nbt={Small:1b}] run forceload remove ~-6 ~-6 ~6 ~6
tag @a remove dreadtp