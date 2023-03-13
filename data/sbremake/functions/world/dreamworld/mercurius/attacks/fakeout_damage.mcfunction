advancement revoke @s only sbremake:mercurius/fakeout
attribute @s generic.knockback_resistance base set 100
damage @s 8 player_attack by @e[tag=mercurius,limit=1]
attribute @s generic.knockback_resistance base set 0
effect give @s blindness 10 2 true
tellraw @s [{"text":"You hit a Copy-cat!","color": "red"}]