execute as @p at @s anchored feet run summon armor_stand ^-1 ^ ^1 {Tags:["witherlord3","witherlord","spectator"],Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-689328864,-1648275810,-1182795162,1053712544],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWRhOTdjMDZjMDdhMDM1YmQ4NzQ2YjQ4ZDMyZGMwNGU4NDE2MGJkMTYxZjI2YmUxMjcyYjYyNzEyNTFhYWE3In19fQ=="}]}}}}]}
scoreboard players remove @p mana 40
execute as @e[tag=witherlord3,tag=!facingPlayer] at @s run tp @s ~ ~ ~ facing entity e34b6a3d-f3b2-45b6-a8da-3aefc27debc4 feet
tag @e[tag=witherlord3,tag=!facingPlayer] add facingPlayer

execute as @p at @s anchored feet run summon armor_stand ^ ^ ^1 {Tags:["witherlord1","witherlord","spectator"],Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-689328864,-1648275810,-1182795162,1053712544],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWRhOTdjMDZjMDdhMDM1YmQ4NzQ2YjQ4ZDMyZGMwNGU4NDE2MGJkMTYxZjI2YmUxMjcyYjYyNzEyNTFhYWE3In19fQ=="}]}}}}]}
execute at @p run playsound minecraft:entity.wither.ambient ambient @p ~ ~ ~
execute as @e[tag=witherlord,tag=!facingPlayer] at @s run tp @s ~ ~ ~ facing entity 8b972846-ccec-4466-b60a-ff68a0bcecc6 feet
tag @e[tag=witherlord,tag=!facingPlayer] add facingPlayer

execute as @p at @s anchored feet run summon armor_stand ^1 ^ ^1 {Tags:["witherlord2","witherlord","spectator"],Invulnerable:1b,NoGravity:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;-689328864,-1648275810,-1182795162,1053712544],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNWRhOTdjMDZjMDdhMDM1YmQ4NzQ2YjQ4ZDMyZGMwNGU4NDE2MGJkMTYxZjI2YmUxMjcyYjYyNzEyNTFhYWE3In19fQ=="}]}}}}]}
scoreboard players set @p manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @a actionbar ["",{"text":"Used ","color":"aqua"},{"text":"Witherlord","color":"gold"},{"text":"! (-40 \u270e Mana)","color":"aqua"}]
execute as @e[tag=witherlord2,tag=!facingPlayer] at @s run tp @s ~ ~ ~ facing entity aef109ed-b080-4fc6-9288-6414e184a878 feet
tag @e[tag=witherlord2,tag=!facingPlayer] add facingPlayer