scoreboard players operation @s solMaxDmg /= @s const10
execute store result score @s dmgDealt2 run scoreboard players get @s dmgDealt
scoreboard players operation @s dmgDealt2 /= @s const10
execute if score @s dmgDealt >= @s solMaxDmg2 store result score @s solMaxDmg2 run scoreboard players get @s dmgDealt2
execute if score @s solMaxDmg >= @s solMaxDmg2 store result score @s solMaxDmg2 run scoreboard players get @s solMaxDmg

execute store result score @s solMaxDmg3 run scoreboard players get @s solMaxDmg2
scoreboard players operation @s solMaxDmg3 *= @s const3

scoreboard players set @s solMaxDmg 0

schedule clear sbremake:utils/sol_max_dmg_cancel
schedule function sbremake:utils/sol_max_dmg_cancel 60t append