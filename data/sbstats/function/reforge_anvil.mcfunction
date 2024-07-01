summon interaction ~ ~ ~ {Tags:["reforge","spectator"],width:1.05f,height:1.05f,response:1b}
particle smoke ~ ~0.5 ~ 0 0 0 0.1 100 normal
playsound block.anvil.place master @a ~ ~ ~
tellraw @a [{"text": "Placed new reforge anvil!","color": "green"}]
kill @s