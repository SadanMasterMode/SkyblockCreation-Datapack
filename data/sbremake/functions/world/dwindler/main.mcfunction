# Misc
execute store result score @p SpellTicks run data get entity @e[tag=dwindler,limit=1] SpellTicks 1
execute if score @p SpellTicks matches 11.. run data merge entity @e[tag=dwindler,limit=1] {SpellTicks: 10}
execute as @e[tag=inDwindlerBoss] run scoreboard players add @s fangCD 1
execute as @e[tag=inDwindlerBoss] run scoreboard players add @s vexCD 1
execute as @e[tag=inDwindlerBoss] run scoreboard players add @s illagerCD 1
execute as @e[tag=inDwindlerBoss] run scoreboard players add @s bombCD 1
attribute @e[tag=dwindler,limit=1] generic.movement_speed base set 0
attribute @e[tag=dwindler,limit=1] generic.knockback_resistance base set 100
effect give @e[tag=dwindler] resistance 1000000 4 true

execute as @e[tag=dwindler,nbt={HurtTime:10s}] on attacker if entity @s[scores={dmgDealt=1..}] run function sbremake:world/dwindler/melee_dmg

# Fang Attack
execute as @a[tag=inDwindlerBoss,scores={fangCD=40..}] if score @e[tag=dwindler,limit=1] health matches 400..500 at @s run playsound entity.evoker_fangs.attack master @s ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={fangCD=40..}] if score @e[tag=dwindler,limit=1] health matches 400..500 at @s run summon evoker_fangs ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={fangCD=40..}] if score @e[tag=dwindler,limit=1] health matches 400..500 at @s run scoreboard players reset @s fangCD

execute as @a[tag=inDwindlerBoss,scores={fangCD=30..}] if score @e[tag=dwindler,limit=1] health matches 300..400 at @s run playsound entity.evoker_fangs.attack master @s ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={fangCD=30..}] if score @e[tag=dwindler,limit=1] health matches 300..400 at @s run summon evoker_fangs ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={fangCD=30..}] if score @e[tag=dwindler,limit=1] health matches 300..400 at @s run scoreboard players reset @s fangCD

execute as @a[tag=inDwindlerBoss,scores={fangCD=20..}] if score @e[tag=dwindler,limit=1] health matches 200..300 at @s run playsound entity.evoker_fangs.attack master @s ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={fangCD=20..}] if score @e[tag=dwindler,limit=1] health matches 200..300 at @s run summon evoker_fangs ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={fangCD=20..}] if score @e[tag=dwindler,limit=1] health matches 200..300 at @s run scoreboard players reset @s fangCD

execute as @a[tag=inDwindlerBoss,scores={fangCD=10..}] if score @e[tag=dwindler,limit=1] health matches 100..200 at @s run playsound entity.evoker_fangs.attack master @s ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={fangCD=10..}] if score @e[tag=dwindler,limit=1] health matches 100..200 at @s run summon evoker_fangs ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={fangCD=10..}] if score @e[tag=dwindler,limit=1] health matches 100..200 at @s run scoreboard players reset @s fangCD

execute as @a[tag=inDwindlerBoss,scores={fangCD=5..}] if score @e[tag=dwindler,limit=1] health matches ..100 at @s run playsound entity.evoker_fangs.attack master @s ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={fangCD=5..}] if score @e[tag=dwindler,limit=1] health matches ..100 at @s run summon evoker_fangs ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={fangCD=5..}] if score @e[tag=dwindler,limit=1] health matches ..100 at @s run scoreboard players reset @s fangCD

# Vex Ritual
execute as @a[tag=inDwindlerBoss,scores={vexCD=120..}] if score @e[tag=dwindler,limit=1] health matches 200..300 at @e[tag=dwindler,limit=1] run playsound entity.evoker.prepare_summon master @s ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={vexCD=120..}] if score @e[tag=dwindler,limit=1] health matches 200..300 at @e[tag=dwindler,limit=1] run summon vex ~ ~1 ~ {Health: 5,DeathLootTable:"minecraft:empty"}
execute as @a[tag=inDwindlerBoss,scores={vexCD=120..}] if score @e[tag=dwindler,limit=1] health matches 200..300 at @e[tag=dwindler,limit=1] run scoreboard players reset @s vexCD

