tag @a add exemptchrono2
tag @e[type=marker] add exemptchrono2
tag @e[type=armor_stand] add exemptchrono2
tag @e[type=arrow] add exemptchrono2
tag @e[type=item] add exemptchrono2
tag @e[type=lightning_bolt] add exemptchrono2
execute if score @s timewarp2 matches 0 at @s as @e[distance=..15,tag=!exemptchrono2] run damage @s 30
execute if score @s timewarp2 matches 0 at @s as @e[distance=..15,tag=!exemptchrono2] at @s run summon lightning_bolt ~ ~ ~
execute if score @s timewarp2 matches 0 at @s as @e[distance=..15,tag=!exemptchrono2] at @s run particle sculk_soul ~ ~ ~ 0.5 0.75 0.5 0 50 force
execute if score @s timewarp2 matches 0 at @s run playsound minecraft:entity.blaze.hurt master @a ~ ~ ~ 10 0
execute if score @s timewarp2 matches 0 at @s run playsound minecraft:entity.ghast.shoot master @a ~ ~ ~ 10 0
scoreboard players add @s timewarp2 1
execute if score @s timewarp2 matches 2.. run scoreboard players set @s timewarp2 0
