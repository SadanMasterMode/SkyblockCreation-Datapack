scoreboard players add @a[scores={ffsCD=..199}] ffsCD 1

execute as @e[tag=ffsMark] at @s run function sbremake:items/mage/ffs/frozen
execute as @e[tag=ffsHeads] at @s run function sbremake:items/mage/ffs/as-heads
execute as fa035499-4db9-4efc-8714-fabe5cac9fdf run function sbremake:items/mage/ffs/as-main

execute if entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:dandelion",tag:{display:{Name:'[{"text":"Fire Freeze Staff","italic":false,"color":"dark_purple"}]'}}}}] if score @a[limit=1] ffsRC matches 1.. if score @a[limit=1] ffsCD matches ..199 run function sbremake:items/mage/ffs/cd

execute if entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:dandelion",tag:{display:{Name:'[{"text":"Fire Freeze Staff","italic":false,"color":"dark_purple"}]'}}}}] if score @a[limit=1] ffsRC matches 1.. if score @a[limit=1] mana matches ..499 if score @a[limit=1] ffsCD matches 200.. run function sbremake:items/mage/ffs/mana

execute as @a[limit=1,nbt={SelectedItem:{id:"minecraft:dandelion",tag:{display:{Name:'[{"text":"Fire Freeze Staff","italic":false,"color":"dark_purple"}]'}}}}] at @s if score @s ffsRC matches 1.. unless score @s mana matches ..499 if score @s ffsCD matches 200.. run function sbremake:items/mage/ffs/main
scoreboard players reset @a[limit=1] ffsRC