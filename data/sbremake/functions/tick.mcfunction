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
execute as @e[tag=!noName] in minecraft:overworld run function sbremake:nametags/main

# Actionbar
execute as @a[predicate=sbremake:items/tick/actionbar] run function sbremake:tick/actionbar

# Misc
execute store result score @a[limit=1] healthMod run scoreboard players get @a[limit=1] playerHealth
execute store result score @a[limit=1] healthVis run scoreboard players operation @a[limit=1] healthMod *= #5 const
execute at @a as @e[distance=50..] run function sbremake:tick/raycast_kill

## Mana Stuff
execute as @a unless score @s mana >= @s maxMana run scoreboard players add @s mana 1

function sbremake:utils/stats/extra_mana_give
execute as @a run function sbremake:utils/stats/mana
function sbremake:utils/stats/extra_mana_remove
### Percentage Mana
execute store result score #25 percentageMana run scoreboard players get @a[limit=1] maxMana
execute store result score #25 percentageManaMod run scoreboard players operation #25 percentageMana /= #4 const
execute store result score #25 percentageMana run scoreboard players get @a[limit=1] maxMana
scoreboard players set #40 percentageMana 40
scoreboard players operation #40 percentageMana *= @a[limit=1] maxMana
execute store result score @a percentageManaMod run scoreboard players operation #40 percentageMana /= #100 const
execute if score @a[limit=1] mana >= @a[limit=1] maxMana run execute store result score @a[limit=1] mana run scoreboard players get @a[limit=1] maxMana

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

