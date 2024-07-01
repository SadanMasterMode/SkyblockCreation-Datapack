execute if score @a[limit=1] magicDamage matches 10240.. run scoreboard players set @a magicDamage 10240
execute if score @a[limit=1] magicDamage matches 10240.. run tellraw @a [{"text":"Uh oh, you've reached the max damage cap (1024+)!","color":"red"}]

execute if entity @s[tag=!invulnerable] run function sbremake:utils/damages/magic_damage/root