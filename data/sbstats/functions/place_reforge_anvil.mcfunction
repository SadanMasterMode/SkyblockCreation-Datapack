setblock ~ ~ ~ anvil
summon interaction ~ ~ ~ {Tags:["reforge","spectator"],width:1,height:1,response:1b}
tellraw @a [{"text": "Placed new reforge anvil at current position!!","color": "green"}]