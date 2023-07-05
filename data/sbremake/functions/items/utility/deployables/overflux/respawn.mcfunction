execute as 2122e1df-9d93-496e-8826-edae54fbead6 on passengers run kill @s
kill 2122e1df-9d93-496e-8826-edae54fbead6

summon armor_stand ~ ~1 ~ {Passengers:[{id:"minecraft:item_display",CustomName:'[{"text": "Overflux ","color": "dark_purple"},{"text": "60s","color": "yellow"}]',item:{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;-123228,39462,153725,-78924],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjU2MTU5NWQ5Yzc0NTc3OTZjNzE5ZmFlNDYzYTIyMjcxY2JjMDFjZjEwODA5ZjVhNjRjY2IzZDZhZTdmOGY2In19fQ=="}]}}},Count:1b},Tags:["overflux","power-orb","spectator"],UUID:[I;-104863847,1008552012,-1630263245,1002741722],alignment:"fixed",billboard:"fixed",CustomNameVisible:1b}],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,UUID:[I;555934175,-1651291794,-2010714706,1425795798],Tags:["power-orb","spectator"]}
# "f9bfe799-3c1d-484c-9ed4-28333bc49fda"
# "2122e1df-9d93-496e-8826-edae54fbead6"

scoreboard players set f9bfe799-3c1d-484c-9ed4-28333bc49fda life 60

execute store result score #half-mana fakePlayers run scoreboard players get @s maxMana
scoreboard players operation #half-mana fakePlayers /= #2 const
scoreboard players operation @a mana -= #half-mana fakePlayers

schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"-","color":"aqua"},{"score":{"objective": "fakePlayers","name":"#half-mana"}},{"text": " Mana (","color":"aqua"},{"text":"Deploy","color":"gold"},{"text":")   ","color":"aqua"}]'

tellraw @a [{"text": "Your previous Orb was removed and a new orb was spawned!","color": "red"}]
scoreboard players reset #overflux-orb-bob fakePlayers