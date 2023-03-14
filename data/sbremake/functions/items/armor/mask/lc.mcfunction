execute if entity @s[nbt={SelectedItem:{id:"minecraft:player_head",tag:{display:{Name:'[{"text":"Spooky Mask","italic":false,"color":"dark_purple"}]'}}}}] run tellraw @s {"text":"Nothing happened. Was that unexpected?","color":"dark_gray","italic":true}

execute unless entity @s[nbt={SelectedItem:{id:"minecraft:player_head",tag:{display:{Name:'[{"text":"Spooky Mask","italic":false,"color":"dark_purple"}]'}}}}] run tellraw @s {"text":"You reverted the Mask!","color":"green","italic":false}

item replace entity @s weapon.mainhand with minecraft:player_head{spook:1,SkullOwner:{Id:[I;-106965583,1392722555,-1387069706,1410584343],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmE1NjEyMzhiYWNiNTgzYTYwZjlhNTBlNzk0NDZkNGRiNTZkMTgwNGQ3MGE4YTAyNDA3MjcxM2RlYjQ3ZWUxZCJ9fX0="}]}},display:{Name:'[{"text":"Spooky Mask","italic":false,"color":"dark_purple"}]',Lore:['[{"text":"This brand is particularly spooky.","color":"dark_gray"},{"text":"","color":"dark_purple","italic":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Ability: Spook ","italic":false,"color":"gold"},{"text":"RIGHT CLICK TWICE","color":"yellow","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"Opens a new GUI.","italic":false,"color":"gray"}]','[{"text":"Select a mob type to Spook.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Current Mob:","italic":false,"color":"gray"},{"text":" ","color":"dark_purple"},{"text":"NONE","color":"red","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Ability: Redo ","italic":false,"color":"gold"},{"text":"LEFT CLICK","color":"yellow","bold":true},{"text":"","color":"dark_purple","bold":false}]','[{"text":"Resets the Mask back","italic":false,"color":"gray"}]','[{"text":"to the original state.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Custom Item","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"EPIC MASK","italic":false,"color":"dark_purple","bold":true}]']}}

clear @s minecraft:barrier{display:{Name:'[{"text":"Revert Selection","italic":false,"color":"red"}]',Lore:['[{"text":"Feeling a bit plain?","italic":false,"color":"gray"}]','[{"text":"Revert the mask back to it\'s","italic":false,"color":"gray"}]','[{"text":"original design!","italic":false,"color":"gray"}]']}}

tp @e[tag=spookyCart] ~ ~-1000 ~
kill @e[tag=spookyCart]

tag @s remove skeletonMode
tag @s remove explosionMode
tag @s remove arthropodMode
tag @s remove zombieMode
execute at @s run playsound minecraft:entity.ghast.scream master @a ~ ~ ~