execute as @a[tag=inDwindlerBoss,scores={vexCD=80..}] if score @e[tag=dwindler,limit=1] health matches 100..200 at @e[tag=dwindler,limit=1] run playsound entity.evoker.prepare_summon master @s ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={vexCD=80..}] if score @e[tag=dwindler,limit=1] health matches 100..200 at @e[tag=dwindler,limit=1] run summon vex ~ ~1 ~ {Health: 7,DeathLootTable:"minecraft:empty"}
execute as @a[tag=inDwindlerBoss,scores={vexCD=80..}] if score @e[tag=dwindler,limit=1] health matches 100..200 at @e[tag=dwindler,limit=1] run scoreboard players reset @s vexCD

execute as @a[tag=inDwindlerBoss,scores={vexCD=40..}] if score @e[tag=dwindler,limit=1] health matches ..100 at @e[tag=dwindler,limit=1] run playsound entity.evoker.prepare_summon master @s ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={vexCD=40..}] if score @e[tag=dwindler,limit=1] health matches ..100 at @e[tag=dwindler,limit=1] run summon vex ~ ~1 ~ {Health: 9,DeathLootTable:"minecraft:empty"}
execute as @a[tag=inDwindlerBoss,scores={vexCD=40..}] if score @e[tag=dwindler,limit=1] health matches ..100 at @e[tag=dwindler,limit=1] run scoreboard players reset @s vexCD

# Illager Summon
execute as @a[tag=inDwindlerBoss,scores={illagerCD=200..}] if score @e[tag=dwindler,limit=1] health matches 100..200 run playsound entity.evoker.prepare_wololo master @s ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={illagerCD=200..}] if score @e[tag=dwindler,limit=1] health matches 100..200 run summon pillager 57 43 -51 {Health: 12,DeathLootTable:"minecraft:empty", HandItems: [{id: "minecraft:crossbow", Count: 1}], HandDropChances: [0.00f]}
execute as @a[tag=inDwindlerBoss,scores={illagerCD=200..}] if score @e[tag=dwindler,limit=1] health matches 100..200 at @e[tag=dwindler,limit=1] run summon vindicator 57 43 -51 {Health: 15,DeathLootTable:"minecraft:empty"}
execute as @a[tag=inDwindlerBoss,scores={illagerCD=200..}] if score @e[tag=dwindler,limit=1] health matches 100..200 at @e[tag=dwindler,limit=1] run scoreboard players reset @s illagerCD

execute as @a[tag=inDwindlerBoss,scores={illagerCD=100..}] if score @e[tag=dwindler,limit=1] health matches ..100 run playsound entity.evoker.prepare_wololo master @s ~ ~ ~
execute as @a[tag=inDwindlerBoss,scores={illagerCD=100..}] if score @e[tag=dwindler,limit=1] health matches ..100 at @e[tag=dwindler,limit=1] run summon pillager 57 43 -51 {Health: 15,DeathLootTable:"minecraft:empty", HandItems: [{id: "minecraft:crossbow", Count: 1}], HandDropChances: [0.00f]}
execute as @a[tag=inDwindlerBoss,scores={illagerCD=100..}] if score @e[tag=dwindler,limit=1] health matches ..100 at @e[tag=dwindler,limit=1] run summon vindicator 57 43 -51 {Health: 19,DeathLootTable:"minecraft:empty"}
execute as @a[tag=inDwindlerBoss,scores={illagerCD=100..}] if score @e[tag=dwindler,limit=1] health matches ..100 at @e[tag=dwindler,limit=1] run scoreboard players reset @s illagerCD

