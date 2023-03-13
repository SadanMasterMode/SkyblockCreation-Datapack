execute at @e[tag=witherborn,tag=mob1] run particle explosion ~ ~3.5 ~ 0 0 0 0 1 normal
kill @e[tag=witherbornMarked]
tellraw @a [{"text": "Your Witherborn hit ","color": "gray"},{"text": "1","color": "red"},{"text": " enemy for "},{"text": "2,000,000","color": "red"},{"text": " damage.","color": "gray"}]
tp @e[tag=witherborn,tag=mob1] ~ ~-100 ~
kill @e[tag=witherborn,tag=mob1]
scoreboard players remove @p witherbornCount 1
kill @e[tag=witherbornStand]