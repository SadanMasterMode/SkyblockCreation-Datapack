tag @p add inGlide
execute at @a[tag=inGlide] run summon minecraft:marker ~ ~ ~ {Tags:["glide","spectator"],CustomNameVisible:1b}
gamerule sendCommandFeedback false
execute if entity @p[nbt={playerGameType:0}] run scoreboard players set @p gamemode 0
execute if entity @p[nbt={playerGameType:1}] run scoreboard players set @p gamemode 1
execute if entity @p[nbt={playerGameType:2}] run scoreboard players set @p gamemode 2
gamemode spectator @p
scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
execute unless entity @p[scores={mana=..150}] run title @a actionbar ["",{"text":"Used","color":"aqua"},{"text":" Spirit Glide","color":"gold"},{"text":"! (-250 \u270e Mana)","color":"aqua"}]
scoreboard players set @p spiritCD 0
scoreboard players remove @p mana 250
execute at @p run playsound minecraft:block.anvil.land master @p ~ ~ ~
gamerule sendCommandFeedback true