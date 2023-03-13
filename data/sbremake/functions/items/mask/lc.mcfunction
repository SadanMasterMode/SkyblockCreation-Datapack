execute if score @p spookyMute matches 1 run execute if entity @p[nbt={SelectedItem:{id:"minecraft:player_head",tag:{display:{Name:'[{"text":"Spooky Mask","italic":false,"color":"dark_purple"}]'}}}}] run tellraw @p {"text":"Nothing happened. Was that unexpected?","color":"dark_gray","italic":true}
item replace entity @p weapon.mainhand from block 0 0 0 container.0
tp @e[tag=spooky] ~ ~-100 ~
kill @e[tag=spooky]
execute as @p at @s run summon minecraft:iron_golem ~ ~10 ~ {Health:100,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,Tags:["spooky","lc","spectator"],ActiveEffects:[{Id:14,Duration:100000,Amplifier:-1,ShowParticles:0b}],Attributes:[{Name:"generic.max_health",Base:100d}]}
scoreboard players set @p inSpookyGUI 0
tag @p remove skeletonMode
tag @p remove explosionMode
tag @p remove arthropodMode
tag @p remove zombieMode
execute at @p run playsound minecraft:entity.ghast.scream master @p ~ ~ ~