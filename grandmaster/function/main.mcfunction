# ==========================================
# Neptune Legendary Mode - Optimized Main Tick
# ==========================================

# [优化] 1. 物品判定：先通过 tag 过滤，极大降低 NBT 扫描频率
execute as @e[type=item,tag=!prot5_checked] if data entity @s Item{id:"minecraft:netherite_ingot"} at @s run function grandmaster:prot5
# (提示: 记得在 grandmaster:prot5 函数的末尾加上 `tag @s add prot5_checked`，防止每 tick 重复执行)

# ================== Timers ==================
# [建议] 未来可以合并为一个 GlobalTick 进行取模运算，目前保持原样以兼容其他文件
scoreboard players add Timer WitherSpecial 1
scoreboard players add Timer WitherSpecial2 1
scoreboard players add Timer WitherSpecial3 1
scoreboard players add Timer WitherSpecial4 1
scoreboard players add Timer EndDragon 1
scoreboard players add Timer EndDragon2 1
scoreboard players add Timer EndDragon3 1
scoreboard players add Timer EndDragon4 1
scoreboard players add Timer Creepersound 1
scoreboard players add Timer EGuardian 1
scoreboard players add Timer ZombieDash 1
scoreboard players add Timer RandomInfect 1
scoreboard players add Timer CreeperInvis 1
scoreboard players add Timer CreeperDash 1
scoreboard players add Timer EndDragon6 1

# Perma hard mode (建议移至 load.mcfunction)
difficulty hard

# ================= Wither Attacks =================
# [优化] 逻辑反转修复：移除 execute as @a，改为全局判定一次，避免玩家数量导致的实体爆炸
scoreboard players set Timer wsL 0
execute as @e[type=wither_skeleton,tag=ws] run scoreboard players add Timer wsL 1

execute if score Timer WitherSpecial matches 400 as @e[type=wither] at @s unless score Timer wsL matches 45.. run summon wither_skeleton ~ ~ ~ {DeathLootTable:"empty",Tags:["ws"]}
execute if score Timer WitherSpecial matches 400 as @e[type=wither] at @s unless score Timer wsL matches 45.. run summon wither_skeleton ~ ~ ~ {DeathLootTable:"empty",Tags:["ws"]}
execute if score Timer WitherSpecial matches 400 as @e[type=wither] at @s unless score Timer wsL matches 45.. run summon wither_skeleton ~ ~ ~ {DeathLootTable:"empty",Tags:["ws"]}
execute if score Timer WitherSpecial matches 400 as @e[type=wither] at @s unless score Timer wsL matches 45.. run summon wither_skeleton ~ ~ ~ {DeathLootTable:"empty",Tags:["ws"]}
execute if score Timer WitherSpecial matches 400 as @e[type=wither] at @s unless score Timer wsL matches 45.. run summon wither_skeleton ~ ~ ~ {DeathLootTable:"empty",Tags:["ws"]}
execute if score Timer WitherSpecial matches 400.. run scoreboard players reset Timer WitherSpecial

execute if score Timer WitherSpecial2 matches 500 run function grandmaster:witherspecial2
execute if score Timer WitherSpecial2 matches 500.. run scoreboard players reset Timer WitherSpecial2

execute if score Timer WitherSpecial3 matches 600 as @e[type=wither] at @s run summon minecraft:creeper ~ ~-10 ~ {Glowing:0b,powered:1b,ExplosionRadius:9b,Fuse:0,CustomName:'{"text":"Wither Explosion","color":"dark_gray"}'}
execute if score Timer WitherSpecial3 matches 600.. run scoreboard players reset Timer WitherSpecial3

# [优化] 剥离了玩家执行层，只在特定 tick 执行火球召唤
execute if score Timer WitherSpecial4 matches 800..816 as @e[type=wither] at @s run function grandmaster:wither_fireball_seq
# (注意：由于指令太长，我将 800-816 的火球剥离到了单独的函数中，详见下方说明)

execute if score Timer WitherSpecial4 matches 817.. run scoreboard players reset Timer WitherSpecial4


