execute as @e[tag=furyMark] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=furyMark2] at @s run tp @s ~ ~ ~ ~-5 ~
execute as @e[tag=fury] run scoreboard players add @s furyLife 1
execute as @e[tag=furyMark] run scoreboard players add @s furyLife 1
execute as @e[tag=furyMark2] run scoreboard players add @s furyLife 1
scoreboard players add @a furyCD 1

execute if entity @p[nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{display:{Name:'[{"text":"Fire Fury Staff","italic":false,"color":"dark_purple"}]'}}}}] if score @p furyRC matches 1.. unless score @p mana matches ..999 unless score @p furyCD matches 200.. run function sbremake:items/mage/fury/cd
execute if entity @p[nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{display:{Name:'[{"text":"Fire Fury Staff","italic":false,"color":"dark_purple"}]'}}}}] if score @p furyRC matches 1.. if score @p mana matches ..999 unless score @p furyCD matches 200.. run function sbremake:items/mage/fury/cd
execute if entity @p[nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{display:{Name:'[{"text":"Fire Fury Staff","italic":false,"color":"dark_purple"}]'}}}}] if score @p furyRC matches 1.. if score @p mana matches ..999 if score @p furyCD matches 200.. run function sbremake:items/mage/fury/mana
execute if entity @p[nbt={SelectedItem:{id:"minecraft:blaze_rod",tag:{display:{Name:'[{"text":"Fire Fury Staff","italic":false,"color":"dark_purple"}]'}}}}] if score @p furyRC matches 1.. unless score @p mana matches ..999 if score @p furyCD matches 200.. run function sbremake:items/mage/fury/main

execute as @e[tag=fury,scores={furyLife=0..5}] at @s run tp @s ^ ^ ^-0.1
execute as @e[tag=fury,scores={furyLife=6..15}] at @s run tp @s ^ ^ ^-0.35
execute as @e[tag=fury,scores={furyLife=16..20}] at @s run tp @s ^ ^ ^-0.5
execute as @e[tag=fury,scores={furyLife=21..}] at @s run tp @s ^ ^ ^-0.8

execute as @e[tag=furyMark] at @s run function sbremake:items/mage/fury/dance

execute if entity @e[tag=furyMark] run schedule function sbremake:items/mage/fury/delay 8t append
execute at @e[tag=furyMark] as @e[distance=..7,tag=!spectator,type=!#sbremake:never-detect] run data merge entity @s {HasVisualFire:1b}

execute if entity @e[tag=furyMark] run schedule function sbremake:items/mage/fury/dmg 5t append

execute at @e[tag=fury,scores={furyLife=0..15}] run particle soul_fire_flame ~ ~ ~ 0 0 0 0 10 normal
execute at @e[tag=fury,scores={furyLife=15..}] run particle flame ~ ~ ~ 0 0 0 0 10 normal
execute as @e[tag=fury] at @s unless block ~ ~ ~ air unless score @s furyLife matches 0..15 run function sbremake:items/mage/fury/final
execute as @e[tag=fury] at @s unless block ~ ~ ~ air if score @s furyLife matches 0..15 run function sbremake:items/mage/fury/die
execute as @e[tag=fury,scores={furyLife=40..}] at @s run function sbremake:items/mage/fury/final
execute at @e[tag=furyMark,scores={furyLife=200..}] as @e[tag=!spectator,nbt={HasVisualFire:1b}] run data merge entity @s {HasVisualFire:0b}
kill @e[scores={furyLife=200..}]
scoreboard players reset @a furyRC