# 1. 给地上的原版保护4装备打标签 (将 distance=0..1 优化为原生的 ..1)
execute at @s as @e[type=item,distance=..1] if data entity @s Item{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":4}}}} run tag @s add prot5h
execute at @s as @e[type=item,distance=..1] if data entity @s Item{id:"minecraft:netherite_chestplate",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":4}}}} run tag @s add prot5c
execute at @s as @e[type=item,distance=..1] if data entity @s Item{id:"minecraft:netherite_leggings",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":4}}}} run tag @s add prot5l
execute at @s as @e[type=item,distance=..1] if data entity @s Item{id:"minecraft:netherite_boots",count:1,components:{"minecraft:enchantments":{levels:{"minecraft:protection":4}}}} run tag @s add prot5b

# 2. 只有当满足条件时，才执行修改、音效和粒子 (避免每种效果都去独立校验一遍 NBT，极大降低开销)
execute as @e[tag=prot5h] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5h,distance=..1] run function grandmaster:prot5_apply_h
execute as @e[tag=prot5c] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5c,distance=..1] run function grandmaster:prot5_apply_c
execute as @e[tag=prot5l] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5l,distance=..1] run function grandmaster:prot5_apply_l
execute as @e[tag=prot5b] at @s unless entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5b,distance=..1] run function grandmaster:prot5_apply_b

# 3. 失败时的警示粒子 (合并执行)
execute as @e[tag=prot5h] at @s if entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5h,distance=..1] run function grandmaster:prot5_fail
execute as @e[tag=prot5c] at @s if entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5c,distance=..1] run function grandmaster:prot5_fail
execute as @e[tag=prot5l] at @s if entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5l,distance=..1] run function grandmaster:prot5_fail
execute as @e[tag=prot5b] at @s if entity @e[type=item,nbt=!{Item:{id:"minecraft:netherite_ingot"}},tag=!prot5b,distance=..1] run function grandmaster:prot5_fail

# 4. 删除合金锭
execute as @e[tag=prot5h] at @s run kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:netherite_ingot",count:1}}]
execute as @e[tag=prot5c] at @s run kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:netherite_ingot",count:1}}]
execute as @e[tag=prot5l] at @s run kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:netherite_ingot",count:1}}]
execute as @e[tag=prot5b] at @s run kill @e[type=item,limit=1,distance=..1,nbt={Item:{id:"minecraft:netherite_ingot",count:1}}]