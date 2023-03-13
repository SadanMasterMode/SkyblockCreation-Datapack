scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @p actionbar [{"text":"This item is on cooldown!","color":"red","bold":false}]