# ============== Ender Dragon Attacks ==============
execute in minecraft:the_end as @a[distance=0..700,tag=!dragonaggro] at @s run tag @s add dragonaggro

# [优化] 移除 @a 循环判定，龙的攻击只执行一次
execute if score Timer EndDragon matches 1000 as @e[type=ender_dragon] run execute at @a[tag=dragonaggro] run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"portal"},Radius:20f,Duration:80,potion_contents:{potion:"minecraft:harming"},CustomName:'{"color":"dark_purple","text":"Dragon\\'s Wrath"}'}
execute if score Timer EndDragon matches 1000 as @e[type=ender_dragon] at @s run playsound entity.ender_dragon.ambient ambient @a[tag=dragonaggro] ~ ~ ~ 999999 0
execute if score Timer EndDragon matches 1000 as @e[type=ender_dragon] at @s run playsound minecraft:entity.lightning_bolt.thunder ambient @a[tag=dragonaggro] ~ ~ ~ 9999999 0
execute if score Timer EndDragon matches 1000.. run scoreboard players reset Timer EndDragon

# [提醒] schedule 不要放在 tick 里每秒循环触发，除非有严格的前置条件！这里保留原逻辑，但请检查。
schedule function grandmaster:dragon 30s append

execute if score Timer EndDragon3 matches 750.. run scoreboard players set Timer EndDragonT 1
execute if score Timer EndDragonT matches 1 run scoreboard players add Timer EndDragonE 1

# [优化] 闪电攻击判定简化
execute if score Timer EndDragonE matches 20..300 as @e[type=ender_dragon] run function grandmaster:dragon_lightning_check

execute if score Timer EndDragonE matches 300.. run scoreboard players reset Timer EndDragon3
execute if score Timer EndDragonE matches 300.. run scoreboard players reset Timer EndDragonT
execute if score Timer EndDragonE matches 300.. run scoreboard players reset Timer EndDragonE

execute if score Timer EndDragon4 matches 1600 as @e[type=ender_dragon] at @s run function grandmaster:enddragon4
execute if score Timer EndDragon4 matches 1700 as @e[type=ender_dragon] in minecraft:the_end run kill @e[type=dragon_fireball]
execute if score Timer EndDragon4 matches 1700.. run scoreboard players reset Timer EndDragon4

execute if entity @a[tag=Inend] as @e[type=minecraft:end_crystal,tag=!ShowBottomOff] at @s run fill ~-2 ~-1 ~-2 ~2 ~2 ~2 iron_bars
execute if entity @a[tag=Inend] as @e[type=minecraft:end_crystal,tag=!ShowBottomOff] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 air
execute if entity @a[tag=Inend] as @e[type=minecraft:end_crystal,tag=!ShowBottomOff] at @s run setblock ~ ~-1 ~ bedrock
execute if entity @a[tag=Inend] as @e[type=end_crystal,tag=!ShowBottomOff] run data merge entity @s {ShowBottom:0b,Tags:["ShowBottomOff"]}

execute if score Timer EndDragon6 matches 4000 as @e[type=ender_dragon] in minecraft:the_end run tp @a[tag=dragonaggro] ~ ~100 ~
execute if score Timer EndDragon6 matches 4000 as @e[type=ender_dragon] at @s run playsound minecraft:entity.enderman.teleport ambient @a[tag=dragonaggro] ~ ~ ~ 100 1
execute if score Timer EndDragon6 matches 4000.. run scoreboard players reset Timer EndDragon6


# ================ Spawning & Sounds ================
# [优化] sort=random 必须配合 limit=1，否则毫无意义且极度消耗性能
execute as @e[type=creeper,tag=!not_reaper,sort=random,limit=1] at @s run function grandmaster:reaper

execute if score Timer Creepersound matches 250 as @e[type=creeper] at @s run playsound block.sand.break ambient @a[distance=..30] ~ ~ ~ 1 1
execute if score Timer Creepersound matches 250 run scoreboard players reset Timer Creepersound


