damage @a[distance=..1,limit=1] 16 falling_block

scoreboard players reset @a success
execute as @a[distance=..1,limit=1] store success score @s success unless score @s success matches 1 run tellraw @s [{"text": "You were hit a Falling Teardrop conjured by","color": "red"},{"text": " Crying Orb ","color": "aqua"},{"text": "!","color": "red"}]

scoreboard players reset @a success
execute as @a[distance=..1,limit=1] store success score @s success unless score @s success matches 1 run playsound block.anvil.land master @s ~ ~ ~