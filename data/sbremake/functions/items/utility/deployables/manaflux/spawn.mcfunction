summon armor_stand ~ ~1 ~ {Passengers:[{id:"minecraft:item_display",CustomName:'[{"text": "Manaflux ","color": "blue"},{"text": "30s","color": "yellow"}]',item:{id:"minecraft:player_head",tag:{SkullOwner:{Id:[I;-123228,31362,153725,-62724],Properties:{textures:[{Value:eyJ0aW1lc3RhbXAiOjE1Njk1ODM2NDYxMTksInByb2ZpbGVJZCI6IjQxZDNhYmMyZDc0OTQwMGM5MDkwZDU0MzRkMDM4MzFiIiwicHJvZmlsZU5hbWUiOiJNZWdha2xvb24iLCJzaWduYXR1cmVSZXF1aXJlZCI6dHJ1ZSwidGV4dHVyZXMiOnsiU0tJTiI6eyJ1cmwiOiJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlLzgyYWRhMWM3ZmNjOGNmMzVkZWZlYjk0NGE0ZjhmZmE5YTlkMjYwNTYwZmM3ZjVmNTgyNmRlODA4NTQzNTk2N2MifX19}]}}},Count:1b},Tags:["manaflux","power-orb","spectator"],UUID:[I;-466969309,-231914605,-1157536138,-1525413823],alignment:"fixed",billboard:"fixed",CustomNameVisible:1b}],Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,UUID:[I;-817822521,-226213167,-1671914736,1519195531],Tags:["power-orb","spectator"]}
# e42a9d23-f22d-4393-bb01-6676a5140841
# "cf4104c7-f284-42d1-9c58-9b105a8d158b"
function sbremake:items/utility/deployables/manaflux/bob-1

scoreboard players set e42a9d23-f22d-4393-bb01-6676a5140841 life 30

execute store result score #half-mana fakePlayers run scoreboard players get @s maxMana
scoreboard players operation #half-mana fakePlayers /= #2 const
scoreboard players operation @a mana -= #half-mana fakePlayers

schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"-","color":"aqua"},{"score":{"objective": "fakePlayers","name":"#half-mana"}},{"text": " Mana (","color":"aqua"},{"text":"Deploy","color":"gold"},{"text":")   ","color":"aqua"}]'

scoreboard players reset #manaflux-orb-bob fakePlayers