bossbar set minecraft:herobrine max 512
execute in survivalexpansion:the_void as @a[distance=0..] at @s if block ~ ~-1 ~ grass_block run effect give @s minecraft:instant_damage 1 2 true
execute if score !Timer herotimer matches 710.. run scoreboard players add !Timer hero1 1
execute if score !Timer herotimer matches 710.. run scoreboard players add !Timer hero2 1
execute if score !Timer herotimer matches 710.. run scoreboard players add !Timer hero3 1
execute if score !Timer herotimer matches 710.. run scoreboard players add !Timer hero4 1
execute if score !Timer herotimer matches 710.. run scoreboard players add !Timer hero5 1