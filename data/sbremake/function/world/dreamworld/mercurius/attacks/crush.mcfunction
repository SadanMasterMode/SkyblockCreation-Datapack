summon area_effect_cloud ~0.5 ~5 ~-0.5 {Radius:0,Duration:2147483647,Tags:["mercuriusCrush","spectator"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},Tags:["spectator"]}]}
summon area_effect_cloud ~0.5 ~5 ~0.5 {Radius:0,Duration:2147483647,Tags:["mercuriusCrush","spectator"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},Tags:["spectator"]}]}
summon area_effect_cloud ~0.5 ~5 ~-1.5 {Radius:0,Duration:2147483647,Tags:["mercuriusCrush","spectator"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},Tags:["spectator"]}]}

summon area_effect_cloud ~-1.5 ~5 ~-0.5 {Radius:0,Duration:2147483647,Tags:["mercuriusCrush","spectator"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},Tags:["spectator"]}]}
summon area_effect_cloud ~-1.5 ~5 ~0.5 {Radius:0,Duration:2147483647,Tags:["mercuriusCrush","spectator"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},Tags:["spectator"]}]}
summon area_effect_cloud ~-1.5 ~5 ~-1.5 {Radius:0,Duration:2147483647,Tags:["mercuriusCrush","spectator"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},Tags:["spectator"]}]}

summon area_effect_cloud ~-0.5 ~5 ~-0.5 {Radius:0,Duration:2147483647,Tags:["mercuriusCrush","spectator"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},Tags:["spectator"]}]}
summon area_effect_cloud ~-0.5 ~5 ~0.5 {Radius:0,Duration:2147483647,Tags:["mercuriusCrush","spectator"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},Tags:["spectator"]}]}
summon area_effect_cloud ~-0.5 ~5 ~-1.5 {Radius:0,Duration:2147483647,Tags:["mercuriusCrush","spectator"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},Tags:["spectator"]}]}

function sbremake:utils/random_number
scoreboard players operation @s rand %= #2 const
tellraw @s[scores={rand=0}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": You might want to look above you!","color": "white"}]
tellraw @s[scores={rand=1}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": A bit dangerous to stand below my iron platform, don't you think?","color": "white"}]

execute at e39dc353-0355-4517-b803-00dee36ca116 run particle dust{color:[1.0,1.0,1.0],scale:1} ~ ~0.5 ~ 0.5 0.5 0.5 1 10 normal

playsound entity.evoker.ambient master @s
playsound block.anvil.place master @s