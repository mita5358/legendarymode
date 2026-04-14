fill ~1 ~-1 ~1 ~-1 ~-1 ~-1 air
particle minecraft:dragon_breath ~ ~ ~ 1 1 1 1 1000 force
particle minecraft:explosion ~ ~ ~ 1 1 1 2 20 normal
playsound minecraft:block.beacon.activate ambient @a ~ ~ ~ 99999 2
playsound entity.generic.explode ambient @a ~ ~ ~ 999999 0
setblock ~ ~-1 ~ dropper[facing=down]{CustomName:{text:"Haven Altar",color:"yellow"}} replace
summon leash_knot ~ ~ ~ {Silent:1b}