# Main/Mana
execute as @a[scores={hydraRC=1..,mana=..49,manaWarn=0},nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{display:{Name:'[{"text":"Aspect of the Hydra","italic":false,"color":"dark_purple"}]'}}}}] at @s run function sbremake:items/berserk/hydra/mana
execute as @a[scores={hydraRC=1..,mana=50..},nbt={SelectedItem:{id:"minecraft:golden_sword",tag:{display:{Name:'[{"text":"Aspect of the Hydra","italic":false,"color":"dark_purple"}]'}}}}] at @s run function sbremake:items/berserk/hydra/main
execute as @a[scores={hydraRC=1..}] run scoreboard players reset @s hydraRC

# Misc (dont move pls)
execute if score $20808 cw_particleplot matches 20.. if score $9983 cw_particleplot matches 20.. if score $18030 cw_particleplot matches 20.. run function sbremake:items/berserk/hydra/particles_1/reset
execute as @a[tag=hydraAnim,scores={manaWarn=1}] run title @s actionbar [{"score":{"name":"@s","objective":"healthVis"},"color":"red"},{"text":"/100❤ ","color":"red"},{"text":"-50  Mana (","color":"aqua"},{"text":"Vortex Transmission","color":"gold"},{"text":") ","color":"aqua"},{"score":{"name":"@s","objective":"mana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"maxMana"},"color":"aqua"},{"text":"✎ ","color":"aqua"}]
execute at @e[tag=hydraPart] run tag @e[distance=2..] remove hydraDmg
execute unless entity @e[tag=hydraPart] run tag @e remove hydraDmg
execute at @e[tag=hydraPart] run tag @e[distance=..2,tag=!spectator] add hydraDmg
execute as @e[tag=hydraDmg,tag=!hydraDmged] run function sbremake:items/berserk/hydra/dmg

# Central Particle Line
execute as @e[tag=hydraPart] run scoreboard players add @s hydraLife 1
execute as @e[tag=hydraPart] at @s run particle lava ~ ~ ~ 0 0 0 0 1 normal
execute as @e[tag=hydraPart] at @s run particle flame ~ ~ ~ 0 0 0 0 1 normal
execute as @e[tag=hydraPart,scores={hydraLife=20..}] run kill @s
execute as @e[tag=hydraPart] at @s run tp @s ^ ^ ^0.5
execute as @e[tag=hydraPart] at @s unless block ~ ~ ~ #sbremake:items/air run kill @s

# Spiral Animation (ty to cloud's gen)
execute as @a[tag=hydraAnim] at @e[tag=hydraMark4] facing entity @e[tag=hydraMark1,limit=1] feet positioned ^ ^0.5 ^1 if entity @e[tag=hydraPart1] run function sbremake:items/berserk/hydra/particles_1/animate
execute as @a[tag=hydraAnim] at @e[tag=hydraMark4] facing entity @e[tag=hydraMark2,limit=1] feet positioned ^1.5 ^0.5 ^1 if entity @e[tag=hydraPart2] run function sbremake:items/berserk/hydra/particles_2/animate
execute as @a[tag=hydraAnim] at @e[tag=hydraMark4] facing entity @e[tag=hydraMark3,limit=1] feet positioned ^-1.5 ^0.25 ^1 if entity @e[tag=hydraPart3] run function sbremake:items/berserk/hydra/particles_3/animate
execute if score $20808 cw_particleplot matches 0 if score $9983 cw_particleplot matches 0 if score $18030 cw_particleplot matches 0 run function sbremake:items/berserk/hydra/reset_tag
execute as @a[tag=hydraAnim] unless entity @e[tag=hydraPart] run function sbremake:items/berserk/hydra/particles_1/reset
execute as @a[tag=hydraAnim] unless entity @e[tag=hydraPart] run function sbremake:items/berserk/hydra/reset_tag
execute if score $20808 cw_particleplot matches 0 if score $9983 cw_particleplot matches 0 if score $18030 cw_particleplot matches 0 run function sbremake:items/berserk/hydra/particles_1/reset