scoreboard players add !Timer herotimer4 1
execute if score !Timer herotimer4 matches 1 run summon vindicator 0 10 0 {Silent:1b,Invulnerable:1b,DeathLootTable:"null",Team:"herobrine",PersistenceRequired:1b,NoAI:1b,Tags:["herobrine"],CustomName:'{"text":"Herobrine"}',active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:999999,show_particles:0b}],attributes:[{id:"minecraft:generic.follow_range",base:1000},{id:"minecraft:generic.movement_speed",base:0.4}]}
execute as @e[type=vindicator,tag=herobrine] run tp @e[type=giant,tag=Herobrine] @s
execute if score !Timer herotimer4 matches 1 run function survivalexpansion:lightning
execute if score !Timer herotimer4 matches 15 run function survivalexpansion:lightning
execute if score !Timer herotimer4 matches 30 run function survivalexpansion:lightning
execute if score !Timer herotimer4 matches 45 run function survivalexpansion:lightning
execute if score !Timer herotimer4 matches 1..200 run execute as @e[type=giant,tag=Herobrine] at @s run tp @s ~ ~0.2 ~
execute if score !Timer herotimer4 matches 200 run function survivalexpansion:lightning
execute if score !Timer herotimer4 matches 200 run execute as @e[type=vindicator,tag=herobrine] run data merge entity @s {NoAI:0b}
execute if score !Timer herotimer4 matches 200 run execute as @e[type=giant,tag=Herobrine] run data merge entity @s {Invulnerable:0b}

#Bossbar

bossbar set minecraft:flame visible false
execute store result score Herohealth herogh run data get entity @e[type=giant,limit=1,tag=Herobrine] Health
execute if entity @e[type=minecraft:giant,tag=Herobrine] run bossbar set minecraft:herobrineg visible true
execute unless entity @e[type=minecraft:giant,tag=Herobrine] run bossbar set minecraft:herobrineg visible false
execute store result bossbar minecraft:herobrineg value run data get entity @e[type=giant,limit=1,tag=Herobrine] Health

#Kill Sequence

execute at @e[type=vindicator,tag=herobrine] unless entity @e[type=giant,tag=Herobrine] run summon item ~ ~ ~ {Glowing:1b,Invulnerable:1b,Item:{id:"minecraft:clock",count:1,components:{"minecraft:consumable":{consume_seconds:1000000,animation:"none",has_consume_particles:false},"minecraft:item_model":"chronoshard","minecraft:item_name":{"color":"black","italic":false,"shadow_color":-1,"text":"Chronoshard"},"minecraft:damage_resistant":{types:"#minecraft:is_fire"}}}}
execute if entity @e[type=vindicator,tag=herobrine] unless entity @e[type=giant,tag=Herobrine] run stopsound @a[tag=void]
execute if entity @e[type=vindicator,tag=herobrine] unless entity @e[type=giant,tag=Herobrine] at @a run playsound minecraft:entity.wither.death master @a[tag=void] ~ ~ ~ 999999 0
execute if entity @e[type=vindicator,tag=herobrine] unless entity @e[type=giant,tag=Herobrine] at @a run playsound minecraft:block.beacon.deactivate master @a[tag=void] ~ ~ ~ 9999999 0
execute if entity @e[type=vindicator,tag=herobrine] unless entity @e[type=giant,tag=Herobrine] at @a run playsound minecraft:entity.lightning_bolt.impact master @a[tag=void] ~ ~ ~ 999999 0
execute if entity @e[type=vindicator,tag=herobrine] unless entity @e[type=giant,tag=Herobrine] at @a run playsound minecraft:entity.lightning_bolt.thunder master @a[tag=void] ~ ~ ~ 999999 0
execute if entity @e[type=vindicator,tag=herobrine] unless entity @e[type=giant,tag=Herobrine] at @e[type=vindicator,tag=herobrine] run particle minecraft:smoke ~ ~ ~ 2 2 2 0 1000 force
execute if entity @e[type=vindicator,tag=herobrine] unless entity @e[type=giant,tag=Herobrine] run scoreboard players set !Timer killedherobrine 1
execute if entity @e[type=vindicator,tag=herobrine] unless entity @e[type=giant,tag=Herobrine] run schedule clear survivalexpansion:hloop2
execute if entity @e[type=vindicator,tag=herobrine] unless entity @e[type=giant,tag=Herobrine] run kill @e[type=vindicator,tag=herobrine]
execute unless entity @e[type=giant,tag=Herobrine] run title @a[tag=void] actionbar {"text":"EXTINGUISH THE FLAME","bold":true,"color":"dark_red"}
execute unless entity @e[type=giant,tag=Herobrine] run execute positioned 0 3 0 if entity @a[distance=0..5] run playsound minecraft:block.fire.extinguish master @a[tag=void] ~ ~ ~ 999999 0
execute unless entity @e[type=giant,tag=Herobrine] run execute positioned 0 3 0 if entity @a[distance=0..5] run setblock 0 3 0 air
execute unless entity @e[type=giant,tag=Herobrine] run scoreboard players reset !Timer herog1
execute unless entity @e[type=giant,tag=Herobrine] run scoreboard players reset !Timer herog2
execute unless entity @e[type=giant,tag=Herobrine] run scoreboard players reset !Timer herog3
execute unless entity @e[type=giant,tag=Herobrine] run scoreboard players reset !Timer herog4
execute unless entity @e[type=giant,tag=Herobrine] run scoreboard players reset !Timer herog5

#HeroAttacks

