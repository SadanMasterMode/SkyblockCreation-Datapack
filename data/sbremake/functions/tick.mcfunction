# Raycasts
execute as @a at @s anchored eyes run function sbremake:tick/raycasts

# Function Calls
function sbremake:utils/spectator
execute as @a run function sbremake:tick/contextial/as_all_players 
function sbremake:utils/undead

# Invisible Minecarts
execute as @e[type=#minecraft:minecarts,tag=!invisible_minecart] run function sbremake:utils/invisible_minecarts

# Armor Stand Disable
data merge entity @e[tag=spectator,type=armor_stand,tag=!enable_slot,limit=1,sort=random] {DisabledSlots:4144896}

# Mob Nametags
execute as @e[tag=!maxHealth,tag=!spectator] run function sbremake:nametags/max_health
execute as @e[tag=!boss,tag=!newDmg,tag=!spectator] store result score @s health run data get entity @s Health
execute as @e[tag=!noName,tag=!spectator,type=!#sbremake:never-detect] in minecraft:overworld run function sbremake:nametags/main

# Actionbar
execute as @a[predicate=sbremake:items/tick/actionbar] run function sbremake:tick/actionbar

# Misc
execute store result score @a[limit=1] healthMod run scoreboard players get @a[limit=1] playerHealth
execute store result score @a[limit=1] healthVis run scoreboard players operation @a[limit=1] healthMod *= #5 const
execute at @a as @e[distance=50..] run function sbremake:tick/raycast_kill

execute as @e[tag=float] run function sbremake:utils/item_float
execute as @a[scores={solMaxDmg=1..},tag=!inDwindlerBoss] run function sbremake:utils/sol_max_dmg
execute as @a[scores={dmgDealt=1..},tag=inDwindlerBoss] run function sbremake:utils/sol_max_dmg
execute as @e[tag=damageHologram] at @s run function sbremake:tick/damage_hologram
execute as @e[scores={health=..0},tag=!spectator,tag=!not_kill] run kill @s

# Objectives
execute at @a facing entity @e[tag=objective,limit=1,sort=random] eyes positioned ^ ^3 ^2 run tp @e[tag=objectiveMarker] ~ ~ ~
execute at @e[tag=objectiveMarker] run particle minecraft:composter ~ ~ ~ 0 0 0 3 0 normal

# Wand of Mana
execute store result score @a[limit=1] maxMana2 run scoreboard players get @a[limit=1] maxMana
execute store result score @a[limit=1] maxManaMod run scoreboard players operation @a[limit=1] maxMana2 -= #249 const
execute as @r at @s if entity @s[scores={womRC=1..},nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'[{"text":"Wand of Mana","italic":false,"color":"dark_purple"}]'}}}}] if score @a[limit=1] mana >= @a[limit=1] maxManaMod run function sbremake:items/wom/mana
execute as @r at @s if entity @s[scores={womRC=1..},nbt={SelectedItem:{id:"minecraft:stick",Count:1b,tag:{display:{Name:'[{"text":"Wand of Mana","italic":false,"color":"dark_purple"}]'}}}}] unless score @a[limit=1] mana >= @a[limit=1] maxManaMod run function sbremake:items/wom/main
execute if score @a[limit=1] womRC matches 1.. run scoreboard players reset @a[limit=1] womRC

