#Kill

execute as @e[tag=prot5h] at @s run kill @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:netherite_ingot",count:1}}]
execute as @e[tag=prot5c] at @s run kill @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:netherite_ingot",count:1}}]
execute as @e[tag=prot5l] at @s run kill @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:netherite_ingot",count:1}}]
execute as @e[tag=prot5b] at @s run kill @e[type=item,limit=1,distance=0..1,nbt={Item:{id:"minecraft:netherite_ingot",count:1}}]

execute at @s run execute as @e[type=item,distance=0..1,nbt={Item:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":4}}}}}] at @s run tag @s add prot5h
execute at @s run execute as @e[type=item,distance=0..1,nbt={Item:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":4}}}}}] at @s run tag @s add prot5c
execute at @s run execute as @e[type=item,distance=0..1,nbt={Item:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":4}}}}}] at @s run tag @s add prot5l
execute at @s run execute as @e[type=item,distance=0..1,nbt={Item:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":4}}}}}] at @s run tag @s add prot5b



execute as @e[tag=prot5h] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5h,distance=0..1] run data merge entity @s {Item:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":5}}}}}
execute as @e[tag=prot5h] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5h,distance=0..1] run particle minecraft:enchant ~ ~ ~ 0 0 0 0.05 50 normal
execute as @e[tag=prot5h] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5h,distance=0..1] run playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 2 0.5
execute as @e[tag=prot5h] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5h,distance=0..1] run playsound minecraft:block.gravel.break ambient @a ~ ~ ~ 2 0.5

execute as @e[tag=prot5c] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5c,distance=0..1] run data merge entity @s {Item:{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":5}}}}}
execute as @e[tag=prot5c] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5c,distance=0..1] run particle minecraft:enchant ~ ~ ~ 0 0 0 0.05 50 normal
execute as @e[tag=prot5c] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5c,distance=0..1] run playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 2 0.5
execute as @e[tag=prot5c] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5c,distance=0..1] run playsound minecraft:block.gravel.break ambient @a ~ ~ ~ 2 0.5

execute as @e[tag=prot5l] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5l,distance=0..1] run data merge entity @s {Item:{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":5}}}}}
execute as @e[tag=prot5l] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5l,distance=0..1] run particle minecraft:enchant ~ ~ ~ 0 0 0 0.05 50 normal
execute as @e[tag=prot5l] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5l,distance=0..1] run playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 2 0.5
execute as @e[tag=prot5l] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5l,distance=0..1] run playsound minecraft:block.gravel.break ambient @a ~ ~ ~ 2 0.5

execute as @e[tag=prot5b] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5b,distance=0..1] run data merge entity @s {Item:{id:"minecraft:netherite_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":5}}}}}
execute as @e[tag=prot5b] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5b,distance=0..1] run particle minecraft:enchant ~ ~ ~ 0 0 0 0.05 50 normal
execute as @e[tag=prot5b] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5b,distance=0..1] run playsound minecraft:block.enchantment_table.use ambient @a ~ ~ ~ 2 0.5
execute as @e[tag=prot5b] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5b,distance=0..1] run playsound minecraft:block.gravel.break ambient @a ~ ~ ~ 2 0.5

execute as @e[tag=prot5h] at @s if entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5h,distance=0..1] run particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 0.05 50 normal
execute as @e[tag=prot5c] at @s if entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5c,distance=0..1] run particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 0.05 50 normal
execute as @e[tag=prot5l] at @s if entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5l,distance=0..1] run particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 0.05 50 normal
execute as @e[tag=prot5b] at @s if entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5b,distance=0..1] run particle minecraft:witch ~ ~ ~ 0.2 0.2 0.2 0.05 50 normal

execute as @e[tag=prot5h] at @s if entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5h,distance=0..1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
execute as @e[tag=prot5c] at @s if entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5c,distance=0..1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
execute as @e[tag=prot5l] at @s if entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5l,distance=0..1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
execute as @e[tag=prot5b] at @s if entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5b,distance=0..1] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0

