scoreboard players reset @s cd
function sbremake:utils/random_number
scoreboard players operation @a rand %= #9 const

execute at @e[tag=mercurius] if entity @p[distance=15..] run function sbremake:world/dreamworld/mercurius/attacks/fang_line

execute if score @p rand matches 0..2 at @e[tag=mercurius] unless entity @p[distance=15..] run function sbremake:world/dreamworld/mercurius/attacks/vex_swarm
execute if score @p rand matches 3..5 at @e[tag=mercurius] unless entity @p[distance=15..] run function sbremake:world/dreamworld/mercurius/attacks/summon_rally
execute if score @p rand matches 6..8 at @e[tag=mercurius] unless entity @p[distance=15..] if entity @e[tag=mercuriusSummon,type=!evoker_fangs,type=!evoker,limit=1] unless entity @e[tag=mercuriusHeal,limit=1] run function sbremake:world/dreamworld/mercurius/attacks/summon_heal
