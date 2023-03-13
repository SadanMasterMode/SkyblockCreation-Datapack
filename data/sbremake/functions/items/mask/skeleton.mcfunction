execute if score @p spookyMute matches 1 run execute if entity @e[tag=spookyCart] run tellraw @p [{"text":"You selected Skeleton Mode","color":"red"}]
tag @p remove explosionMode
tag @p remove arthropodMode
tag @p remove zombieMode
tag @p add skeletonMode
item replace entity @p weapon.mainhand from block 0 0 0 container.2
clear @p skeleton_skull{display:{Name:'[{"text":"Skeleton Mode","italic":false,"color":"red"}]',Lore:['[{"text":"Click to select ","italic":false,"color":"gray"},{"text":"Skeleton Repellent!","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"All Skeletons within ","italic":false,"color":"gray"},{"text":"20 ","color":"green"},{"text":"blocks","color":"gray"}]','[{"text":"will automatically be","italic":false,"color":"gray"},{"text":" pushed away","color":"green"},{"text":"!"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Works On:","italic":false,"color":"gray"}]','[{"text":" - ","italic":false,"color":"gray"},{"text":"Skeleton","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":" - ","italic":false,"color":"gray"},{"text":"Wither Skeleton","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":" - ","italic":false,"color":"gray"},{"text":"Skeleton Horse","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Custom Item","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"GUI ITEM","italic":false,"color":"red","bold":true}]']}}
tp @e[tag=spookyCart] ~ ~-100 ~
kill @e[tag=spookyCart]
scoreboard players set @p inSpookyGUI 0
execute at @p run playsound minecraft:entity.skeleton.hurt master @p ~ ~ ~