scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 0.25s append
title @a actionbar {"text":"You don't have enough mana to use this item!","color":"red"}