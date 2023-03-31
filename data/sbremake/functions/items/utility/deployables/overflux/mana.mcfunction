advancement revoke @s only sbremake:items/utility/deployables/orbs/overflux-mana
scoreboard players set @s manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @s actionbar {"text":"You don't have enough mana to use this ability!","color":"red"}