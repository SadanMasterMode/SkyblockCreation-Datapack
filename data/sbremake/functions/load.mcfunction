# Create objectives
scoreboard objectives add bootsIntelligence dummy
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time
scoreboard objectives add itemCD dummy
scoreboard objectives add chestplateFerocity dummy
scoreboard objectives add const dummy
scoreboard objectives add gamemode dummy
scoreboard objectives add itemFerocity dummy
scoreboard objectives add bootsFerocity dummy
scoreboard objectives add const0 dummy
scoreboard objectives add bootsDurability dummy
scoreboard objectives add fallingEdge dummy
scoreboard objectives add const250 dummy
scoreboard objectives add intelligence dummy
scoreboard objectives add itemDurability dummy
scoreboard objectives add entityCount dummy
scoreboard objectives add rcMana minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add chestplateCD dummy
scoreboard objectives add manaWarn dummy
scoreboard objectives add bootsCD dummy
scoreboard objectives add damage dummy
scoreboard objectives add bootsDefense dummy
scoreboard objectives add freezeTime dummy
scoreboard objectives add arrowDmg2 dummy
scoreboard objectives add itemStrength dummy
scoreboard objectives add leggingsIntelligence dummy
scoreboard objectives add TNTGoBoom dummy
scoreboard objectives add headDefense dummy
scoreboard objectives add timeze dummy
scoreboard objectives add chestplateDamage dummy
scoreboard objectives add cd dummy
scoreboard objectives add bootsHealth dummy
scoreboard objectives add health health
scoreboard objectives add rightClick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add mana dummy
scoreboard objectives add headCD dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add chestplateDefense dummy
scoreboard objectives add leggingsHealth dummy
scoreboard objectives add arrowDmg dummy
scoreboard objectives add rc69 minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add strength dummy
scoreboard objectives add leggingsFerocity dummy
scoreboard objectives add maxMana dummy
scoreboard objectives add headFerocity dummy
scoreboard objectives add bootsDamage dummy
scoreboard objectives add ghastlyConsequences dummy
scoreboard objectives add leggingsDurability dummy
scoreboard objectives add itemIntelligence dummy
scoreboard objectives add Test dummy
scoreboard objectives add leggingsDamage dummy
scoreboard objectives add healthVis dummy
scoreboard objectives add test dummy
scoreboard objectives add durability dummy
scoreboard objectives add chestplateHealth dummy
scoreboard objectives add chestplateDurability dummy
scoreboard objectives add success dummy
scoreboard objectives add healthMod dummy
scoreboard objectives add endResult dummy
scoreboard objectives add headDamage dummy
scoreboard objectives add ferocity dummy
scoreboard objectives add nx dummy
scoreboard objectives add ny dummy
scoreboard objectives add nz dummy
scoreboard objectives add chestplateStrength dummy
scoreboard objectives add timer dummy
scoreboard objectives add leggingsStrength dummy
scoreboard objectives add arrowKill dummy
scoreboard objectives add headStrength dummy
scoreboard objectives add headIntelligence dummy
scoreboard objectives add bootsStrength dummy
scoreboard objectives add sputingWand minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add dmgTaken minecraft.custom:minecraft.damage_resisted
scoreboard objectives add rc70 minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add rand dummy
scoreboard objectives add magicDamage dummy
scoreboard objectives add damageHologram dummy

scoreboard objectives add wimpactPart dummy
scoreboard objectives add wimpactPartToggle dummy
scoreboard objectives add infiniteMana dummy
scoreboard objectives add infiniteManaToggle dummy
scoreboard objectives add defense dummy
scoreboard objectives add maxHealth dummy
scoreboard objectives add maxHealthMod dummy
scoreboard objectives add defenseMod dummy
scoreboard objectives add solSuccess dummy
scoreboard objectives add solRC minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add orbLife dummy
scoreboard objectives add percentageMana dummy
scoreboard objectives add percentageManaMod dummy
team add notPlayer
team add player
team add noName
team add green
team add red
scoreboard objectives add extraMana dummy
scoreboard objectives add life dummy
scoreboard objectives add solMaxDmg minecraft.custom:minecraft.damage_dealt
scoreboard objectives add solMaxDmg2 dummy
scoreboard objectives add solMaxDmg3 dummy
scoreboard objectives add gamemodeType dummy
scoreboard objectives add wimpactTemp dummy
scoreboard objectives add damageTmp dummy
scoreboard objectives add dmgResis minecraft.custom:minecraft.damage_resisted
scoreboard objectives add fakePlayers dummy
scoreboard objectives add vdvcasttemp dummy
scoreboard objectives add recursive dummy
tellraw @a [{"text": "Objectives done","color": "dark_gray"}]

# Typewriter
scoreboard objectives add cw_loops dummy
scoreboard objectives add text_effects dummy
scoreboard players add title text_effects 0
scoreboard players add subtitle text_effects 0
scoreboard players add actionbar text_effects 0
scoreboard players add delay text_effects 0
scoreboard players add sounds text_effects 0

# Set mana
function sbremake:utils/stats/stats
execute store result score @a mana run scoreboard players get @a[limit=1] maxMana
tellraw @a [{"text": "Mana done","color": "dark_gray"}]

# Set boss variables.
scoreboard players set #killedDwindler fakePlayers 0
tellraw @a [{"text": "Boss vars done","color": "dark_gray"}]

# Set fakeplayers
scoreboard players set #debug-mode fakePlayers 0
scoreboard players set #lag-reduction fakePlayers 0

