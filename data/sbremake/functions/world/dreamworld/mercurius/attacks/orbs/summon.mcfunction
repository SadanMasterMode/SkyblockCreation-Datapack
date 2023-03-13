schedule clear sbremake:world/dreamworld/mercurius/attacks/orbs/summon

scoreboard players set @a mobCount 0
execute as @e[tag=borderOrbSummon] run scoreboard players add @a mobCount 1

execute at @e[tag=summon_orb] unless score @p mobCount matches 5.. run summon marker ^ ^ ^4 {Invulnerable:1b,Tags:["summonRNG"],NoGravity:1b}
execute at @e[tag=summon_orb] unless score @p mobCount matches 5.. run summon marker ^ ^ ^-4 {Invulnerable:1b,Tags:["summonRNG"],NoGravity:1b}
execute at @e[tag=summon_orb] unless score @p mobCount matches 5.. run summon marker ^-4 ^ ^ {Invulnerable:1b,Tags:["summonRNG"],NoGravity:1b}
execute at @e[tag=summon_orb] unless score @p mobCount matches 5.. run summon marker ^4 ^ ^ {Invulnerable:1b,Tags:["summonRNG"],NoGravity:1b}

function sbremake:utils/random_number
scoreboard players operation @a rand %= #50 const

tag @e[tag=summonRNG,limit=1,sort=random] add spawning
execute at @e[tag=spawning] if score @p rand matches 0..5 unless score @p mobCount matches 5.. run summon vindicator ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandItems:[{id:"minecraft:wooden_axe",Count:1b}],HandDropChances:[0.0f,0.0f],Health:10,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 6..11 unless score @p mobCount matches 5.. run summon pillager ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandItems:[{id:"minecraft:crossbow",Count:1b}],HandDropChances:[0.0f,0.0f],Health:10,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 12..15 unless score @p mobCount matches 5.. run summon witch ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandDropChances:[0.0f,0.0f],Health:10,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 16..18 unless score @p mobCount matches 5.. run summon evoker ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandDropChances:[0.0f,0.0f],Health:24,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 19 unless score @p mobCount matches 5.. run summon ravager ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandDropChances:[0.0f,0.0f],Health:32,DeathLootTable:"minecraft:empty"}
kill @e[tag=spawning]

function sbremake:utils/random_number
scoreboard players operation @a rand %= #50 const

tag @e[tag=summonRNG,limit=1,sort=random] add spawning
execute at @e[tag=spawning] if score @p rand matches 0..5 unless score @p mobCount matches 5.. run summon vindicator ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandItems:[{id:"minecraft:wooden_axe",Count:1b}],HandDropChances:[0.0f,0.0f],Health:10,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 6..11 unless score @p mobCount matches 5.. run summon pillager ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandItems:[{id:"minecraft:crossbow",Count:1b}],HandDropChances:[0.0f,0.0f],Health:10,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 12..15 unless score @p mobCount matches 5.. run summon witch ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandDropChances:[0.0f,0.0f],Health:10,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 16..18 unless score @p mobCount matches 5.. run summon evoker ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandDropChances:[0.0f,0.0f],Health:24,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 19 unless score @p mobCount matches 5.. run summon ravager ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandDropChances:[0.0f,0.0f],Health:32,DeathLootTable:"minecraft:empty"}
kill @e[tag=spawning]

function sbremake:utils/random_number
scoreboard players operation @a rand %= #50 const

tag @e[tag=summonRNG,limit=1,sort=random] add spawning
execute at @e[tag=spawning] if score @p rand matches 0..5 unless score @p mobCount matches 5.. run summon vindicator ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandItems:[{id:"minecraft:wooden_axe",Count:1b}],HandDropChances:[0.0f,0.0f],Health:10,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 6..11 unless score @p mobCount matches 5.. run summon pillager ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandItems:[{id:"minecraft:crossbow",Count:1b}],HandDropChances:[0.0f,0.0f],Health:10,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 12..15 unless score @p mobCount matches 5.. run summon witch ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandDropChances:[0.0f,0.0f],Health:10,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 16..18 unless score @p mobCount matches 5.. run summon evoker ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandDropChances:[0.0f,0.0f],Health:24,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 19 unless score @p mobCount matches 5.. run summon ravager ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandDropChances:[0.0f,0.0f],Health:32,DeathLootTable:"minecraft:empty"}
kill @e[tag=spawning]

function sbremake:utils/random_number
scoreboard players operation @a rand %= #50 const

tag @e[tag=summonRNG,limit=1,sort=random] add spawning
execute at @e[tag=spawning] if score @p rand matches 0..5 unless score @p mobCount matches 5.. run summon vindicator ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandItems:[{id:"minecraft:wooden_axe",Count:1b}],HandDropChances:[0.0f,0.0f],Health:10,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 6..11 unless score @p mobCount matches 5.. run summon pillager ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandItems:[{id:"minecraft:crossbow",Count:1b}],HandDropChances:[0.0f,0.0f],Health:10,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 12..15 unless score @p mobCount matches 5.. run summon witch ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandDropChances:[0.0f,0.0f],Health:10,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 16..18 unless score @p mobCount matches 5.. run summon evoker ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandDropChances:[0.0f,0.0f],Health:24,DeathLootTable:"minecraft:empty"}
execute at @e[tag=spawning] if score @p rand matches 19 unless score @p mobCount matches 5.. run summon ravager ~ ~ ~ {Tags:["mercuriusSummon","borderOrbSummon"],HandDropChances:[0.0f,0.0f],Health:32,DeathLootTable:"minecraft:empty"}
kill @e[tag=spawning]