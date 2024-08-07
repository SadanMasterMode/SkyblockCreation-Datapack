summon armor_stand ~ ~1 ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Passengers:[{CustomName:'[{"text": "Overflux ","color": "dark_purple"},{"text": "60s","color": "yellow"}]',CustomNameVisible:1b,Tags:["overflux","power-orb","spectator"],UUID:[I;-104863847,1008552012,-1630263245,1002741722],billboard:"fixed",id:"minecraft:item_display",item:{components:{"minecraft:profile":{id:[I;-123228,39462,153725,-78924],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjU2MTU5NWQ5Yzc0NTc3OTZjNzE5ZmFlNDYzYTIyMjcxY2JjMDFjZjEwODA5ZjVhNjRjY2IzZDZhZTdmOGY2In19fQ=="}]}},count:1,id:"minecraft:player_head"}}],Tags:["power-orb","spectator"],UUID:[I;555934175,-1651291794,-2010714706,1425795798]}
# f9bfe799-3c1d-484c-9ed4-28333bc49fda
# "2122e1df-9d93-496e-8826-edae54fbead6"
function sbremake:items/utility/deployables/overflux/bob-1

scoreboard players set f9bfe799-3c1d-484c-9ed4-28333bc49fda life 60

execute store result score #half-mana fakePlayers run scoreboard players get @s maxMana
scoreboard players operation #half-mana fakePlayers /= #2 const
scoreboard players operation @a mana -= #half-mana fakePlayers

schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"-","color":"aqua"},{"score":{"objective": "fakePlayers","name":"#half-mana"}},{"text": " Mana (","color":"aqua"},{"text":"Deploy","color":"gold"},{"text":")   ","color":"aqua"}]'

scoreboard players reset #overflux-orb-bob fakePlayers