#Timers

execute if score !Timer herotimer4 matches 200.. run scoreboard players add !Timer herog1 1
execute if score !Timer herotimer4 matches 200.. run scoreboard players add !Timer herog2 1
execute if score !Timer herotimer4 matches 200.. run scoreboard players add !Timer herog3 1
execute if score !Timer herotimer4 matches 200.. run scoreboard players add !Timer herog4 1
execute if score !Timer herotimer4 matches 200.. run scoreboard players add !Timer herog5 1

#HeroG1

execute if score !Timer herog1 matches 5 run execute as @e[type=giant,tag=Herobrine] run data merge entity @s {Invulnerable:0b}

execute if score !Timer herog1 matches 500 run execute in survivalexpansion:the_void run function survivalexpansion:lightning
execute if score !Timer herog1 matches 500 run effect give @e[type=vindicator,tag=herobrine] slowness 3 1 true
execute if score !Timer herog1 matches 550 run execute at @e[type=vindicator,tag=herobrine] run playsound minecraft:entity.enderman.teleport master @a[tag=void] ~ ~ ~ 10 1
execute if score !Timer herog1 matches 550 run execute as @e[type=vindicator,tag=herobrine] at @s run execute at @r[tag=void] run spreadplayers ~ ~ 7 7 false @s
execute if score !Timer herog1 matches 500..560 run execute at @e[type=giant,tag=Herobrine] anchored feet run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 2 0.1 2 1 50 force
execute unless score !Timer herog1 matches 500..560 run effect clear @e[type=vindicator,tag=herobrine] slowness 
execute if score !Timer herog1 matches 560 run effect give @e[type=vindicator,tag=herobrine] speed 1 5 true
execute if score !Timer herog1 matches 570 run execute at @e[type=vindicator,tag=herobrine] anchored feet run playsound minecraft:entity.lightning_bolt.impact master @a[tag=void] ~ ~ ~ 999999 0
execute if score !Timer herog1 matches 570 run execute at @e[type=vindicator,tag=herobrine] anchored feet run playsound minecraft:block.anvil.land master @a[tag=void] ~ ~ ~ 9999999 0
execute if score !Timer herog1 matches 570 run execute at @e[type=vindicator,tag=herobrine] anchored feet run particle flame ~ ~ ~ 1 1 1 1 100 force
execute if score !Timer herog1 matches 570 run execute at @e[type=vindicator,tag=herobrine] anchored feet run particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~ ~ 3 2 3 1 1000 force
execute if score !Timer herog1 matches 569 run execute as @e[type=giant,tag=Herobrine] run data merge entity @s {Invulnerable:1b}
execute if score !Timer herog1 matches 570 run execute at @e[type=vindicator,tag=herobrine] anchored feet if entity @a[distance=0..6] run summon area_effect_cloud ~ ~ ~ {Particle:{type:"crimson_spore"},Radius:6f,Duration:10,potion_contents:{custom_effects:[{id:"minecraft:instant_damage",amplifier:5,duration:1,show_particles:1b}]},CustomName:'{"text":"Dense Dreadwrath"}'}
execute if score !Timer herog1 matches 570.. run scoreboard players reset !Timer herog1

#HeroG2

execute if score !Timer herog2 matches 300 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 301 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 302 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 303 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 304 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 305 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 306 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 307 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 308 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 309 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 310 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 311 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 312 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 313 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 314 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 315 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 316 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 317 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 318 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 319 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 321 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 322 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 323 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 324 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 325 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 326 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 327 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 328 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 329 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 330 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 331 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 332 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 333 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 334 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 335 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 336 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 337 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 338 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 339 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 340 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 341 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 342 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 343 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 344 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 345 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 346 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 347 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 348 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 349 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 350 run execute at @a[tag=void] run summon lightning_bolt ~ ~ ~ 
execute if score !Timer herog2 matches 350.. run scoreboard players reset !Timer herog2

#HeroG3

execute if score !Timer herog3 matches 1500 run execute if entity @e[type=giant,tag=Herobrine] run playsound minecraft:entity.zombie.hurt ambient @a[tag=void] ~ ~ ~ 9999999 0
execute if score !Timer herog3 matches 1500 run execute if entity @e[type=giant,tag=Herobrine] run playsound minecraft:entity.donkey.angry ambient @a[tag=void] ~ ~ ~ 9999999 0
execute if score !Timer herog3 matches 1500 run execute if entity @e[type=giant,tag=Herobrine] run playsound minecraft:entity.elder_guardian.curse ambient @a[tag=void]
execute if score !Timer herog3 matches 1500 run execute if entity @e[type=giant,tag=Herobrine] at @e[type=giant,tag=Herobrine] run execute as @a[distance=0..] at @s run summon area_effect_cloud ~ ~ ~ {Particle:{type:"crimson_spore"},Radius:80f,Duration:200,potion_contents:{custom_color:16711680,custom_effects:[{id:"minecraft:instant_damage",amplifier:1,duration:20},{id:"minecraft:blindness",amplifier:1,duration:20}]},CustomName:'{"color":"red","text":"Dreadwrath"}'}
execute if score !Timer herog3 matches 1500..1699 run execute as @e[type=giant,tag=Herobrine] run data merge entity @s {Invulnerable:1b}
execute if score !Timer herog3 matches 0..1499 run execute as @e[type=giant,tag=Herobrine] run data merge entity @s {Invulnerable:0b}
execute if score !Timer herog3 matches 1700.. run scoreboard players reset !Timer herog3
