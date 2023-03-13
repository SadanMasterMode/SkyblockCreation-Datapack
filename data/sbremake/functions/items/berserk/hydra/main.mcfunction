tag @s add hydraAnim

scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar [{"score":{"name":"@s","objective":"healthVis"},"color":"red"},{"text":"/100❤ ","color":"red"},{"text":"-50  Mana (","color":"aqua"},{"text":"Vortex Transmission","color":"gold"},{"text":") ","color":"aqua"},{"score":{"name":"@s","objective":"mana"},"color":"aqua"},{"text":"/","color":"aqua"},{"score":{"name":"@s","objective":"maxMana"},"color":"aqua"},{"text":"✎ ","color":"aqua"}]
scoreboard players remove @s mana 50
playsound entity.blaze.shoot master @s ~ ~ ~ 100 1 1

execute as @a[tag=hydraAnim] at @s anchored eyes positioned ^ ^ ^ anchored feet if block ^ ^ ^1 #sbremake:items/air run function sbremake:items/berserk/hydra/raycast/start_ray
execute as @a[tag=hydraAnim] at @s anchored eyes positioned ^ ^ ^ anchored feet unless block ^ ^ ^1 #sbremake:items/air run function sbremake:items/berserk/hydra/raycast/hit_block