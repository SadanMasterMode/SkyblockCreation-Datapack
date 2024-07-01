execute at @e[tag=emperorHeart,type=item_display] run particle explosion_emitter ~ ~ ~ 0 0 0 1 5 normal
execute at @e[tag=emperorHeart,type=item_display] run playsound entity.generic.explode master @a ~ ~ ~
execute at @e[tag=emperorHeart,type=item_display] run summon lightning_bolt ~ ~3 ~
kill @e[tag=emperorHeart]
scoreboard players reset #2 life
tag @a add mercuriusSpawn

execute in sbremake:dreamworld positioned 88 42 99 unless entity e39dc353-0355-4517-b803-00dee36ca116 run summon evoker ~ ~ ~ {CustomNameVisible:1b,DeathLootTable:"minecraft:empty",Invulnerable:1b,Silent:1b,NoAI:1b,NoGravity:1b,Tags:["mercurius","boss","maxHealth","newDmg","invulnerable","not_kill"],Team:player,active_effects:[{id:"resistance",amplifier:5,duration:1000000000}],UUID:[I;-476200109,55919895,-1207762722,-479420138],ArmorItems:[{id:"minecraft:stone",Count:1b,tag:{AttributeModifiers:[{AttributeName:"generic.knockback_resistance",Amount:100,Name:"generic.knockback_resistance",UUID:[I;-12339,32148,23541,-64296]}]}},{},{},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.f]}
# e39dc353-0355-4517-b803-00dee36ca116

scoreboard players set e39dc353-0355-4517-b803-00dee36ca116 health 25000
scoreboard players set e39dc353-0355-4517-b803-00dee36ca116 maxHealth 25000
attribute e39dc353-0355-4517-b803-00dee36ca116 generic.knockback_resistance base set 100
attribute e39dc353-0355-4517-b803-00dee36ca116 generic.movement_speed base set 0
scoreboard players set e39dc353-0355-4517-b803-00dee36ca116 phase 0
effect give e39dc353-0355-4517-b803-00dee36ca116 resistance infinite 5 true
tellraw @a [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": You're very brave for facing me again.","color": "white"}]
execute in sbremake:dreamworld at @a run playsound entity.evoker.ambient master @a ~ ~ ~
schedule function sbremake:world/dreamworld/mercurius/dialogue/dialogue_2 5s append
schedule function sbremake:world/dreamworld/mercurius/dialogue/dialogue_3 10s append
schedule function sbremake:world/dreamworld/mercurius/dialogue/dialogue_4 15s append
