

advancement revoke @s only survivalexpansion:chronoshard
scoreboard players add @s timewarpd 1
execute as @a[nbt={SelectedItem:{components:{"minecraft:item_model":"minecraft:chronoshard"}}}] if score @s timewarpd matches 1 run function survivalexpansion:timewarp1
execute as @a[nbt={equipment:{offhand:{components:{"minecraft:item_model":"minecraft:chronoshard"}}}}] if score @s timewarpd matches 1 run function survivalexpansion:timewarp2