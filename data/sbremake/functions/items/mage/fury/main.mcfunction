execute as @p at @s anchored eyes run summon marker ^ ^ ^0.1 {Invulnerable:1b,NoGravity:1b,Tags:["fury","spectator"],UUID:[I;873955211,423448039,-1205102092,-1989923792],data:{SBRemake:{UUID:"34177f8b-193d-4de7-b82b-99f489642c30"}}}
execute as 34177f8b-193d-4de7-b82b-99f489642c30 at @s run tp @s ~ ~ ~ facing entity @a[limit=1] eyes

scoreboard players set @a manaWarn 1
schedule clear sbremake:manareset
schedule function sbremake:manareset 1s append
title @a actionbar ["",{"text":"Used","color":"aqua"},{"text":" Firestorm","color":"gold"},{"text":"! (-1000 \u270e Mana)","color":"aqua"}]

playsound entity.blaze.shoot master @a[distance=..10] ~ ~ ~

scoreboard players remove @a mana 1000
scoreboard players set @a furyCD 0