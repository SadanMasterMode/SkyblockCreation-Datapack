tp 7767141e-9475-49e9-bc12-971010d9f0ad ~ ~-100 ~
kill 7767141e-9475-49e9-bc12-971010d9f0ad
kill @e[tag=item,nbt={Item:{id:"minecraft:totem_of_undying"}}]
kill @e[tag=item,nbt={Item:{id:"minecraft:emerald"}}]

execute as @a[tag=inDwindlerBoss,tag=!mistyMines] run tag @s add mistyMines
execute as @a[tag=inDwindlerBoss] run scoreboard players set @s dwindlerSpawn 0
execute as @a[tag=inDwindlerBoss] run scoreboard players set @s dwindlerMana 0
execute as @a[tag=inDwindlerBoss] run tag @s remove dwindlerFight
execute as @a[tag=inDwindlerBoss] run tag @s remove inDwindlerBoss

execute as @a[tag=!mistyMines] run schedule function sbremake:world/dwindler/delay 2t append