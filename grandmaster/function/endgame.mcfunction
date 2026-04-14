kill @e[type=dragon_fireball]
execute unless entity @e[type=ender_dragon] run scoreboard players add Timer Endgametimer 1
execute if score Timer Endgametimer matches 1 run scoreboard players add Timer Endgame 1
execute if score Timer Endgame matches 1 run function grandmaster:ns
execute if score Timer Endgame matches 2 run function grandmaster:nb
execute if score Timer Endgame matches 3 run function grandmaster:nl
execute if score Timer Endgame matches 4 run function grandmaster:nc
execute if score Timer Endgame matches 5 run function grandmaster:nh