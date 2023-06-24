advancement revoke @s only sbremake:items/sol/right_click_main

schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"-","color":"aqua"},{"score":{"objective": "percentageManaMod","name":"#40"}},{"text": " Mana (","color":"aqua"},{"text":"Orb of Shadows","color":"gold"},{"text":")   ","color":"aqua"}]'

execute at @s run playsound minecraft:block.end_gateway.spawn master @s ~ ~ ~

kill 48782dea-21f1-43a5-b4cb-23fa86396cec
execute at @s anchored eyes run summon marker ^ ^ ^0.1 {Tags:["shadowOrb","spectator","solOrb"],Invulnerable:1,NoGravity:1,data:{SBRemake:{UUID:"48782dea-21f1-43a5-b4cb-23fa86396cec"}},UUID:[I;1215835626,569459621,-1261755398,-2043056916]}
execute as 48782dea-21f1-43a5-b4cb-23fa86396cec at @s run tp @s ~ ~ ~ facing entity @a[limit=1] eyes

scoreboard players operation @s mana -= #40 percentageManaMod
scoreboard players set @s shadowCD 0