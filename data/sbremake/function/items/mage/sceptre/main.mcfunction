execute anchored eyes run summon minecraft:bat ^ ^-0.5 ^1 {Invulnerable:1b,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["sceptre","spectator","projectile"],CustomName:'["",{"text":"[","color":"#555555"},{"text":"Lv10","color":"#AAAAAA"},{"text":"]","color":"#555555"},{"text":" Spirit Bat","color":"green"}]',CustomNameVisible:1b}
execute as @e[tag=sceptre] at @s run tp @s ~ ~ ~ facing entity 8b972846-ccec-4466-b60a-ff68a0bcecc6

scoreboard players remove @s mana 125
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"-125 Mana (","color":"aqua"},{"text":"Guided Bat","color":"gold"},{"text":")   ","color":"aqua"}]'