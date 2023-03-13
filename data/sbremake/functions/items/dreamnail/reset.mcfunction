execute as @a at @s if score @s dreamnailCharge matches 5.. run particle sweep_attack ^ ^1.5 ^2 0.2 0 0.2 0 3 normal
execute as @a at @s if score @s dreamnailCharge matches 5.. positioned ^ ^1.5 ^2 as @e[distance=..3,tag=!spectator] at @s run function sbremake:items/dreamnail/dmg
scoreboard players set @a dreamnailCharge 0