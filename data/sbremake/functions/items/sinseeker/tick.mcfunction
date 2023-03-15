execute at 487bdc79-7a38-4017-869d-f3f0f61a6adc run particle minecraft:dust 1 1 1 2 ~ ~ ~ 0.1 0.1 0.1 0.01 0 normal

execute if entity @a[scores={sinseekerRC=1..,sneak=1..},nbt={SelectedItem:{id:"minecraft:golden_hoe",Count:1b,tag:{display:{Name:'[{"text":"Sin","italic":false,"color":"dark_red"},{"text":"seeker Scythe","color":"dark_purple"}]'}}}}] unless entity 487bdc79-7a38-4017-869d-f3f0f61a6adc run tellraw @a {"text":"You do not have a marker set!","color":"red"}

execute as @a[scores={sinseekerRC=1..,sneak=1..},nbt={SelectedItem:{id:"minecraft:golden_hoe",Count:1b,tag:{display:{Name:'[{"text":"Sin","italic":false,"color":"dark_red"},{"text":"seeker Scythe","color":"dark_purple"}]'}}}}] if entity 487bdc79-7a38-4017-869d-f3f0f61a6adc run function sbremake:items/sinseeker/main

execute as @a[limit=1,nbt={SelectedItem:{id:"minecraft:golden_hoe",Count:1b,tag:{display:{Name:'[{"text":"Sin","italic":false,"color":"dark_red"},{"text":"seeker Scythe","color":"dark_purple"}]'}}}},scores={sinseekerRC=1..}] at @s unless entity @s[scores={sneak=1..}] if entity 487bdc79-7a38-4017-869d-f3f0f61a6adc run function sbremake:items/sinseeker/sinmark2

execute as @a[scores={sinseekerRC=1..},nbt={SelectedItem:{id:"minecraft:golden_hoe",Count:1b,tag:{display:{Name:'[{"text":"Sin","italic":false,"color":"dark_red"},{"text":"seeker Scythe","color":"dark_purple"}]'}}}}] unless entity @s[scores={sneak=1..}] unless entity 487bdc79-7a38-4017-869d-f3f0f61a6adc run function sbremake:items/sinseeker/sinmark

scoreboard players reset @a[limit=1] sinseekerRC