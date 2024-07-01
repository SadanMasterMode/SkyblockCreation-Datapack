scoreboard players set @a extraMana 0
function sbremake:utils/stats/extra_mana_give
function sbremake:utils/stats/mana

execute if score @a[limit=1] maxMana matches ..299 run scoreboard players remove @s mercuriusManaDec 1

scoreboard players set @a extraMana 0
function sbremake:utils/stats/extra_mana_give
function sbremake:utils/stats/mana

execute if score @a[limit=1] maxMana matches 301.. run scoreboard players add @s mercuriusManaDec 1

scoreboard players operation #current fakePlayers = @s mercuriusManaDec
data modify entity @s text set value '[{"score":{"name": "#current","objective": "fakePlayers"},"color":"aqua"},{"text":" ✎ Mana Stored","color":"aqua"},{"text":"\\n[","color":"#555555"},{"text":"Lv10","color":"#AAAAAA"},{"text":"]","color":"#555555"},{"text":" Mana Totem","color":"blue"},{"text": "\\nLEFT CLICK TO DESTROY","color": "gold","bold": true}]'