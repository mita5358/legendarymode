scoreboard players add Timer Insomniatimer 1
scoreboard players set Timer Insomniac 1
execute as @a[scores={Insomnia=1}] run kill @s
execute as @a[limit=1] if score Timer Insomniatimer matches 1 run tellraw @a ["",{"text":"You won't be able to sleep tonight...","color":"dark_red"}]
execute as @a if score Timer Insomniatimer matches 13000.. run scoreboard players reset Timer Insomniac
execute as @a if score Timer Insomniatimer matches 13000.. run scoreboard players reset Timer Insomniatimer