# Crypt Witherlord
execute as @a[scores={witherlordRC3=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Crypt Witherlord Sword","italic":false,"color":"dark_purple"}]'}}}}] if entity @a[limit=1,scores={mana=..39}] run function sbremake:items/witherlord/mana
execute as @a[scores={witherlordRC3=1..}] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{display:{Name:'[{"text":"Crypt Witherlord Sword","italic":false,"color":"dark_purple"}]'}}}}] unless entity @a[limit=1,scores={mana=..39}] run function sbremake:items/witherlord/main
execute if score @a[limit=1] witherlordRC3 matches 1.. run scoreboard players reset @a[limit=1] witherlordRC3
execute as @e[tag=witherlord] at @s run tp @s ^ ^ ^1
execute as @e[tag=witherlord] at @s anchored eyes unless block ~ ~2 ~ air run effect give @e[distance=..3,tag=!undead,tag=!spectator] minecraft:instant_damage 1 1 true
execute as @e[tag=witherlord] at @s anchored eyes unless block ~ ~2 ~ air run effect give @e[distance=..3,tag=undead] minecraft:instant_health 1 1 true
execute as @e[tag=witherlord] at @s anchored eyes unless block ~ ~2 ~ air run particle explosion ~ ~3 ~ 0 0 0 0 1 normal @a[limit=1]
execute as @e[tag=witherlord] at @s anchored eyes unless block ~ ~2 ~ air run kill @s
execute as @e[tag=witherlord3] at @s run tp @s ^ ^ ^1
execute as @e[tag=witherlord3] at @s anchored eyes unless block ~ ~2 ~ air run effect give @e[distance=..3,tag=!undead,tag=!spectator] minecraft:instant_damage 1 1 true
execute as @e[tag=witherlord3] at @s anchored eyes unless block ~ ~2 ~ air run effect give @e[distance=..3,tag=undead] minecraft:instant_health 1 1 true
execute as @e[tag=witherlord3] at @s anchored eyes unless block ~ ~2 ~ air run particle explosion ~ ~3 ~ 0 0 0 0 1 normal @a[limit=1]
execute as @e[tag=witherlord3] at @s anchored eyes unless block ~ ~2 ~ air run kill @s
execute as @e[tag=witherlord2] at @s run tp @s ^ ^ ^1
execute as @e[tag=witherlord2] at @s anchored eyes unless block ~ ~2 ~ air run effect give @e[distance=..3,tag=!undead,tag=!spectator] minecraft:instant_damage 1 1 true
execute as @e[tag=witherlord2] at @s anchored eyes unless block ~ ~2 ~ air run effect give @e[distance=..3,tag=undead] minecraft:instant_health 1 1 true
execute as @e[tag=witherlord2] at @s anchored eyes unless block ~ ~2 ~ air run particle explosion ~ ~3 ~ 0 0 0 0 1 normal @a[limit=1]
execute as @e[tag=witherlord2] at @s anchored eyes unless block ~ ~2 ~ air run kill @s

# Terrorwraith
execute if entity @a[limit=1,tag=inWraith] run scoreboard players add @a[limit=1] wraithTime 1
effect give @e[tag=wraithMarked] minecraft:glowing 1 1 true
data merge entity @e[tag=wraithMarked,limit=1,sort=random] {NoAI:1b}
execute unless score @a[limit=1] wraithCD matches 0 run scoreboard players remove @a[limit=1] wraithCD 1
execute if entity @a[limit=1,tag=inWraith] as @e[nbt={HurtTime:10s},tag=!wraithMarked] run scoreboard players add @a[limit=1] wraithCount 1
execute store result score @a[limit=1] wraithSnSt run scoreboard players get @a[limit=1] wraithSn
execute store result score @a[limit=1] wraithSn run scoreboard players get @a[limit=1] wraithSnSt
execute if entity @a[limit=1,nbt={Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{display:{Name:'[{"text":"Terrorwraith Cloak","italic":false,"color":"gold"}]'}}}]}] if entity @a[limit=1,tag=!inGlide] at @a[limit=1] unless block ~ ~-0.5 ~ air if score @a[limit=1] wraithSn matches 1.. if score @a[limit=1] wraithCD matches ..0 run tag @a[limit=1] add inWraith
execute if entity @a[limit=1,tag=inWraith,tag=!inGlide] run function sbremake:items/terrorwraith/main
execute if entity @a[limit=1,tag=inWraith] if entity @e[nbt={HurtTime:10s},type=!player,tag=!wraithMarked] run function sbremake:items/terrorwraith/dmg
execute if entity @a[limit=1,scores={wraithTime=100..}] run function sbremake:items/terrorwraith/wraithout
execute if entity @a[limit=1,tag=inWraith,tag=!notified] run function sbremake:items/terrorwraith/wraithin
scoreboard players set @a[limit=1] wraithSn 0
scoreboard players set @a[limit=1] wraithSnSt 0

