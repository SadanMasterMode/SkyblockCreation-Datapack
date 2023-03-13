scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @a actionbar {"text":"You don't have enough mana to use this ability!","color":"red"}
scoreboard players reset @p cloakRC3