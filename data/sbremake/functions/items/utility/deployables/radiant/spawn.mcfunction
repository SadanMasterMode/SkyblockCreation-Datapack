summon armor_stand ~ ~1 ~ {Passengers:[{id:"minecraft:item_display",CustomName:'[{"text": "Radiant ","color": "green"},{"text": "30s","color": "yellow"}]',item:{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;-123228,20562,153725,-41124],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2FiNGM0ZDZlZTY5YmMyNGJiYTJiOGZhZjY3YjlmNzA0YTA2YjAxYWE5M2YzZWZhNmFlZjdhOTY5NmM0ZmVlZiJ9fX0="}]}}},Count:1b},Tags:["radiant","power-orb","spectator"],UUID:[I;-804597620,1837320214,-1778437197,-767741650],billboard:"fixed",CustomNameVisible:1b}],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,UUID:[I;-1678774557,1743342463,-1300064130,-21507381],Tags:["power-orb","spectator"]}
# d00ad08c-6d83-4816-95ff-33b3d23d312e
# "9befeee3-67e9-4b7f-b282-987efeb7d2cb"
function sbremake:items/utility/deployables/radiant/bob-1

scoreboard players set d00ad08c-6d83-4816-95ff-33b3d23d312e life 30

execute store result score #half-mana fakePlayers run scoreboard players get @s maxMana
scoreboard players operation #half-mana fakePlayers /= #2 const
scoreboard players operation @a mana -= #half-mana fakePlayers

schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"-","color":"aqua"},{"score":{"objective": "fakePlayers","name":"#half-mana"}},{"text": " Mana (","color":"aqua"},{"text":"Deploy","color":"gold"},{"text":")   ","color":"aqua"}]'

scoreboard players reset #radiant-orb-bob fakePlayers