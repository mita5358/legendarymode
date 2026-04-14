function survivalexpansion:atscalaphus
execute as @e[type=armor_stand,tag=SummonAscalaphus2] at @s run function survivalexpansion:atscalaphus2
execute if entity @s run schedule function survivalexpansion:ascalaphus 3s
kill @s
