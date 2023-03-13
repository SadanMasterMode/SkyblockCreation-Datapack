tag @s[tag=!digAnim] add digAnim
scoreboard players add @s dhDigAnim 1

data merge entity @s {Pose:{LeftArm:[0f,0f,270f],RightArm:[0f,0f,90f],Head:[0f,0f,0f]}}

execute if score @p decayedHuskDigout matches 81 run playsound entity.generic.explode master @p ~ ~ ~ 1 0 1

execute if score @p decayedHuskDigout matches 81 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 82 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 83 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 84 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 85 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 86 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 87 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 88 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 89 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 90 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 91 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 92 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 93 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 94 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 95 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 96 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 97 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 98 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 99 run tp @s ~ ~0.5 ~
execute if score @p decayedHuskDigout matches 100 run tp @s ~ ~0.5 ~

execute if score @p decayedHuskDigout matches 101 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 102 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 103 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 104 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 105 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 106 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 107 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 108 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 109 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 110 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 111 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 112 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 113 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 114 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 115 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 116 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 117 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 118 run tp @s ~ ~-0.5 ~
execute if score @p decayedHuskDigout matches 119 run tp @s ~ ~-0.5 ~

execute if score @p decayedHuskDigout matches 120 run tag @s remove digAnim
execute if score @p decayedHuskDigout matches 120 run scoreboard players add @s decayedHuskDigout 1