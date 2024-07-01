
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"-","color":"aqua"},{"score":{"objective": "endResult","name":"@a[limit=1]"}},{"text": " Mana (","color":"aqua"},{"text":"Sinrecall Transmission","color":"gold"},{"text":")   ","color":"aqua"}]'

playsound minecraft:entity.enderman.teleport ambient @s ~ ~ ~
tp @s 487bdc79-7a38-4017-869d-f3f0f61a6adc
kill 487bdc79-7a38-4017-869d-f3f0f61a6adc

scoreboard players operation @s mana -= @s endResult