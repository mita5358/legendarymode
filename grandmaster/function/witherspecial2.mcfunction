# 集中在凋灵位置生成毒气云，省去每行都要重新定位凋灵的开销
execute as @e[type=wither] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"smoke",Radius:7f,Potion:"minecraft:harming"}
execute as @e[type=wither] at @s run summon minecraft:area_effect_cloud ~ ~1 ~ {Particle:"smoke",Radius:7f,Potion:"minecraft:harming"}
execute as @e[type=wither] at @s run summon minecraft:area_effect_cloud ~ ~-1 ~ {Particle:"smoke",Radius:7f,Potion:"minecraft:harming"}
execute as @e[type=wither] at @s run summon minecraft:area_effect_cloud ~ ~-2 ~ {Particle:"smoke",Radius:7f,Potion:"minecraft:harming"}
execute as @e[type=wither] at @s run summon minecraft:area_effect_cloud ~ ~2 ~ {Particle:"smoke",Radius:7f,Potion:"minecraft:harming"}
execute as @e[type=wither] at @s run summon minecraft:area_effect_cloud ~ ~-3 ~ {Particle:"smoke",Radius:7f,Potion:"minecraft:harming"}
execute as @e[type=wither] at @s run summon minecraft:area_effect_cloud ~ ~-4 ~ {Particle:"smoke",Radius:7f,Potion:"minecraft:harming"}
execute as @e[type=wither] at @s run summon minecraft:area_effect_cloud ~ ~-5 ~ {Particle:"smoke",Radius:7f,Potion:"minecraft:harming"}
execute as @e[type=wither] at @s run summon minecraft:area_effect_cloud ~ ~-6 ~ {Particle:"smoke",Radius:7f,Potion:"minecraft:harming"}
execute as @e[type=wither] at @s run summon minecraft:area_effect_cloud ~ ~-7 ~ {Particle:"smoke",Radius:7f,Potion:"minecraft:harming"}

# 集中处理范围内玩家的雷击
execute as @e[type=wither] at @s as @a[distance=..200] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[type=wither] at @s as @a[distance=..200] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[type=wither] at @s as @a[distance=..200] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[type=wither] at @s as @a[distance=..200] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @e[type=wither] at @s as @a[distance=..200] at @s run summon minecraft:lightning_bolt ~ ~ ~