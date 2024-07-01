execute store result score @a damageTmp run scoreboard players get @a[limit=1] damage
scoreboard players operation @a damageTmp /= #50 const

function sbremake:utils/stats/damage_attribute/l6/l6_0