# Misc #1
bossbar remove objective
execute if entity @e[tag=objective] run bossbar add objective [{"text": "Current Objective:","color": "#FFA500"},{"text": " FOLLOW THE MARKER","color": "red","bold": true}]
bossbar set objective color red
bossbar set objective value 10
bossbar set objective max 10
bossbar set objective players @a
scoreboard players set @a wimpactPart 0
scoreboard players set @a infiniteMana 0
scoreboard players set @a solSuccess 0
scoreboard players set @a solMaxDmg2 0
scoreboard players set @a dhC1O1 0
scoreboard players set @a dhC1O2 0
scoreboard players set @a dhRep 0
scoreboard players set @a dhPause 0
scoreboard players set @a dhDialogueProgress 0
scoreboard players set @a dhGleamingSpawn 0
scoreboard players set @a dhDetermination 0
execute as @a run function sbremake:world/dh/dh_reset_triggers
tellraw @a [{"text": "Misc #1 done","color": "dark_gray"}]

# Raycasts
kill @e[tag=raycast]
summon minecraft:marker ~ ~ ~ {UUID:[I;-1953028026,-856931226,-1240793240,-1598231354],Invulnerable:1b,NoGravity:1b,Tags:["raycast1","raycast"],data:{SBRemake:{UUID:'8b972846-ccec-4466-b60a-ff68a0bcecc6'}}}
summon minecraft:marker ~ ~ ~ {UUID:[I;-1359934995,-1333768250,-1836555244,-511399816],Invulnerable:1b,NoGravity:1b,Tags:["raycast2","raycast"],data:{SBRemake:{UUID:'aef109ed-b080-4fc6-9288-6414e184a878'}}}
summon minecraft:marker ~ ~ ~ {UUID:[I;-481596867,-206420554,-1462093073,-1031935036],Invulnerable:1b,NoGravity:1b,Tags:["raycast3","raycast"],data:{SBRemake:{UUID:'e34b6a3d-f3b2-45b6-a8da-3aefc27debc4'}}}
tellraw @a [{"text": "Raycasts done","color": "dark_gray"}]

# Forceloading (chest + sign)
forceload add 3000000 3000000
setblock 3000000 0 3000000 chest
setblock 3000000 1 3000000 oak_sign
kill @e[tag=cw_typewriter]
setblock 3000000 1 3000001 air
setblock 3000000 0 3000001 air
execute positioned 3000000 0 3000001 run function sbremake:utils/typewriter/setup

# Const Variables
scoreboard players set #40 percentageMana 40

scoreboard players set #0 const 0
scoreboard players set #1 const 1
scoreboard players set #2 const 2
scoreboard players set #3 const 3
scoreboard players set #4 const 4
scoreboard players set #5 const 5
scoreboard players set #6 const 6
scoreboard players set #7 const 7
scoreboard players set #8 const 8
scoreboard players set #9 const 9
scoreboard players set #10 const 10
scoreboard players set #11 const 11
scoreboard players set #12 const 12
scoreboard players set #20 const 20
scoreboard players set #24 const 24
scoreboard players set #25 const 25
scoreboard players set #30 const 30
scoreboard players set #36 const 36
scoreboard players set #50 const 50
scoreboard players set #100 const 100
scoreboard players set #249 const 249
scoreboard players set #250 const 250

# Misc
execute as @e[tag=decayedHusk] run data merge entity @s {Pose:{Head:[334f,0f,0f]}}
execute as @e[tag=decayedHusk] run tp @s 24.5 54.24 22.5
kill 38b904a1-5164-476e-b23d-e86630ed0445
execute if score #inWorld fakePlayers matches 1 run summon minecraft:marker ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Tags:["objectiveMarker"],UUID:[I;951649441,1365526382,-1304565658,820839493],data:{SBRemake:{UUID:"38b904a1-5164-476e-b23d-e86630ed0445"}}}
setblock 0 0 0 air
tellraw @a [{"text": "Misc done \n","color": "dark_gray"}]
team join player @a
team join notPlayer @e[type=!player]
team modify noName nametagVisibility never
team modify player collisionRule never
team modify player seeFriendlyInvisibles false
team modify green color green
team modify red color red
scoreboard players operation @a maxHealthMod /= @a const100
scoreboard players operation @a defenseMod /= @a const100
scoreboard players operation @a maxHealthMod *= @a const25
scoreboard players operation @a defenseMod *= @a const25
scoreboard players operation @a extraMana += @a maxHealthMod
scoreboard players operation @a extraMana += @a defenseMod
scoreboard players set @a extraMana 0
execute store result score #old-slot fakePlayers run data get entity @a[limit=1] SelectedItemSlot

gamerule commandBlockOutput false

# Initialization message. Everything worked!
tellraw @a [{"text": "Hey!\n\n","color": "red","bold": true},{"text": "Thanks for playing my map/datapack. If you have any questions or concerns,feel free to contact me :)\n\n","color": "red","bold": false},{"text": "Socials\n","color": "gray","bold": false},{"text": "Discord: @Sadan (Master Mode)#2278\n","color": "dark_gray","bold": false},{"text": "Twitter: @SadanMasterMode\n","color": "aqua","bold": false},{"text": "Forums: https://hypixel.net/members/sadan_mastermode.3210268/","color": "gold","bold": false,"clickEvent": {"action": "open_url","value": "https://hypixel.net/members/sadan_mastermode.3210268/"}}]
tellraw @a {"text": " "}
tellraw @a {"text": "Disclaimer: ALL credit goes to Hypixel for their item ideas and stuff. They deserve the credit for making an amazing server, join it at mc.hypixel.net!","color": "red"}