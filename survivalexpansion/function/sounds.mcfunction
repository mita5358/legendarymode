tag @e[type=skeleton,tag=ghost] add nepsounds 
tag @e[type=zombie,tag=dread_guardian] add nepsounds 
tag @e[type=zombie,tag=haven_guardian] add nepsounds 
tag @e[type=ghast,name=Ascalaphus,nbt={Silent:1b}] add nepsounds 
tag @e[type=zombie,nbt={CustomName:'{"color":"red","text":"The Dreadknight"}'}] add nepsounds 
execute at @a as @e[tag=nepsounds,distance=..20] run scoreboard players add @s Sounds 1

execute as @e[type=skeleton,tag=nepsounds] if score @s Sounds matches 140 at @s run playsound entity.warden.ambient ambient @a[distance=0..50] ~ ~ ~ 1 2
execute as @e[type=zombie,nbt={CustomName:'{"color":"red","text":"The Dreadknight"}'},tag=nepsounds1] if score @s Sounds matches 140 at @s run playsound entity.zombie.ambient ambient @a[distance=0..50] ~ ~ ~ 1 0
execute as @e[type=zombie,tag=haven_guardian] if score @s Sounds matches 140 at @s run playsound entity.zombie.ambient ambient @a[distance=0..50] ~ ~ ~ 1 0
execute as @e[type=zombie,tag=dread_guardian] if score @s Sounds matches 140 at @s run playsound entity.zombie.ambient ambient @a[distance=0..50] ~ ~ ~ 1 0
execute as @e[type=ghast,nbt={Silent:1b},name=Ascalaphus,tag=nepsounds] if score @s Sounds matches 140 at @s run playsound entity.ghast.ambient ambient @a[tag=asrange] ~ ~ ~ 15 0
execute if score DelayT Portals matches 250 run execute as @e[type=marker,name=dreadportal] at @s run playsound minecraft:block.beacon.power_select ambient @a[distance=0..50] ~ ~ ~ 1 0
execute if score DelayT Portals matches 250 run execute as @e[type=marker,name=havenportal] at @s run playsound minecraft:block.beacon.power_select ambient @a[distance=0..50] ~ ~ ~ 1 1.5


execute as @e[tag=nepsounds] if score @s Sounds matches 140.. run scoreboard players reset @s Sounds
execute if score DelayT Portals matches 250.. run scoreboard players reset DelayT Portals