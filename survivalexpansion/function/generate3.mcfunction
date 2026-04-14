#floor

place template survivalexpansion:floor 24 0 24
place template survivalexpansion:floor -23 0 24
place template survivalexpansion:floor -70 0 24

place template survivalexpansion:floor 24 0 -23
place template survivalexpansion:floor -23 0 -23
place template survivalexpansion:floor -70 0 -23

place template survivalexpansion:floor 24 0 -70
place template survivalexpansion:floor -23 0 -70
place template survivalexpansion:floor -70 0 -70

#Floor Touchup

fill -71 0 71 71 0 -71 deepslate_tiles replace grass_block

#Herobrine's Altar

fill -1 1 -1 1 1 1 gold_block outline
setblock 0 2 1 redstone_torch
setblock 1 2 0 redstone_torch
setblock 0 2 -1 redstone_torch
setblock -1 2 0 redstone_torch
setblock 0 2 0 netherrack
setblock 0 1 0 mossy_cobblestone

execute in survivalexpansion:the_void run summon armor_stand 0 0 0 {Marker:1b,Invisible:1b,CustomName:{text:"Generatedarena"}}