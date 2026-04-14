execute at @e[type=marker,name=havenportal] in survivalexpansion:the_havenlands run forceload add ~ ~ ~ ~
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run fill ~-1 ~2 ~-1 ~3 ~-2 ~3 air
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run fill ~-1 ~-2 ~-1 ~3 ~-2 ~0 obsidian
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run fill ~-1 ~-2 ~1 ~0 ~-2 ~3 obsidian
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run setblock ~1 ~-2 ~1 crying_obsidian
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run fill ~2 ~-2 ~1 ~3 ~-2 ~3 obsidian
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run fill ~1 ~-2 ~2 ~3 ~-2 ~3 obsidian
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run setblock ~0 ~-1 ~0 grass_block
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run setblock ~1 ~-1 ~0 light_blue_stained_glass
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run setblock ~2 ~-1 ~0 grass_block
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run setblock ~0 ~-1 ~1 light_blue_stained_glass
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run setblock ~2 ~-1 ~1 light_blue_stained_glass
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run setblock ~0 ~-1 ~2 grass_block
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run setblock ~1 ~-1 ~2 light_blue_stained_glass
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run setblock ~2 ~-1 ~2 grass_block
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run setblock ~1 ~-1 ~1 water[level=0]
execute at @a[tag=haventp] run execute in survivalexpansion:the_havenlands run summon leash_knot ~1.0 ~-1.0 ~1.0 {Tags:["alignhaven"]}
execute at @a[tag=haventp] run kill @e[type=armor_stand,name=owportal,nbt={Marker:1b},distance=..5]
execute at @e[type=leash_knot,tag=alignhaven] run execute in survivalexpansion:the_havenlands run summon armor_stand ~ ~-1 ~ {Invulnerable:1,Invisible:1,Small:1,Marker:1,CustomName:{"text":"owportal"}}
kill @e[type=leash_knot,tag=alignhaven]
execute as @a[tag=haventp] at @s run execute in survivalexpansion:the_havenlands run playsound minecraft:block.portal.travel ambient @s
execute as @a[tag=haventp] run effect give @s minecraft:nausea 10 50 true
execute at @e[type=armor_stand,name=owportal,nbt={Small:1b}] run forceload remove ~-6 ~-6 ~6 ~6
tag @a remove haventp