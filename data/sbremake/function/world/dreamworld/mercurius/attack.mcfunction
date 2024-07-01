scoreboard players reset @s cd
function sbremake:utils/random_number
scoreboard players operation @a rand %= #26 const

# Fang Attack
execute at e39dc353-0355-4517-b803-00dee36ca116 if entity @a[distance=15..,limit=1] run function sbremake:world/dreamworld/mercurius/attacks/fang_line

# Vex Attack
execute if score @a[limit=1] rand matches 0..2 at e39dc353-0355-4517-b803-00dee36ca116 unless entity @a[distance=15..,limit=1] run function sbremake:world/dreamworld/mercurius/attacks/vex_swarm

# Rally Attack
execute if score @a[limit=1] rand matches 3..5 at e39dc353-0355-4517-b803-00dee36ca116 unless entity @a[distance=15..,limit=1] run function sbremake:world/dreamworld/mercurius/attacks/summon_rally

# Summon Heal
execute if score @a[limit=1] rand matches 6..8 at e39dc353-0355-4517-b803-00dee36ca116 unless entity @a[distance=15..,limit=1] if entity @e[tag=mercuriusSummon,type=!evoker_fangs,type=!evoker,limit=1,type=!vex] unless entity @e[tag=mercuriusHeal,limit=1] run function sbremake:world/dreamworld/mercurius/attacks/summon_heal
## Damage (no summon)
execute if score @a[limit=1] rand matches 6..8 at e39dc353-0355-4517-b803-00dee36ca116 unless entity @a[distance=15..,limit=1] unless entity @e[tag=mercuriusSummon,type=!evoker_fangs,type=!evoker,limit=1,type=!vex] run function sbremake:world/dreamworld/mercurius/attacks/damage
## Damage (heal active)
execute if score @a[limit=1] rand matches 6..8 at e39dc353-0355-4517-b803-00dee36ca116 unless entity @a[distance=15..,limit=1] if entity @e[tag=mercuriusHeal,limit=1] run function sbremake:world/dreamworld/mercurius/attacks/damage

# Totem Attack
execute if score @a[limit=1] rand matches 9..11 at e39dc353-0355-4517-b803-00dee36ca116 unless entity @a[distance=15..,limit=1] run function sbremake:world/dreamworld/mercurius/attacks/totem/summon_totem

# Crush Attack
execute if score @a[limit=1] rand matches 12..14 at e39dc353-0355-4517-b803-00dee36ca116 as @a[distance=..15,limit=1] at @s run function sbremake:world/dreamworld/mercurius/attacks/crush

# Bomb Attack
execute if score @a[limit=1] rand matches 15..19 at e39dc353-0355-4517-b803-00dee36ca116 unless entity @a[distance=15..,limit=1] run function sbremake:world/dreamworld/mercurius/attacks/bombs/main

# Teleport
execute if score @a[limit=1] rand matches 20..22 at e39dc353-0355-4517-b803-00dee36ca116 unless entity @a[distance=15..,limit=1] run function sbremake:world/dreamworld/mercurius/attacks/teleport

# Damage
execute if score @a[limit=1] rand matches 23..25 at e39dc353-0355-4517-b803-00dee36ca116 unless entity @a[distance=15..,limit=1] run function sbremake:world/dreamworld/mercurius/attacks/damage