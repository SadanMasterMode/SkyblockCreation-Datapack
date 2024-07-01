summon area_effect_cloud ^ ^0.5 ^0.5 {Duration:2147483647,Passengers:[{Tags:["spectator","jerry-gun"],id:"minecraft:item_display",item:{components:{"minecraft:profile":{id:[I;-1771967249,-1745662167,-1513193077,2008369964],name:"",properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTI2ZWMxY2ExODViNDdhYWQzOWY5MzFkYjhiMGE4NTAwZGVkODZhMTI3YTIwNDg4NmVkNGIzNzgzYWQxNzc1YyJ9fX0="}]}},count:1,id:"minecraft:player_head"},item_display:"fixed",transformation:[1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f,0.0000f,-0.5000f,0.0000f,0.0000f,1.0000f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}],Radius:0,Tags:["jerry-gun","spectator","projectile"]}

execute as @e[tag=jerry-gun,tag=!teleported,type=area_effect_cloud] at @s run tp @s ~ ~ ~ facing entity 8b972846-ccec-4466-b60a-ff68a0bcecc6
execute as @e[tag=jerry-gun,tag=!teleported,type=area_effect_cloud] on passengers at @s run tp @s ~ ~ ~ facing entity 8b972846-ccec-4466-b60a-ff68a0bcecc6
execute as @e[tag=jerry-gun,tag=!teleported,type=area_effect_cloud] at @s run tag @s add teleported

schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
data modify storage sbremake:data Actionbar.AbilityUsage set value '[{"text":"-","color":"aqua"},{"score":{"name":"#jerry-gun","objective":"fakePlayers"},"color":"aqua"},{"text":" Mana (","color":"aqua"},{"text":"Rapid-fire","color":"gold"},{"text":")   ","color":"aqua"}]'

playsound entity.villager.ambient master @s ~ ~ ~

schedule function sbremake:items/mage/jerry-gun/reset 3s
scoreboard players add #jerry-gun fakePlayers 15
scoreboard players operation @a mana -= #jerry-gun fakePlayers