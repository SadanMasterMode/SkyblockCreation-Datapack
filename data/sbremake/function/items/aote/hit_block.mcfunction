#Mark the ray as having found a block.

scoreboard players set #hit aoteTemp 1

#Running custom commands since the block was found.

summon marker ~ ~-0.7 ~ {Invulnerable:1b,NoGravity:1b,Tags:["aote1","spectator"],UUID:[I;-1894747658,-1771355571,-1553993137,-1192339827],data:{SBRemake:{UUID:'8f1071f6-966b-424d-a35f-f24fb8ee568d'}}}
tellraw @a [{"text": "There are blocks in the way!","color": "red"}]