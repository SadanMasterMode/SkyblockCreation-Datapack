execute if score @a[limit=1] spookyMute matches 1 run execute if entity 35466863-3d53-4344-9b8c-9e3c6f6c4ff4 run tellraw @a[limit=1] [{"text":"You selected Zombie Mode","color":"green"}]
tag @a[limit=1] remove skeletonMode
tag @a[limit=1] remove explosionMode
tag @a[limit=1] remove arthropodMode
tag @a[limit=1] add zombieMode

data modify storage sbstats:data PlayerData set from entity @s

item replace entity @a[limit=1] weapon.mainhand with zombie_head{Base:{id:'ZOMBIE_MASK',type:'MASK',rarity:'EPIC',stats:{true_defense:15},description:['[{"text":"It\'s alive, it\'s ALIVE!","italic":true,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Ability: Spook ","italic":false,"color":"gold"},{"text":"RIGHT CLICK","color":"yellow","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"Select a mob type to Spook.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Current Mob:","italic":false,"color":"gray"},{"text":" ","color":"dark_purple"},{"text":"ZOMBIES","color":"red","bold":true},{"text":"","color":"dark_purple","bold":false}]'],Gemstones:[],weapon:'ARMOR',lore_builder:1b},Upgrades:{recomb:0b,reforge:{type:'',stats:{}},Gemstones:[],HotPotatoBooks:0,FumingPotatoBooks:0},SBRemake:{SpookyMask:1b,CustomItem:1b},display:{Name:'[{"text":"Zombie Mask","italic":false,"color":"dark_purple"}]',Lore:['[{"text":"True Defense: ","italic":false,"color":"gray"},{"text":"+15","color":"green"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"It\'s alive, it\'s ALIVE!","italic":true,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Ability: Spook ","italic":false,"color":"gold"},{"text":"RIGHT CLICK","color":"yellow","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"Select a mob type to Spook.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Current Mob:","italic":false,"color":"gray"},{"text":" ","color":"dark_purple"},{"text":"ZOMBIES","color":"red","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Custom Item","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"EPIC MASK","italic":false,"color":"dark_purple","bold":true}]']}} 1

item modify entity @s weapon.mainhand sbremake:items/armor/mask/upgrades
item modify entity @s weapon.mainhand sbremake:items/armor/mask/base-rarity
execute unless data entity @s SelectedItem.tag.SBStats.OldName run item modify entity @s weapon.mainhand sbstats:old_name
data modify storage sbstats:data PlayerData set from entity @s
function sbstats:reforges/lore_builder

clear @a zombie_head{display:{Name:'[{"text":"Zombie Mode","italic":false,"color":"red"}]',Lore:['[{"text":"Click to select ","italic":false,"color":"gray"},{"text":"Zombie Repellent!","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"All Zombies within ","italic":false,"color":"gray"},{"text":"20 ","color":"green"},{"text":"blocks","color":"gray"}]','[{"text":"will automatically be","italic":false,"color":"gray"},{"text":" pushed away","color":"green"},{"text":"!"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Works On:","italic":false,"color":"gray"}]','[{"text":" - ","italic":false,"color":"gray"},{"text":"Zombies","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":" - ","italic":false,"color":"gray"},{"text":"Zombie Pigman","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":" - ","italic":false,"color":"gray"},{"text":"Zombie Horse","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":" - ","italic":false,"color":"gray"},{"text":"Zombie Villager","color":"red"},{"text":"","color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Custom Item","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"GUI ITEM","italic":false,"color":"red","bold":true}]']}}

tp 35466863-3d53-4344-9b8c-9e3c6f6c4ff4 ~ ~-100 ~
kill 35466863-3d53-4344-9b8c-9e3c6f6c4ff4
scoreboard players set @a[limit=1] inSpookyGUI 0
execute at @a[limit=1] run playsound minecraft:entity.zombie.hurt master @a[limit=1] ~ ~ ~