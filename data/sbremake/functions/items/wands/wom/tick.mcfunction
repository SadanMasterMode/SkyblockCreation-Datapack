# Wand of Mana
scoreboard players operation #wom-mana fakePlayers = @a maxMana 
scoreboard players operation #wom-mana fakePlayers -= #249 const

execute as @a[predicate=sbremake:items/wands/wom/mana] run function sbremake:items/wands/wom/mana
execute as @a[predicate=sbremake:items/wands/wom/main] at @s run function sbremake:items/wands/wom/main