scoreboard players set @a witherbornCD 0

# Set ability usage
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '{"text":"A new Witherborn has spawned!","color":"dark_gray"}'

# Spawn witherborn 2
execute if entity fccff781-547f-498c-b424-1297596e1d57 at @a run summon area_effect_cloud ~ ~-3.5 ~ {Passengers:[{id:"minecraft:wither",Invul:1000,NoAI:1b,CustomName:'[{"text":"Dinnerbone"}]',Tags:["witherborn","mob-2","spectator"],Silent:1b,Invulnerable:1b,NoGravity:1b,CustomNameVisible:0b,DeathLootTable:"minecraft:empty"}],Tags:["witherborn","mob-2","spectator"],NoGravity:1b,Invulnerable:1b,Radius:0,Duration:2147483647,UUID:[I;-454873076,-752728552,-1596134791,-668129212]}
## e4e3300c-d322-4618-a0dc-ea79d82d2844
# Spawn witherborn 1
execute unless entity fccff781-547f-498c-b424-1297596e1d57 at @a run summon area_effect_cloud ~ ~-3.5 ~ {Passengers:[{id:"minecraft:wither",Invul:1000,NoAI:1b,CustomName:'[{"text":"Dinnerbone"}]',Tags:["witherborn","mob-1","spectator"],Silent:1b,Invulnerable:1b,NoGravity:1b,CustomNameVisible:0b,DeathLootTable:"minecraft:empty"}],Tags:["witherborn","mob-1","spectator"],NoGravity:1b,Invulnerable:1b,Radius:0,Duration:2147483647,UUID:[I;-53479551,1417628044,-1272704361,1500388695]}
## fccff781-547f-498c-b424-1297596e1d57

# Witherborn teams (1, 2)
execute as e4e3300c-d322-4618-a0dc-ea79d82d2844 on passengers run team join noName @s
execute as e4e3300c-d322-4618-a0dc-ea79d82d2844 run team join noName @s
execute as fccff781-547f-498c-b424-1297596e1d57 on passengers run team join noName @s
execute as fccff781-547f-498c-b424-1297596e1d57 run team join noName @s

scoreboard players add @a witherbornCount 1