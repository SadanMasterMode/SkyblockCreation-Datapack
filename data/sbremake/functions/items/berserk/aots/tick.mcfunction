execute unless score @a[limit=1] aotsRotate matches 359 run scoreboard players add @a[limit=1] aotsRotate 20
execute if score @a[limit=1] aotsRotate matches 359.. run scoreboard players set @a[limit=1] aotsRotate 1
execute as @e[tag=aots] store result entity @s Pose.RightArm[0] float 1 run scoreboard players get @a[limit=1] aotsRotate

execute as @e[tag=aots,type=area_effect_cloud] store result entity @s Air short 1 run time query gametime

scoreboard players add @a[limit=1] aotsCD 1
execute as @e[tag=aots] run scoreboard players add @s life 1
execute as @e[tag=aots,scores={life=60..}] run kill @s

execute as @a[limit=1,scores={aotsRC=1..,aotsCD=20..},nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b,tag:{display:{Name:'[{"text":"Axe of the Shredded","italic":false,"color":"gold"}]'}}}}] at @s run function sbremake:items/berserk/aots/main
scoreboard players reset @a[limit=1] aotsRC

execute as @e[tag=aots,type=area_effect_cloud] at @s run tp @s ^ ^ ^0.5
scoreboard players remove @e[scores={aotsHT=1..}] aotsHT 1

execute at @e[tag=aots,tag=stage-1] positioned ^-0.5 ^ ^ as @e[distance=..1,tag=!spectator,type=!#sbremake:never-detect] unless score @s aotsHT matches 1.. run function sbremake:items/berserk/aots/stage1dmg
execute at @e[tag=aots,tag=stage-2] positioned ^-0.5 ^ ^ as @e[distance=..1,tag=!spectator,type=!#sbremake:never-detect] unless score @s aotsHT matches 1.. run function sbremake:items/berserk/aots/stage2dmg
execute at @e[tag=aots,tag=stage-3] positioned ^-0.5 ^ ^ as @e[distance=..1,tag=!spectator,type=!#sbremake:never-detect] unless score @s aotsHT matches 1.. run function sbremake:items/berserk/aots/stage3dmg
execute at @e[tag=aots,tag=stage-4] positioned ^-0.5 ^ ^ as @e[distance=..1,tag=!spectator,type=!#sbremake:never-detect] unless score @s aotsHT matches 1.. run function sbremake:items/berserk/aots/stage4dmg