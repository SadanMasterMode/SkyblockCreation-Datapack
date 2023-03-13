execute at @e[tag=emperorHeart,type=item_display] run particle explosion_emitter ~ ~ ~ 0 0 0 1 5 normal
execute at @e[tag=emperorHeart,type=item_display] run playsound entity.generic.explode master @a ~ ~ ~
execute at @e[tag=emperorHeart,type=item_display] run summon lightning_bolt ~ ~3 ~
kill @e[tag=emperorHeart]
scoreboard players reset #2 life
tag @a add mercuriusSpawn

execute in sbremake:dreamworld positioned 88 42 99 unless entity @e[tag=mercurius] run summon evoker ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"minecraft:empty",Invulnerable:1b,Silent:1b,NoAI:1b,NoGravity:1b,Tags:["mercurius","boss","maxHealth","newDmg","invulnerable"],Team:player,ActiveEffects:[{Id:11,Amplifier:5,Duration:1000000000}]}

scoreboard players set @e[tag=mercurius,limit=1] health 2500
scoreboard players set @e[tag=mercurius,limit=1] maxHealth 2500
attribute @e[tag=mercurius,limit=1] generic.knockback_resistance base set 100
attribute @e[tag=mercurius,limit=1] generic.movement_speed base set 0
scoreboard players set @e[tag=mercurius] phase 0
effect give @e[tag=mercurius] resistance infinite 5 true
tellraw @a [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": You're very brave for facing me again.","color": "white"}]
execute in sbremake:dreamworld at @a run playsound entity.evoker.ambient master @a ~ ~ ~
schedule function sbremake:world/dreamworld/mercurius/dialogue/dialogue_2 5s append
schedule function sbremake:world/dreamworld/mercurius/dialogue/dialogue_3 10s append
schedule function sbremake:world/dreamworld/mercurius/dialogue/dialogue_4 15s append
