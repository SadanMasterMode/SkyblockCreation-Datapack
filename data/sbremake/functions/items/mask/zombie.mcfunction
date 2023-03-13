execute if score @p spookyMute matches 1 run execute if entity @e[tag=spookyCart] run tellraw @p [{"text":"You selected Zombie Mode","color":"red"}]
tag @p remove skeletonMode
tag @p remove explosionMode
tag @p remove arthropodMode
tag @p add zombieMode
item replace entity @p weapon.mainhand from block 0 0 0 container.1
clear @p zombie_head{display:{Name:'[{"text":"Zombie Mode","italic":false,"color":"red"}]',Lore:['[{"text":"Click to select ","italic":false,"color":"gray"},{"text":"Zombie Repellent!","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"All Zombies within ","italic":false,"color":"gray"},{"text":"20 ","color":"green"},{"text":"blocks","color":"gray"}]','[{"text":"will automatically be","italic":false,"color":"gray"},{"text":" pushed away","color":"green"},{"text":"!"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Works On:","italic":false,"color":"gray"}]','[{"text":" - ","italic":false,"color":"gray"},{"text":"Zombies","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":" - ","italic":false,"color":"gray"},{"text":"Zombie Pigman","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":" - ","italic":false,"color":"gray"},{"text":"Zombie Horse","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":" - ","italic":false,"color":"gray"},{"text":"Zombie Villager","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Custom Item","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"GUI ITEM","italic":false,"color":"red","bold":true}]']}}
tp @e[tag=spookyCart] ~ ~-100 ~
kill @e[tag=spookyCart]
scoreboard players set @p inSpookyGUI 0
execute at @p run playsound minecraft:entity.zombie.hurt master @p ~ ~ ~