# Bomb Summons
execute as @a[tag=inDwindlerBoss,scores={bombCD=60}] if score @e[tag=dwindler,limit=1] health matches ..100 at @e[tag=dwindler,limit=1] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {Invisible: 1b, Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, ArmorItems: [{}, {}, {}, {id: "player_head", Count: 1b, tag: {SkullOwner: {Id: [I; -2016161354, 1281444306, -2113520517, -1859305578], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZTExNWM3OTY4ZWMzNzcxZWU5ZmY2YWU2YmNhMmQ1YmEzOTYyYWE3MjdhNGZhOGQzNzYwOGU0YzliZjE1MTJiYiJ9fX0="}]}}}}], HandItems: [{}, {}], CustomName: '{"text":"SNOW BOMB","color":"white","bold":true}', CustomNameVisible: 1b, Tags: ["snow_bomb"], DisabledSlots: 4144959}
execute as @a[tag=inDwindlerBoss,scores={bombCD=120}] if score @e[tag=dwindler,limit=1] health matches ..100 at @e[tag=dwindler,limit=1] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {Invisible: 1b, Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, ArmorItems: [{}, {}, {}, {id: "player_head", Count: 1b, tag: {SkullOwner: {Id: [I; 1838488378, 1581860101, -2069963498, 1581973248], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDZlMGEzY2M2NjU3ZDQyMDU4MThmZmVmNWNjN2I3ZTM2YzM4MWQ0MjY5YjY5MDEwYzcyOTdhNmZhNjhkODNkNyJ9fX0="}]}}}}], HandItems: [{}, {}], CustomName: '{"text":"WOUNDING BOMB","color":"red","bold":true}', CustomNameVisible: 1b, Tags: ["wound_bomb"], DisabledSlots: 4144959}
execute as @a[tag=inDwindlerBoss,scores={bombCD=180}] if score @e[tag=dwindler,limit=1] health matches ..100 at @e[tag=dwindler,limit=1] if block ~ ~ ~ air run summon armor_stand ~ ~ ~ {Invisible: 1b, Invulnerable: 1b, NoBasePlate: 1b, NoGravity: 1b, Small: 1b, ArmorItems: [{}, {}, {}, {id: "player_head", Count: 1b, tag: {SkullOwner: {Id: [I; -591746226, -986300301, -1101840507, -857640214], Properties: {textures: [{Value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTM4MjYxODFjZTkwMTJiNjY1ODY1ZjNhYzAwNjYzMDdiNGQwMmRhMjgxNTQwMTA0ZTA0NjFmZmVmYTc0NTlmZCJ9fX0="}]}}}}], HandItems: [{}, {}], CustomName: '{"text":"ENDER BOMB","color":"light_purple","bold":true}', CustomNameVisible: 1b, Tags: ["ender_bomb"], DisabledSlots: 4144959}
execute as @a[tag=inDwindlerBoss,scores={bombCD=61}] run spreadplayers 57 -51 5 5 false @e[tag=snow_bomb,tag=!dwindlerTeleported]
execute as @a[tag=inDwindlerBoss,scores={bombCD=61}] run execute as @e[tag=snow_bomb,tag=!dwindlerTeleported] run data modify entity @s Pos[1] set from entity @e[tag=dwindlerSpreadplayers,limit=1] Pos[1]
execute as @a[tag=inDwindlerBoss,scores={bombCD=61}] run tag @e[tag=snow_bomb,tag=!dwindlerTeleported] add dwindlerTeleported
execute as @a[tag=inDwindlerBoss,scores={bombCD=121}] run spreadplayers 57 -51 5 5 false @e[tag=wound_bomb,tag=!dwindlerTeleported]
execute as @a[tag=inDwindlerBoss,scores={bombCD=121}] run execute as @e[tag=wound_bomb,tag=!dwindlerTeleported] run data modify entity @s Pos[1] set from entity @e[tag=dwindlerSpreadplayers,limit=1] Pos[1]
execute as @a[tag=inDwindlerBoss,scores={bombCD=121}] run tag @e[tag=wound_bomb,tag=!dwindlerTeleported] add dwindlerTeleported
execute as @a[tag=inDwindlerBoss,scores={bombCD=181}] run spreadplayers 57 -51 5 5 false @e[tag=ender_bomb,tag=!dwindlerTeleported]
execute as @a[tag=inDwindlerBoss,scores={bombCD=181}] run execute as @e[tag=ender_bomb,tag=!dwindlerTeleported] run data modify entity @s Pos[1] set from entity @e[tag=dwindlerSpreadplayers,limit=1] Pos[1]
execute as @a[tag=inDwindlerBoss,scores={bombCD=181}] run tag @e[tag=ender_bomb,tag=!dwindlerTeleported] add dwindlerTeleported
execute as @a[tag=inDwindlerBoss,scores={bombCD=181..}] if score @e[tag=dwindler,limit=1] health matches ..100 at @e[tag=dwindler,limit=1] run scoreboard players reset @s bombCD

# Bomb Effects
execute at @e[tag=snow_bomb] as @a[distance=..1] run function sbremake:world/dwindler/snow_bomb
execute at @e[tag=wound_bomb] as @a[distance=..1] run function sbremake:world/dwindler/wound_bomb
execute at @e[tag=ender_bomb] as @a[distance=..1] run function sbremake:world/dwindler/ender_bomb

# Health Notifications + Smoke Screen
execute as @e[tag=dwindler,scores={health=..400},tag=!400] at @s run playsound entity.wither.hurt master @p ~ ~ ~
execute as @e[tag=dwindler,scores={health=..400},tag=!400] at @s run summon minecraft:illusioner ~ ~ ~ {Team: notPlayer, ActiveEffects: [{Id: 11, Duration: 20, Amplifier: 5, ShowParticles: 0b}]}
execute as @e[tag=dwindler,scores={health=..400},tag=!400] at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.1 1000 normal
execute as @e[tag=dwindler,scores={health=..400}] at @s run tp @s 51 44 -57 facing entity @p
execute as @e[tag=dwindler,scores={health=..400},tag=!400] at @s run tellraw @a [{"text": "The creature appears to be more angry...","italic": true,"color": "dark_gray"}]
execute as @e[tag=dwindler,scores={health=..400},tag=!400] at @s run tag @s add 400

execute as @e[tag=dwindler,scores={health=..300},tag=!300] at @s run playsound entity.wither.hurt master @p ~ ~ ~
execute as @e[tag=dwindler,scores={health=..300},tag=!300] at @s run summon minecraft:illusioner ~ ~ ~ {Team: notPlayer, ActiveEffects: [{Id: 11, Duration: 20, Amplifier: 5, ShowParticles: 0b}]}
execute as @e[tag=dwindler,scores={health=..300},tag=!300] at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.1 1000 normal
execute as @e[tag=dwindler,scores={health=..300}] at @s run tp @s 64 44 -48 facing entity @p
execute as @e[tag=dwindler,scores={health=..300},tag=!300] at @s run tellraw @a [{"text": "The creature gets angrier...","italic": true,"color": "dark_gray"}]
execute as @e[tag=dwindler,scores={health=..300},tag=!300] at @s run tag @s add 300

execute as @e[tag=dwindler,scores={health=..200},tag=!200] at @s run playsound entity.wither.hurt master @p ~ ~ ~
execute as @e[tag=dwindler,scores={health=..200},tag=!200] at @s run summon minecraft:illusioner ~ ~ ~ {Team: notPlayer, ActiveEffects: [{Id: 11, Duration: 20, Amplifier: 5, ShowParticles: 0b}]}
execute as @e[tag=dwindler,scores={health=..200},tag=!200] at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.1 1000 normal
execute as @e[tag=dwindler,scores={health=..200}] at @s run tp @s 51 44 -57 facing entity @p
execute as @e[tag=dwindler,scores={health=..200},tag=!200] at @s run tellraw @a [{"text": "The creature gets even angrier...","italic": true,"color": "dark_gray"}]
execute as @e[tag=dwindler,scores={health=..200},tag=!200] at @s run tag @s add 200

execute as @e[tag=dwindler,scores={health=..100},tag=!100] at @s run playsound entity.wither.hurt master @p ~ ~ ~
execute as @e[tag=dwindler,scores={health=..100},tag=!100] at @s run summon minecraft:illusioner ~ ~ ~ {Team: notPlayer, ActiveEffects: [{Id: 11, Duration: 20, Amplifier: 5, ShowParticles: 0b}]}
execute as @e[tag=dwindler,scores={health=..100},tag=!100] at @s run particle minecraft:campfire_cosy_smoke ~ ~1 ~ 0 0 0 0.1 1000 normal
execute as @e[tag=dwindler,scores={health=..100}] at @s run tp @s 62 44 -57 facing entity @p
execute as @e[tag=dwindler,scores={health=..100},tag=!100] at @s run tellraw @a [{"text": "The creature gets extremely angry...","italic": true,"color": "dark_gray"}]
execute as @e[tag=dwindler,scores={health=..100},tag=!100] at @s run tellraw @a [{"text": "Your ","color": "red"},{"text": "✎ Mana","color": "aqua"},{"text": " is being drained away!","color": "red"}]
execute as @e[tag=dwindler,scores={health=..100},tag=!100] at @s run tag @s add 100
execute if entity @e[tag=dwindler,scores={health=..100}] as @p unless score @s maxMana matches ..300 run scoreboard players add @p dwindlerMana 1

# Spawn Animation
execute unless score @p dwindlerSpawn matches 131.. run scoreboard players add @s dwindlerSpawn 1
execute if score @p dwindlerSpawn matches 1 run fill 57 46 -45 49 43 -45 barrier replace air
execute if score @p dwindlerSpawn matches 1 run kill @e[tag=dwindler]
execute if score @p dwindlerSpawn matches 2 run tellraw @a {"text": "You feel a chill run down your spine as a dark presence spawns...","italic": true,"color": "dark_gray"}

# Spawn Particles
execute if score @p dwindlerSpawn matches 1 run kill @e[tag=crystalHeart]
execute if score @p dwindlerSpawn matches 1 run summon minecraft:end_crystal 57.5 47.5 -51.5 {Invulnerable: 1b, ShowBottom: 0b, Tags: ["crystalHeart"], BeamTarget: {X: 62, Y: 42, Z: -57}}
execute if score @p dwindlerSpawn matches 1 run summon minecraft:armor_stand 57.5 46.9 -51.5 {Invulnerable: 1b, Invisible: 1b, Marker: 1b, CustomName: '[{"text": "﴾ ","color": "yellow"},{"text": "Crystal Heart","color": "dark_purple"},{"text": " ﴿","color": "yellow"}]', CustomNameVisible: 1b, Tags: ["crystalHeart"]}

execute if score @p dwindlerSpawn matches 1 run tellraw @a ["",{"text":"\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac","color":"dark_aqua"},{"text":"\n"},{"text":"   QUEST UPDATED","bold":true,"color":"aqua"},{"text":" A Dark Presence","italic":true,"color":"dark_aqua"},{"text":" \u2716","color":"red"},{"text":"\n\n"},{"text":"   OBJECTIVES\n    ","bold":true,"color":"green"},{"text":"\u2714","color":"green"},{"text":" Travel to the Misty Mines\n     ","color":"white"},{"text":"\u2716","color":"red"},{"text":" Slay the Dwindler\n     ","color":"white"},{"text":"\u2716","color":"red"},{"text":" Return to the Decayed Husk","color":"white"},{"text":"\n"},{"text":"\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac\u25ac","color":"dark_aqua"}]

execute if score @p dwindlerSpawn matches 1..10 run particle witch 62 44 -57 2.0 2.0 2.0 0.5 10 normal
execute if score @p dwindlerSpawn matches 1..10 run playsound block.beacon.activate master @p 62 44 -57 1 1 1

execute if score @p dwindlerSpawn matches 11..20 run particle witch 62 44 -57 1.8 1.8 1.8 0.5 20 normal
execute if score @p dwindlerSpawn matches 11..20 run playsound block.beacon.activate master @p 62 44 -57 1 1.1 1

execute if score @p dwindlerSpawn matches 21..30 run particle witch 62 44 -57 1.6 1.6 1.6 0.5 30 normal
execute if score @p dwindlerSpawn matches 21..30 run playsound block.beacon.activate master @p 62 44 -57 1 1.2 1

execute if score @p dwindlerSpawn matches 31..40 run particle witch 62 44 -57 1.4 1.4 1.4 0.5 40 normal
execute if score @p dwindlerSpawn matches 31..40 run playsound block.beacon.activate master @p 62 44 -57 1 1.3 1

execute if score @p dwindlerSpawn matches 41..50 run particle witch 62 44 -57 1.2 1.2 1.2 0.5 50 normal
execute if score @p dwindlerSpawn matches 41..50 run playsound block.beacon.activate master @p 62 44 -57 1 1.4 1

execute if score @p dwindlerSpawn matches 51..60 run particle witch 62 44 -57 1.0 1.0 1.0 0.5 60 normal
execute if score @p dwindlerSpawn matches 51..60 run playsound block.beacon.activate master @p 62 44 -57 1 1.5 1

execute if score @p dwindlerSpawn matches 61..70 run particle witch 62 44 -57 0.8 0.8 0.8 0.5 70 normal
execute if score @p dwindlerSpawn matches 61..70 run playsound block.beacon.activate master @p 62 44 -57 1 1.6 1

execute if score @p dwindlerSpawn matches 71..80 run particle witch 62 44 -57 0.6 0.6 0.6 0.5 80 normal
execute if score @p dwindlerSpawn matches 71..80 run playsound block.beacon.activate master @p 62 44 -57 1 1.7 1

execute if score @p dwindlerSpawn matches 81..90 run particle witch 62 44 -57 0.4 0.4 0.4 0.5 90 normal
execute if score @p dwindlerSpawn matches 81..90 run playsound block.beacon.activate master @p 62 44 -57 1 1.8 1

execute if score @p dwindlerSpawn matches 91..100 run particle witch 62 44 -57 0.2 0.2 0.2 0.5 100 normal
execute if score @p dwindlerSpawn matches 91..100 run playsound block.beacon.activate master @p 62 44 -57 1 1.9 1

execute if score @p dwindlerSpawn matches 100..110 run particle witch 62 44 -57 0 0 0 0.5 100 normal
execute if score @p dwindlerSpawn matches 100..110 run playsound block.beacon.activate master @p 62 44 -57 1 2 1

# Summoning
execute if score @p dwindlerSpawn matches 110 run summon minecraft:end_crystal 57.5 47.5 -51.5 {Invulnerable: 1b, ShowBottom: 0b, Tags: ["crystalHeart"]}
execute if score @p dwindlerSpawn matches 110 run scoreboard players reset @a dwindlerDeaths
execute if score @p dwindlerSpawn matches 110 run kill @e[type=end_crystal,tag=crystalHeart,limit=1,nbt={BeamTarget: {X: 62, Y: 42, Z: -57}}]

execute if score @p dwindlerSpawn matches 120 run summon minecraft:evoker 62 44 -57 {SpellTicks: 10,DeathLootTable:"minecraft:empty", Health: 500, PersistenceRequired: 1b, Tags: ["dwindler","boss","newDmg","not_kill"], Team: notPlayer, Attributes: [{Name: "generic.max_health", Base: 500d}]}
execute if score @p dwindlerSpawn matches 120 run playsound entity.wither.shoot hostile @p 62 44 -57
execute if score @p dwindlerSpawn matches 120 run tag @s add inDwindlerBoss