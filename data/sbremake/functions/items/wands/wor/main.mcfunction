execute if entity @e[tag=lookingAtHit,tag=!spectator] run scoreboard players set @p manaWarn 1
execute if entity @e[tag=lookingAtHit,tag=!spectator] run schedule clear sbremake:manareset
execute if entity @e[tag=lookingAtHit,tag=!spectator] run schedule function sbremake:manareset 1s append
execute if entity @e[tag=lookingAtHit,tag=!spectator] run title @a actionbar [{"text": "Your strength flows into the Wand, killing the entity.","color": "dark_gray"}]
execute if entity @e[tag=lookingAtHit,tag=!spectator] at @p run playsound entity.wither_skeleton.death master @p ~ ~ ~
kill @e[tag=lookingAtHit,tag=!dwindler,tag=!spectator]
execute as @e[tag=dwindler,tag=lookingAtHit] run scoreboard players set @s health 0