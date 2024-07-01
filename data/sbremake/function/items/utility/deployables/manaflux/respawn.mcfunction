execute as cf4104c7-f284-42d1-9c58-9b105a8d158b on passengers run kill @s
kill cf4104c7-f284-42d1-9c58-9b105a8d158b

summon armor_stand ~ ~1 ~ {Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,Passengers:[{CustomName:'[{"text": "Mana Flux ","color": "blue"},{"text": "30s","color": "yellow"}]',CustomNameVisible:1b,Tags:["manaflux","power-orb","spectator"],UUID:[I;-804597620,1837320214,-1778437197,-767741650],billboard:"fixed",id:"minecraft:item_display",item:{components:{"minecraft:profile":{id:[I;-123228,20562,153725,-41124],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2FiNGM0ZDZlZTY5YmMyNGJiYTJiOGZhZjY3YjlmNzA0YTA2YjAxYWE5M2YzZWZhNmFlZjdhOTY5NmM0ZmVlZiJ9fX0="}]}},count:1,id:"minecraft:player_head"}}],UUID:[I;-817822521,-226213167,-1671914736,1519195531]}
# e42a9d23-f22d-4393-bb01-6676a5140841
# "cf4104c7-f284-42d1-9c58-9b105a8d158b"

scoreboard players set e42a9d23-f22d-4393-bb01-6676a5140841 life 30

execute store result score #half-mana fakePlayers run scoreboard players get @s maxMana
scoreboard players operation #half-mana fakePlayers /= #2 const
scoreboard players operation @a mana -= #half-mana fakePlayers

schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"-","color":"aqua"},{"score":{"objective": "fakePlayers","name":"#half-mana"}},{"text": " Mana (","color":"aqua"},{"text":"Deploy","color":"gold"},{"text":")   ","color":"aqua"}]'

tellraw @a [{"text": "Your previous Orb was removed and a new orb was spawned!","color": "red"}]
scoreboard players reset #manaflux-orb-bob fakePlayers