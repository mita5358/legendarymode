execute if block ~ ~1 ~ air run fill ~ ~2 ~ ~ ~2 ~ air replace light 
execute if block ~ ~1 ~ air run kill @e[type=item,distance=0..3,nbt={Item:{id:"minecraft:dropper",count:1}}]
execute if block ~ ~1 ~ air run kill @e[type=block_display,distance=0..3]

execute if block ~ ~1 ~ air run summon item ~ ~1 ~ {Item:{id:"minecraft:amethyst_shard",count:1}}
execute if block ~ ~1 ~ air run summon item ~ ~1 ~ {Item:{id:"minecraft:cobbled_deepslate",count:4}}
execute if block ~ ~1 ~ air run summon item ~ ~1 ~ {Item:{id:"minecraft:crafting_table",count:1}}
execute if block ~ ~1 ~ air run summon item ~ ~1 ~ {Item:{id:"minecraft:oxidized_cut_copper",count:4}}
execute if block ~ ~1 ~ air run kill @s