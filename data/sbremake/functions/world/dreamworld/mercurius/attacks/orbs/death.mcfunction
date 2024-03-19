scoreboard players reset @a mobCount
execute as @e[tag=borderOrb] run scoreboard players add @a mobCount 1
scoreboard players remove @a mobCount 1

execute if score @p mobCount matches 1.. run data modify block 3000000 1 3000000 front_text.messages[0] set value '[{"text": "There are still ","color": "green"},{"score":{"name": "@p","objective": "mobCount"},"color": "greem"},{"text": " orb(s) left!","color": "green"}]'
execute if score @p mobCount matches 0 run data modify block 3000000 1 3000000 front_text.messages[0] set value '{"text": "There are no orbs left, go after the emperor!","color": "green"}'
data modify storage sbremake:world BorderOrb.count set from block 3000000 1 3000000 front_text.messages[0]

# General Death Message
execute if entity @s[tag=summon_orb] run data modify storage sbremake:world BorderOrb.type set value '[{"text":"Summoning Orb","color":"blue"}]'
execute if entity @s[tag=damage_orb] run data modify storage sbremake:world BorderOrb.type set value '[{"text":"Damaging Orb","color":"red"}]'
execute if entity @s[tag=stalker_orb] run data modify storage sbremake:world BorderOrb.type set value '[{"text":"Stalker Orb","color":"dark_purple"}]'
execute if entity @s[tag=crying_orb] run data modify storage sbremake:world BorderOrb.type set value '[{"text":"Crying Orb","color":"aqua"}]'

tellraw @a [{"text": "You killed the ","color": "green"},{"nbt": "BorderOrb.type","storage":"sbremake:world","interpret": true},{"text": "! ","color": "green"},{"nbt":"BorderOrb.count","storage":"sbremake:world","interpret": true}]

function sbremake:utils/random_number
scoreboard players operation @a rand %= #5 const

execute if score @p rand matches 0 run tellraw @a [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Grr... not my ","color": "white"},{"nbt":"BorderOrb.type","storage":"sbremake:world","interpret": true},{"text": "!","color": "white"}]

execute if score @p rand matches 1 run tellraw @a [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": That ","color": "white"},{"nbt":"BorderOrb.type","storage":"sbremake:world","interpret": true},{"text":" was very expensive!","color": "white"}]

execute if score @p rand matches 2 run tellraw @a [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": My ","color": "white"},{"nbt":"BorderOrb.type","storage":"sbremake:world","interpret": true},{"text":"! That was my favourite!","color": "white"}]

execute if score @p rand matches 3 run tellraw @a [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": I hated that ","color": "white"},{"nbt":"BorderOrb.type","storage":"sbremake:world","interpret": true},{"text":" anyway!","color": "white"}]

execute if score @p rand matches 4 run tellraw @a [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Poor poor ","color": "white"},{"nbt":"BorderOrb.type","storage":"sbremake:world","interpret": true},{"text":", what did they do to you!!","color": "white"}]

execute if score @p rand matches 5 run tellraw @a [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": You destroyed my ","color": "white"},{"nbt":"BorderOrb.type","storage":"sbremake:world","interpret": true},{"text":", this is a catastrophe!","color": "white"}]

execute if entity @s[tag=summon_orb] run kill @e[tag=summonRNG]
execute if entity @s[tag=summon_orb] run kill @e[tag=borderOrbSummon]
execute if entity @s[tag=damage_orb] run effect clear @a nausea
execute if entity @s[tag=stalker_orb] run effect clear @a slowness

kill @s