# Spirit Boots
scoreboard players add @a[limit=1] spiritCD 1
execute as @e[tag=glide] at @s run tp @s ~ ~ ~ ~20 ~
execute as @a[limit=1,tag=inGlide] run scoreboard players add @a[limit=1] glideTime 1
execute if entity @a[limit=1,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",tag:{display:{Name:'[{"text":"Spirit Boots","italic":false,"color":"dark_purple"}]'}}}]}] at @a[limit=1] if block ~ ~-0.5 ~ air if entity @a[limit=1,tag=!inGlide,tag=!inWraith] if score @a[limit=1] spiritCD matches 300.. if score @a[limit=1] mana matches 250.. store result score @a[limit=1] spiritSneak2 run scoreboard players get @a[limit=1] spiritSneak
execute unless entity @a[limit=1,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",tag:{display:{Name:'[{"text":"Spirit Boots","italic":false,"color":"dark_purple"}]'}}}]}] store result score @a[limit=1] spiritSneak2 run scoreboard players get @a[limit=1] spiritSneak
team join glideTeam @e[tag=glide]
execute at @e[tag=glide] run particle minecraft:flame ^ ^ ^1 0 0 0 0 10 normal
execute at @e[tag=glide] run particle minecraft:flame ^ ^ ^-1 0 0 0 0 10 normal
execute at @e[tag=glide] run particle minecraft:flame ^1 ^ ^ 0 0 0 0 10 normal
execute at @e[tag=glide] run particle minecraft:flame ^-1 ^ ^ 0 0 0 0 10 normal
execute if entity @a[limit=1,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",tag:{display:{Name:'[{"text":"Spirit Boots","italic":false,"color":"dark_purple"}]'}}}]}] at @a[limit=1] if block ~ ~-0.5 ~ air if entity @a[limit=1,tag=!inGlide,tag=!inWraith] if score @a[limit=1] spiritCD matches 300.. if score @a[limit=1] mana matches 250.. if score @a[limit=1] spiritSneak matches 1.. run function sbremake:items/glide/main
execute if score @a[limit=1] glideTime matches 60.. run function sbremake:items/glide/final
execute store result score @a[limit=1] glideTimeMod2 run scoreboard players operation @a[limit=1] glideTimeMod -= @a[limit=1] glideTime
scoreboard players set @a[limit=1] glideTimeMod 63
setblock 0 1 0 air
execute if score @a[limit=1] glideTimeMod2 matches 41..60 run setblock 0 1 0 oak_sign{Text1:'{"score":{"objective":"glideTimeMod2","name":"@a[limit=1]"},"color": "green"}'}
execute if score @a[limit=1] glideTimeMod2 matches 21..40 run setblock 0 1 0 oak_sign{Text1:'{"score":{"objective":"glideTimeMod2","name":"@a[limit=1]"},"color": "gold"}'}
execute if score @a[limit=1] glideTimeMod2 matches 0..20 run setblock 0 1 0 oak_sign{Text1:'{"score":{"objective":"glideTimeMod2","name":"@a[limit=1]"},"color": "red"}'}
data modify entity @e[tag=glide,limit=1] CustomName set from block 0 1 0 Text1
scoreboard players reset @a[limit=1] spiritSneak
scoreboard players reset @a[limit=1] spiritSneak2

# Rogue Sword
execute if entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{display:{Name:'[{"text":"Rogue Sword","italic":false}]'}}}}] if score @a[limit=1] rogueRC matches 1.. unless score @a[limit=1] mana matches 50.. run function sbremake:items/rogue/mana
execute if entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{display:{Name:'[{"text":"Rogue Sword","italic":false}]'}}}}] if score @a[limit=1] rogueRC matches 1.. if score @a[limit=1] mana matches 50.. run function sbremake:items/rogue/main
scoreboard players reset @a[limit=1] rogueRC

# Armor of Wisdom
execute if entity @a[limit=1,nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet",tag:{display:{Name:'[{"text":"Helmet of Wisdom","italic":false,"color":"blue"}]'}}}]}] if entity @a[limit=1,nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate",tag:{display:{Name:'[{"text":"Chestplate of Wisdom","italic":false,"color":"blue"}]'}}}]}] if entity @a[limit=1,nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings",tag:{display:{Name:'[{"text":"Leggings of Wisdom","italic":false,"color":"blue"}]'}}}]}] if entity @a[limit=1,nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots",tag:{display:{Name:'[{"text":"Boots of Wisdom","italic":false,"color":"blue"}]'}}}]}] run function sbremake:items/wisdom/main
execute unless entity @a[limit=1,nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet",tag:{display:{Name:'[{"text":"Helmet of Wisdom","italic":false,"color":"blue"}]'}}},{Slot:102b,id:"minecraft:diamond_chestplate",tag:{display:{Name:'[{"text":"Chestplate of Wisdom","italic":false,"color":"blue"}]'}}},{Slot:101b,id:"minecraft:diamond_leggings",tag:{display:{Name:'[{"text":"Leggings of Wisdom","italic":false,"color":"blue"}]'}}},{Slot:100b,id:"minecraft:diamond_boots",tag:{display:{Name:'[{"text":"Boots of Wisdom","italic":false,"color":"blue"}]'}}}]}] run function sbremake:items/wisdom/remove