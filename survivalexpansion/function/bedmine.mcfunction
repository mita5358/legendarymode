advancement revoke @s only survivalexpansion:neppick
execute unless entity @e[scores={bedrockmine=1..}] run summon leash_knot ~ ~ ~ {Tags:["neptunebedrock"]}
execute at @e[tag=neptunebedrock] run summon marker ~ ~ ~ {Tags:["neptunebedrock2"]}
