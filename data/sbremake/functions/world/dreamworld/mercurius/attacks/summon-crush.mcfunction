summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["mercuriusCrush","spectator"],NoGravity:1b,Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:iron_block"},Tags:["spectator"]}]}

scoreboard players remove #crush-attack fakePlayers 1
execute if score #crush-attack fakePlayers matches 1.. run function sbremake:world/dreamworld/mercurius/attacks/summon-crush