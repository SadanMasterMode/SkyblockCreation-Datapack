#Mark the ray as having found a block.

scoreboard players set #hit aoteTemp 1

#Running custom commands since the block was found.

summon armor_stand ~ ~-0.7 ~ {Tags:["aote1","spectator"],Invisible:1,Invulnerable:1b}
tellraw @a [{"text": "There are blocks in the way!","color": "red"}]