# Wither Cloak
execute if entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:stone_sword",Count:1b,tag:{display:{Name:'[{"text":"Wither Cloak Sword","italic":false,"color":"dark_purple"}]'}}}}] if score @a[limit=1] mana >= #25 percentageManaMod run execute store result score @a[limit=1] cloakRC2 run scoreboard players get @a[limit=1] cloakRC
execute unless entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:stone_sword",Count:1b,tag:{display:{Name:'[{"text":"Wither Cloak Sword","italic":false,"color":"dark_purple"}]'}}}}] run execute store result score @a[limit=1] cloakRC run scoreboard players get @a[limit=1] cloakRC2
execute if score @a[limit=1] mana >= #25 percentageManaMod unless score @a[limit=1] cloakWarn matches 1.. run execute store result score @a[limit=1] cloakRC run scoreboard players get @a[limit=1] cloakRC2
execute if entity @a[limit=1,scores={cloakRC3=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",Count:1b,tag:{display:{Name:'[{"text":"Wither Cloak Sword","italic":false,"color":"dark_purple"}]'}}}}] unless score @a[limit=1] cloakWarn matches 1.. if score @a[limit=1] mana <= #25 percentageManaMod run function sbremake:items/cloak/manawarn
execute if entity @a[limit=1,scores={cloakRC=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",Count:1b,tag:{display:{Name:'[{"text":"Wither Cloak Sword","italic":false,"color":"dark_purple"}]'}}}}] if score @a[limit=1] mana >= #25 percentageManaMod unless score @a[limit=1] cloakWarn matches 1.. run function sbremake:items/cloak/main
execute as @r at @s run tp @e[tag=cloak1] ~2 ~ ~1
execute as @r at @s run tp @e[tag=cloak2] ~2 ~ ~-1
execute as @r at @s run tp @e[tag=cloak3] ~ ~ ~2
execute as @r at @s run tp @e[tag=cloak4] ~ ~ ~-2
execute as @r at @s run tp @e[tag=cloak5] ~-2 ~ ~1
execute as @r at @s run tp @e[tag=cloak6] ~-2 ~ ~-1
execute if score @a[limit=1] cloakWarn matches 1.. if score @a[limit=1] dmgTaken matches 1.. if score @a[limit=1] mana <= #25 percentageManaMod run scoreboard players set @a[limit=1] cloakRC 2
execute if score @a[limit=1] cloakWarn matches 1.. if score @a[limit=1] dmgTaken matches 1.. if score @a[limit=1] mana <= #25 percentageManaMod run scoreboard players set @a[limit=1] cloakRC2 2
execute if entity @r[scores={dmgTaken=1..}] if score @a[limit=1] cloakWarn matches 1.. run function sbremake:items/cloak/mana
execute as @a[scores={cloakRC=2..}] at @s run function sbremake:items/cloak/final
execute as @a[scores={cloakRC3=1..}] at @s run scoreboard players reset @a[limit=1] cloakRC3
execute if score @a[limit=1] mana <= #25 percentageManaMod run scoreboard players reset @a[limit=1] cloakRC
execute if score @a[limit=1] mana <= #25 percentageManaMod run scoreboard players reset @a[limit=1] cloakRC2
scoreboard players reset @a[limit=1] dmgTaken

# Sinseeker
execute store result score @s entityCount if entity @e[name="sinmark"]
execute if score @a[limit=1] entityCount matches 2.. run kill @e[name="sinmark",limit=1]
execute at @e[name="sinmark"] anchored feet run particle minecraft:dust 1 1 1 2 ~ ~ ~ 0.1 0.1 0.1 0.01 0 normal
execute as @r at @s if entity @s[scores={sinseekerRC2=1..},nbt={SelectedItem:{id:"minecraft:golden_hoe",Count:1b,tag:{display:{Name:'[{"text":"Sin","italic":false,"color":"dark_red"},{"text":"seeker Scythe","color":"dark_purple"}]'}}}}] if entity @a[limit=1,scores={sneak=1..}] unless entity @e[name="sinmark",limit=1] run tellraw @a {"text":"You do not have a marker set!","color":"red"}
execute as @r at @s if entity @s[scores={sinseekerRC2=1..},nbt={SelectedItem:{id:"minecraft:golden_hoe",Count:1b,tag:{display:{Name:'[{"text":"Sin","italic":false,"color":"dark_red"},{"text":"seeker Scythe","color":"dark_purple"}]'}}}}] if entity @a[limit=1,scores={sneak=1..}] if entity @e[name="sinmark",limit=1] run function sbremake:items/sinseeker/main
execute if score @a[limit=1] sinseekerRC matches 1.. unless entity @a[limit=1,scores={sneak2=1..}] if entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:golden_hoe",Count:1b,tag:{display:{Name:'[{"text":"Sin","italic":false,"color":"dark_red"},{"text":"seeker Scythe","color":"dark_purple"}]'}}}}] if entity @e[name="sinmark",limit=1] run function sbremake:items/sinseeker/sinmark2
execute if score @a[limit=1] sinseekerRC matches 1.. unless entity @a[limit=1,scores={sneak2=1..}] if entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:golden_hoe",Count:1b,tag:{display:{Name:'[{"text":"Sin","italic":false,"color":"dark_red"},{"text":"seeker Scythe","color":"dark_purple"}]'}}}}] unless entity @e[name="sinmark",limit=1] run function sbremake:items/sinseeker/sinmark
scoreboard players reset @a[limit=1] sinseekerRC
scoreboard players reset @a[limit=1] sinseekerRC2
scoreboard players reset @a[limit=1] sneak
scoreboard players reset @a[limit=1] sneak2

# AOTS
execute unless score @a[limit=1] aotsRotate matches 359 run scoreboard players add @a[limit=1] aotsRotate 20
execute if score @a[limit=1] aotsRotate matches 359.. run scoreboard players set @a[limit=1] aotsRotate 1
function sbremake:items/aots/pose
scoreboard players add @a[limit=1] aotsCD 1
execute as @e[name="aots"] run scoreboard players add @s aotsLife 1
execute as @e[name="aots",scores={aotsLife=60..}] run kill @s
execute if entity @a[limit=1,scores={aotsRC=1..},nbt={SelectedItem:{id:"minecraft:diamond_axe",Count:1b,tag:{display:{Name:'[{"text":"Axe of the Shredded","italic":false,"color":"gold"}]'}}}}] if score @a[limit=1] aotsCD matches 20.. run function sbremake:items/aots/main
scoreboard players reset @a[limit=1] aotsRC
execute as @e[name="aots"] at @s run tp @s ^ ^ ^0.5
execute at @e[name="aots",tag=stage1] as @e[distance=..2,type=!ender_dragon,tag=!spectator] run function sbremake:items/aots/stage1dmg
execute at @e[name="aots",tag=stage2] as @e[distance=..2,type=!ender_dragon,tag=!spectator] run function sbremake:items/aots/stage2dmg
execute at @e[name="aots",tag=stage3] as @e[distance=..2,type=!ender_dragon,tag=!spectator] run function sbremake:items/aots/stage3dmg
execute at @e[name="aots",tag=stage4] as @e[distance=..2,type=!ender_dragon,tag=!spectator] run function sbremake:items/aots/stage4dmg

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

# Angel's Ascent
execute as @e[tag=ascendAS] run scoreboard players add @s ascendLT 1
execute as @e[tag=ascendAS,scores={ascendLT=10..}] at @s align xz run particle minecraft:block minecraft:white_concrete ~0.5 ~-1 ~0.5 0 0 0 1 10 normal
execute as @e[scores={ascendLT=20..}] at @s run fill ~ ~-1 ~ ~ ~-1 ~ air replace minecraft:white_stained_glass
execute as @e[scores={ascendLT=20..}] run kill @s
execute at @a[limit=1] unless block ~ ~-0.5 ~ air if score @a[limit=1] ascendCharge matches ..2 run scoreboard players add @a[limit=1] ascendRecharge 1
execute at @a[limit=1] if block ~ ~-0.5 ~ air run scoreboard players reset @a[limit=1] ascendRecharge
execute if score @a[limit=1] ascendRecharge matches 22.. run function sbremake:items/ascent/recharge
execute unless entity @a[limit=1,nbt={SelectedItem:{}}] if score @a[limit=1] spookyMute matches 1 run execute if score @a[limit=1] ascendRC matches 1.. at @a[limit=1] if score @a[limit=1] ascendCharge matches ..0 at @a[limit=1] if block ~ ~-0.5 ~ air run tellraw @a[limit=1] [{"text":"ANGELS ASCENT","color":"red","bold":true},{"text":" You don't have enough charges to use this!","color":"red","bold":false}]
execute unless entity @a[limit=1,nbt={SelectedItem:{}}] if entity @a[limit=1,nbt={Inventory:[{Slot:101b,id:"minecraft:leather_leggings",tag:{display:{Name:'[{"text":"Angel\'s Ascent","italic":false,"color":"gold"}]'}}}]}] if score @a[limit=1] ascendRC matches 1.. at @a[limit=1] if score @a[limit=1] ascendCharge matches 1.. at @a[limit=1] if block ~ ~-0.5 ~ air run function sbremake:items/ascent/main
scoreboard players reset @a ascendRC

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

# Fire Freeze Staff
scoreboard players add @a[limit=1] ffsCD 1
execute as @e[tag=ffs] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[tag=ffs] run scoreboard players add @s ffsLife 1
execute as @e[tag=ffs1] run scoreboard players add @s ffsLife 1
execute as @e[tag=ffs2] run scoreboard players add @s ffsLife 1
execute as @e[tag=ffs3] run scoreboard players add @s ffsLife 1
execute as @e[tag=ffs4] run scoreboard players add @s ffsLife 1
execute as @e[tag=ffs5] run scoreboard players add @s ffsLife 1
execute as @e[tag=ffs6] run scoreboard players add @s ffsLife 1
execute as @e[tag=ffs7] run scoreboard players add @s ffsLife 1
execute as @e[tag=ffs8] run scoreboard players add @s ffsLife 1
execute as @e[tag=ffs1,scores={ffsLife=100..}] at @s run tp @s ^ ^ ^0.75 facing entity @e[tag=ffs,limit=1]
execute as @e[tag=ffs2,scores={ffsLife=100..}] at @s run tp @s ^ ^ ^0.75 facing entity @e[tag=ffs,limit=1]
execute as @e[tag=ffs3,scores={ffsLife=100..}] at @s run tp @s ^ ^ ^0.75 facing entity @e[tag=ffs,limit=1]
execute as @e[tag=ffs4,scores={ffsLife=100..}] at @s run tp @s ^ ^ ^0.75 facing entity @e[tag=ffs,limit=1]
execute as @e[tag=ffs5,scores={ffsLife=100..}] at @s run tp @s ^ ^ ^0.75 facing entity @e[tag=ffs,limit=1]
execute as @e[tag=ffs6,scores={ffsLife=100..}] at @s run tp @s ^ ^ ^0.75 facing entity @e[tag=ffs,limit=1]
execute as @e[tag=ffs7,scores={ffsLife=100..}] at @s run tp @s ^ ^ ^0.75 facing entity @e[tag=ffs,limit=1]
execute as @e[tag=ffs8,scores={ffsLife=100..}] at @s run tp @s ^ ^ ^0.75 facing entity @e[tag=ffs,limit=1]
execute as @e[tag=ffs] at @s if entity @e[tag=ffs1,distance=..0.39] run schedule function sbremake:items/ffs/final 5t append
execute as @e[tag=ffsMark] run data merge entity @s {NoAI:1b}
execute as @e[tag=ffsMark] run scoreboard players add @s ffsFT 1
execute as @e[scores={ffsFT=1..100}] at @s run particle block ice ~ ~1.75 ~ 0 0 0 1 10 normal
execute as @e[scores={ffsFT=101..200}] at @s run particle block blue_ice ~ ~1.75 ~ 0 0 0 0.05 3 normal
execute as @e[scores={ffsFT=1..100}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:packed_ice",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
execute as @e[scores={ffsFT=101..200}] run data merge entity @s {ArmorItems:[{},{},{},{id:"minecraft:ice",Count:1b}],ArmorDropChances:[0.085F,0.085F,0.085F,0.000F]}
execute as @e[scores={ffsFT=201..}] run data merge entity @s {NoAI:0b}
execute as @e[scores={ffsFT=201..}] run data merge entity @s {ArmorItems:[{},{},{},{}]}
execute as @e[scores={ffsFT=201..}] run tag @s remove ffsMark
execute as @e[scores={ffsFT=201..}] run scoreboard players reset @s ffsFT
execute at @e[tag=ffs] positioned ^2 ^ ^5 unless score @e[tag=ffs1,limit=1] ffsLife matches 100.. run tp @e[tag=ffs1] ~ ~ ~ facing entity @e[tag=ffs,limit=1]
execute at @e[tag=ffs] positioned ^-2 ^ ^5 unless score @e[tag=ffs2,limit=1] ffsLife matches 100.. run tp @e[tag=ffs2] ~ ~ ~ facing entity @e[tag=ffs,limit=1]
execute at @e[tag=ffs] positioned ^2 ^ ^-5 unless score @e[tag=ffs3,limit=1] ffsLife matches 100.. run tp @e[tag=ffs3] ~ ~ ~ facing entity @e[tag=ffs,limit=1]
execute at @e[tag=ffs] positioned ^-2 ^ ^-5 unless score @e[tag=ffs4,limit=1] ffsLife matches 100.. run tp @e[tag=ffs4] ~ ~ ~ facing entity @e[tag=ffs,limit=1]
execute at @e[tag=ffs] positioned ^5 ^ ^2 unless score @e[tag=ffs5,limit=1] ffsLife matches 100.. run tp @e[tag=ffs5] ~ ~ ~ facing entity @e[tag=ffs,limit=1]
execute at @e[tag=ffs] positioned ^5 ^ ^-2 unless score @e[tag=ffs6,limit=1] ffsLife matches 100.. run tp @e[tag=ffs6] ~ ~ ~ facing entity @e[tag=ffs,limit=1]
execute at @e[tag=ffs] positioned ^-5 ^ ^2 unless score @e[tag=ffs7,limit=1] ffsLife matches 100.. run tp @e[tag=ffs7] ~ ~ ~ facing entity @e[tag=ffs,limit=1]
execute at @e[tag=ffs] positioned ^-5 ^ ^-2 unless score @e[tag=ffs8,limit=1] ffsLife matches 100.. run tp @e[tag=ffs8] ~ ~ ~ facing entity @e[tag=ffs,limit=1]
function sbremake:items/ffs/dance
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^ ^0.5 ^5 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^ ^0.5 ^-5 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^5 ^0.5 ^ 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^-5 ^0.5 ^ 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^ ^0.5 ^5 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^ ^0.5 ^-5 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^5 ^0.5 ^ 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^-5 ^0.5 ^ 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^ ^1.5 ^5 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^ ^1.5 ^-5 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^5 ^1.5 ^ 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^-5 ^1.5 ^ 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^ ^1.5 ^5 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^ ^1.5 ^-5 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^5 ^1.5 ^ 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^-5 ^1.5 ^ 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^ ^2.5 ^5 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^ ^2.5 ^-5 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^5 ^2.5 ^ 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^-5 ^2.5 ^ 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^ ^2.5 ^5 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^ ^2.5 ^-5 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^5 ^2.5 ^ 0 0 0 0 0 normal
execute as @e[tag=ffs] at @s run particle dust 0 0 0 1 ^-5 ^2.5 ^ 0 0 0 0 0 normal
execute if entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:dandelion",tag:{display:{Name:'[{"text":"Fire Freeze Staff","italic":false,"color":"dark_purple"}]'}}}}] if score @a[limit=1] ffsRC matches 1.. unless score @a[limit=1] mana matches ..499 unless score @a[limit=1] ffsCD matches 200.. run function sbremake:items/ffs/cd
execute if entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:dandelion",tag:{display:{Name:'[{"text":"Fire Freeze Staff","italic":false,"color":"dark_purple"}]'}}}}] if score @a[limit=1] ffsRC matches 1.. if score @a[limit=1] mana matches ..499 unless score @a[limit=1] ffsCD matches 200.. run function sbremake:items/ffs/cd
execute if entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:dandelion",tag:{display:{Name:'[{"text":"Fire Freeze Staff","italic":false,"color":"dark_purple"}]'}}}}] if score @a[limit=1] ffsRC matches 1.. if score @a[limit=1] mana matches ..499 if score @a[limit=1] ffsCD matches 200.. run function sbremake:items/ffs/mana
execute if entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:dandelion",tag:{display:{Name:'[{"text":"Fire Freeze Staff","italic":false,"color":"dark_purple"}]'}}}}] if score @a[limit=1] ffsRC matches 1.. unless score @a[limit=1] mana matches ..499 if score @a[limit=1] ffsCD matches 200.. run function sbremake:items/ffs/main
scoreboard players reset @a[limit=1] ffsRC

# Armor of Wisdom
execute if entity @a[limit=1,nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet",tag:{display:{Name:'[{"text":"Helmet of Wisdom","italic":false,"color":"blue"}]'}}}]}] if entity @a[limit=1,nbt={Inventory:[{Slot:102b,id:"minecraft:diamond_chestplate",tag:{display:{Name:'[{"text":"Chestplate of Wisdom","italic":false,"color":"blue"}]'}}}]}] if entity @a[limit=1,nbt={Inventory:[{Slot:101b,id:"minecraft:diamond_leggings",tag:{display:{Name:'[{"text":"Leggings of Wisdom","italic":false,"color":"blue"}]'}}}]}] if entity @a[limit=1,nbt={Inventory:[{Slot:100b,id:"minecraft:diamond_boots",tag:{display:{Name:'[{"text":"Boots of Wisdom","italic":false,"color":"blue"}]'}}}]}] run function sbremake:items/wisdom/main
execute unless entity @a[limit=1,nbt={Inventory:[{Slot:103b,id:"minecraft:diamond_helmet",tag:{display:{Name:'[{"text":"Helmet of Wisdom","italic":false,"color":"blue"}]'}}},{Slot:102b,id:"minecraft:diamond_chestplate",tag:{display:{Name:'[{"text":"Chestplate of Wisdom","italic":false,"color":"blue"}]'}}},{Slot:101b,id:"minecraft:diamond_leggings",tag:{display:{Name:'[{"text":"Leggings of Wisdom","italic":false,"color":"blue"}]'}}},{Slot:100b,id:"minecraft:diamond_boots",tag:{display:{Name:'[{"text":"Boots of Wisdom","italic":false,"color":"blue"}]'}}}]}] run function sbremake:items/wisdom/remove

# Staff of Life
execute as @e[tag=lifeOrb] at @s run schedule function sbremake:items/sol/particles 4t append
execute as @e[tag=shadowOrb] at @s run schedule function sbremake:items/sol/particles2 4t append
execute as @a[limit=1] at @s run tp @e[tag=sol] ^ ^1 ^2
effect give @e[tag=sol] resistance 1 4 true
execute as @e[tag=lifeOrb] at @s if block ~ ~ ~ air run tp @s ^ ^ ^-0.2
execute as @e[tag=shadowOrb] at @s if block ~ ~ ~ air run tp @s ^ ^ ^-0.2
execute as @e[tag=lifeOrb] run scoreboard players add @s orbLife 1
execute as @e[tag=shadowOrb] run scoreboard players add @s orbLife 1
execute as @e[scores={orbLife=200..}] run function sbremake:items/sol/death
scoreboard players add @a[limit=1] lifeCD 1
scoreboard players add @a[limit=1] shadowCD 1
execute at @e[tag=lifeMark] run particle dust 0.169 1 0 1 ~ ~1.5 ~ 0.5 0.5 0.5 1 2 normal
execute at @e[tag=shadowMark] run particle dust 0.8 0 1 1 ~ ~1.5 ~ 0.5 0.5 0.5 1 2 normal
execute as @e[tag=lifeMark] run effect give @s[tag=!undead] instant_health 1 0 true
execute as @e[tag=lifeMark] run effect give @s[tag=undead] instant_damage 1 0 true 
execute as @e[tag=shadowMark] run schedule function sbremake:items/sol/dmg 10t append
execute at @e[tag=lifeOrb] run tag @e[distance=..3,tag=!spectator] add lifeMark
execute at @e[tag=lifeOrb] run tag @e[distance=3..] remove lifeMark
execute at @e[tag=shadowOrb] run tag @e[distance=..3,tag=!spectator] add shadowMark
execute at @e[tag=shadowOrb] run tag @e[distance=3..] remove shadowMark
execute unless entity @e[tag=lifeOrb] run tag @e remove lifeMark
execute unless entity @e[tag=shadowOrb] run tag @e remove shadowMark
execute store success score @a[limit=1] solSuccess if score @a[limit=1] solSuccess matches 0 if entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:red_tulip",Count:1b,tag:{display:{Name:'[{"text":"Staff of Life","italic":false,"color":"gold"}]'}}}}] run function sbremake:items/sol/summon
execute unless entity @a[limit=1,nbt={SelectedItem:{id:"minecraft:red_tulip",Count:1b,tag:{display:{Name:'[{"text":"Staff of Life","italic":false,"color":"gold"}]'}}}}] run function sbremake:items/sol/destroy
execute if entity @e[tag=sol,nbt={HurtTime:10s}] unless score @a[limit=1] lifeCD matches 240.. run function sbremake:items/sol/cd
execute if entity @e[tag=sol,nbt={HurtTime:10s}] if score @a[limit=1] mana <= @a[limit=1] percentageManaMod if score @a[limit=1] lifeCD matches 240.. run function sbremake:items/sol/mana
execute if entity @e[tag=sol,nbt={HurtTime:10s}] unless score @a[limit=1] mana <= @a[limit=1] percentageManaMod if score @a[limit=1] lifeCD matches 240.. run function sbremake:items/sol/final
execute if entity @a[limit=1,scores={solRC=1..},nbt={SelectedItem:{id:"minecraft:red_tulip",Count:1b,tag:{display:{Name:'[{"text":"Staff of Life","italic":false,"color":"gold"}]'}}}}] unless score @a[limit=1] shadowCD matches 240.. run function sbremake:items/sol/cd
execute if entity @a[limit=1,scores={solRC=1..},nbt={SelectedItem:{id:"minecraft:red_tulip",Count:1b,tag:{display:{Name:'[{"text":"Staff of Life","italic":false,"color":"gold"}]'}}}}] if score @a[limit=1] mana <= @a[limit=1] percentageManaMod if score @a[limit=1] shadowCD matches 240.. run function sbremake:items/sol/mana
execute if entity @a[limit=1,scores={solRC=1..},nbt={SelectedItem:{id:"minecraft:red_tulip",Count:1b,tag:{display:{Name:'[{"text":"Staff of Life","italic":false,"color":"gold"}]'}}}}] unless score @a[limit=1] mana <= @a[limit=1] percentageManaMod if score @a[limit=1] shadowCD matches 240.. run function sbremake:items/sol/main
execute if score @a[limit=1] gamemodeType matches 3 run function sbremake:items/sol/destroy
scoreboard players reset @a[limit=1] solRC