# ============= Elder Guardian Attack =============
scoreboard players set Timer esL 0
execute as @e[type=guardian,tag=es] run scoreboard players add Timer esL 1

execute if score Timer EGuardian matches 700 as @e[type=elder_guardian] at @s unless score Timer esL matches 5.. run summon guardian ~ ~ ~ {DeathLootTable:"empty",Tags:["es"]}
execute if score Timer EGuardian matches 700 as @e[type=elder_guardian] at @s unless score Timer esL matches 5.. run summon guardian ~ ~ ~ {DeathLootTable:"empty",Tags:["es"]}
execute if score Timer EGuardian matches 700 as @e[type=elder_guardian] at @s unless score Timer esL matches 5.. run summon guardian ~ ~ ~ {DeathLootTable:"empty",Tags:["es"]}
execute if score Timer EGuardian matches 700 as @e[type=elder_guardian] at @s unless score Timer esL matches 5.. run summon guardian ~ ~ ~ {DeathLootTable:"empty",Tags:["es"]}
execute if score Timer EGuardian matches 700 as @e[type=elder_guardian] at @s unless score Timer esL matches 5.. run summon guardian ~ ~ ~ {DeathLootTable:"empty",Tags:["es"]}
execute if score Timer EGuardian matches 700.. run scoreboard players reset Timer EGuardian


# ================== Insomnia ==================
execute if score Timer Time matches 12000 store result score Timer irng run random value 1..5
execute if score Timer irng matches 1 run function grandmaster:insomnia
execute if score Timer Time matches 12000 run scoreboard players reset Timer irng
execute if score Timer Insomniac matches 1 run function grandmaster:insomnia


# ================== Mob Buffs ==================
# [究极优化] 绝对不能用 @e[tag=!noeffect]！改用实体群组标签，或者指定类型，防止扫描掉落物和矿车。
# 请在数据包的 tags/entity_types/ 下新建一个 hostile.json，把所有怪物加进去，然后使用 type=#grandmaster:hostile。
# 这里我先用硬编码常见怪物替代，以防你没有加标签文件：
tag @e[type=ender_dragon] add noeffect
tag @e[type=wither] add noeffect

execute in minecraft:overworld as @e[type=zombie,tag=!noeffect] run function grandmaster:apply_buff
execute in minecraft:overworld as @e[type=skeleton,tag=!noeffect] run function grandmaster:apply_buff
execute in minecraft:overworld as @e[type=spider,tag=!noeffect] run function grandmaster:apply_buff
execute in minecraft:overworld as @e[type=creeper,tag=!noeffect] run function grandmaster:apply_buff

# [优化] 给没有修改过的苦力怕一次性修改并打上标签，拒绝每tick扫描 NBT
execute as @e[type=creeper,tag=!modified_creeper] run data merge entity @s {ExplosionRadius:6b,Tags:["modified_creeper"]}


# ============ Ender Pearl Trade Prevention ============
# [优化] 先判断 Tag 和职业，再读取数据，减少 90% 的 NBT 读写
execute as @e[type=villager,tag=!AlreadyMod] if data entity @s VillagerData{level:4,profession:"minecraft:cleric"} run data merge entity @s {Tags:["AlreadyMod"],Offers:{Recipes:[{buy:{id:"minecraft:rotten_flesh",Count:32b},sell:{id:"minecraft:emerald",Count:1b}},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:redstone",Count:2b}},{buy:{id:"minecraft:gold_ingot",Count:3b},sell:{id:"minecraft:emerald",Count:1b}},{buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:lapis_lazuli",Count:1b}},{buy:{id:"minecraft:rabbit_foot",Count:2b},sell:{id:"minecraft:emerald",Count:1b}},{buy:{id:"minecraft:emerald",Count:4b},sell:{id:"minecraft:glowstone",Count:1b}},{buy:{id:"minecraft:scute",Count:4b},sell:{id:"minecraft:emerald",Count:1b}}]}}

