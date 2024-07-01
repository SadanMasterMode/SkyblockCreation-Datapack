#Commands to run when the raycast has failed to detect an entity and/or block.

title @a title ""
title @a subtitle ""
effect clear @a[tag=stalkerEye] darkness
tag @a[tag=stalkerEye] remove typewriter
tag @a[tag=vdvray] remove stalkerEye
scoreboard players reset @a stalkerType