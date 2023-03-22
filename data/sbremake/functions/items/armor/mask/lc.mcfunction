execute if entity @s[predicate=sbremake:items/armor/mask/holding-spooky] run tellraw @s {"text":"Nothing happened. Was that unexpected?","color":"dark_gray","italic":true}
execute unless entity @s[predicate=sbremake:items/armor/mask/holding-spooky] run tellraw @s {"text":"You reverted the Mask!","color":"green","italic":false}

data modify storage sbstats:data PlayerData set from entity @s

item replace entity @s weapon.mainhand with player_head{Base:{id:'SPOOKY_MASK',type:'MASK',rarity:'EPIC',stats:{true_defense:15},description:['[{"text":"This brand is particularly spooky.","italic":true,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Ability: Spook ","italic":false,"color":"gold"},{"text":"RIGHT CLICK","color":"yellow","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"Select a mob type to Spook.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Current Mob:","italic":false,"color":"gray"},{"text":" ","color":"dark_purple"},{"text":"NONE","color":"red","bold":true},{"text":"","color":"dark_purple","bold":false}]'],Gemstones:[],weapon:'ARMOR',lore_builder:1b},Upgrades:{recomb:0b,reforge:{type:'',stats:{}},Gemstones:[],HotPotatoBooks:0,FumingPotatoBooks:0},SBRemake:{SpookyMask:1b,CustomItem:1b},SkullOwner:{Id:[I;-106965583,1392722555,-1387069706,1410584343],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmE1NjEyMzhiYWNiNTgzYTYwZjlhNTBlNzk0NDZkNGRiNTZkMTgwNGQ3MGE4YTAyNDA3MjcxM2RlYjQ3ZWUxZCJ9fX0="}]}},display:{Name:'[{"text":"Spooky Mask","italic":false,"color":"dark_purple"}]',Lore:['[{"text":"True Defense: ","italic":false,"color":"gray"},{"text":"+15","color":"green"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"This brand is particularly spooky.","italic":true,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Ability: Spook ","italic":false,"color":"gold"},{"text":"RIGHT CLICK","color":"yellow","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"Select a mob type to Spook.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Current Mob:","italic":false,"color":"gray"},{"text":" ","color":"dark_purple"},{"text":"NONE","color":"red","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Custom Item","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"EPIC MASK","italic":false,"color":"dark_purple","bold":true}]']}} 1

item modify entity @s weapon.mainhand sbremake:items/armor/mask/upgrades
item modify entity @s weapon.mainhand sbremake:items/armor/mask/base-rarity
item modify entity @s weapon.mainhand sbstats:old_name
function sbstats:reforges/lore_builder

clear @s minecraft:barrier{display:{Name:'[{"text":"Revert Selection","italic":false,"color":"red"}]',Lore:['[{"text":"Feeling a bit plain?","italic":false,"color":"gray"}]','[{"text":"Revert the mask back to it\'s","italic":false,"color":"gray"}]','[{"text":"original design for no cost!","italic":false,"color":"gray"}]']}}

tp @e[tag=spookyCart] ~ ~-1000 ~
kill @e[tag=spookyCart]

tag @s remove skeletonMode
tag @s remove explosionMode
tag @s remove arthropodMode
tag @s remove zombieMode
execute at @s run playsound minecraft:entity.ghast.scream master @a ~ ~ ~