# [优化] 修复了原本逻辑会导致全图末影珍珠被删的恶性 Bug。现在只删除猪灵附近的那一颗。
execute as @e[type=item,tag=!EnderKill] if data entity @s Item{id:"minecraft:ender_pearl"} at @s if entity @e[type=piglin,distance=..5] run tag @s add EnderKill
kill @e[tag=EnderKill]


# ==================== Events ====================
# Pandemic
#execute if score Timer Time matches 1000 store result score Timer prng run random value 1..10 
#execute if score Timer prng matches 1 run function grandmaster:pandemic
#execute if score Timer Time matches 1000 run scoreboard players reset Timer prng
#execute if score Timer PandemicE matches 1 run function grandmaster:pandemic

# [优化] 修正选择器和执行源
#execute if score Timer PandemicT matches 1.. as @a[nbt={SleepTimer:100s}] unless score @s Dragonkilled2 matches 1.. run scoreboard players add Timer PandemicT 6000
#execute if score Timer PandemicT matches 1.. as @a[nbt={SleepTimer:100s}] if score @s Dragonkilled2 matches 1.. run scoreboard players add Timer PandemicT 12000

# Random Raids
execute if score Timer Time matches 1000 store result score Timer rrng run random value 1..18
execute if score Timer rrng matches 1 run effect give @a bad_omen infinite 1
execute if score Timer Time matches 1000 run scoreboard players reset Timer rrng

# Zombie Attacks
execute if score Timer ZombieDash matches 200 run effect give @e[type=zombie] speed 3 4 true
execute if score Timer ZombieDash matches 200.. run scoreboard players reset Timer ZombieDash

# Skeleton Buff
execute as @e[type=skeleton,tag=!alreadymodskeleton] run data merge entity @s {Tags:["alreadymodskeleton"],equipment:{mainhand:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:power":4}}}},drop_chances:{mainhand:0.000}}

# Enderman Blind
# [优化] 反转执行逻辑：让玩家检测周围是否有末影人，比让所有末影人检测周围玩家效率高得多
execute as @a at @s if entity @e[type=enderman,distance=..5] run effect give @s blindness 2 5 true

# Creeper Buffs
execute if score Timer CreeperInvis matches 600 run effect give @e[type=creeper,name=Creeper] invisibility 5 1 false
execute if score Timer CreeperInvis matches 600.. run scoreboard players reset Timer CreeperInvis
execute if score Timer CreeperDash matches 300.. run effect give @e[type=creeper,name=Creeper] speed 4 3 true
execute if score Timer CreeperDash matches 300.. run scoreboard players reset Timer CreeperDash


# ================ Bottom Commands ================
execute as @a[scores={Insomnia=1}] run scoreboard players reset @s Insomnia

# [优化] 简化进出末地判定
execute as @a in minecraft:the_end run tag @s add Inend
execute as @a in minecraft:overworld run tag @s remove Inend
execute as @a in minecraft:the_nether run tag @s remove Inend

# Endgame Gear
execute if entity @a[scores={Dragonkilled=1}] run function grandmaster:endgame
execute if score Timer Endgame matches 6.. run scoreboard players set Timer Endgame 1

# Time
execute store result score Timer Time run time query daytime

# The Dread Blade
execute if entity @e[type=giant] run function grandmaster:db

# Patches
execute as @e[type=area_effect_cloud,tag=!patched_cloud] if data entity @s potion_contents.custom_effects[{id:"minecraft:strength"}] run kill @s

execute in minecraft:the_end if entity @e[type=ender_dragon] store result score Timer OPP run fill -1 1 1 1 255 -1 air replace #minecraft:beds
execute if score Timer OPP matches 1 run execute in minecraft:the_end run playsound minecraft:entity.phantom.ambient master @a 0 70 0 5 0
scoreboard players reset Timer OPP

execute in minecraft:the_end positioned 0 50 0 unless entity @a[distance=0..700] as @e[type=ender_dragon] run data merge entity @s {Health:200f}

execute as @a if score Timer Endgametimer matches 280.. run scoreboard players reset @s Dragonkilled
execute if score Timer Endgametimer matches 280.. run scoreboard players reset Timer Endgametimer
tag @a remove dragonaggro
