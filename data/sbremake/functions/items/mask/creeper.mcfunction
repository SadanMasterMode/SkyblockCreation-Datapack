execute if score @p spookyMute matches 1 run execute if entity @e[tag=spookyCart] run tellraw @p [{"text":"You selected Explosion Mode","color":"red"}]
tag @p remove skeletonMode
tag @p remove arthropodMode
tag @p remove zombieMode
tag @p add explosionMode
item replace entity @p weapon.mainhand from block 0 0 0 container.3
clear @p minecraft:creeper_head{display:{Name:'[{"text":"Explosive Mode","italic":false,"color":"red"}]',Lore:['[{"text":"Click to select ","italic":false,"color":"gray"},{"text":"Explosion Repellent!","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"All ","italic":false,"color":"gray"},{"text":"Explosions","color":"red"},{"text":" within "},{"text":"20 ","color":"green"},{"text":"blocks","color":"gray"}]','[{"text":"will automatically be","italic":false,"color":"gray"},{"text":" pushed away","color":"green"},{"text":"!"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Works On:","italic":false,"color":"gray"}]','[{"text":" - ","italic":false,"color":"gray"},{"text":"Creepers","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":" - ","italic":false,"color":"gray"},{"text":"Primed TNT","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":" - ","italic":false,"color":"gray"},{"text":"Wither Skulls","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"⚠ May cause further damage.","italic":false,"color":"gold"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Custom Item","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"GUI ITEM","italic":false,"color":"red","bold":true}]']}}
tp @e[tag=spookyCart] ~ ~-100 ~
kill @e[tag=spookyCart]
scoreboard players set @p inSpookyGUI 0
execute at @p run playsound minecraft:entity.creeper.hurt master @p ~ ~ ~