#Mark the ray has having found an entity.

scoreboard players set #hit vdvcasttemp 1

#Running custom commands since the entity was found.

tag @a[tag=vdvray] add stalkerEye
tag @a[tag=stalkerEye] add typewriter
effect give @a[tag=stalkerEye] darkness 1 0 true
scoreboard players set delay text_effects 1
title @a times 0 200 0

execute at @e[tag=cw_typewriter] unless entity @a[scores={stalkerType=1..}] run item replace block ~ ~ ~ container.0 with stick{cw_type:['{"text":"S","color":"red","bold":true}','{"text":"u","color":"red","bold":true}','{"text":"r","color":"red","bold":true}','{"text":"r","color":"red","bold":true}','{"text":"e","color":"red","bold":true}','{"text":"n","color":"red","bold":true}','{"text":"d","color":"red","bold":true}','{"text":"e","color":"red","bold":true}','{"text":"r","color":"red","bold":true}','{"text":" ","color":"red","bold":true}','{"text":"y","color":"red","bold":true}','{"text":"o","color":"red","bold":true}','{"text":"u","color":"red","bold":true}','{"text":"r","color":"red","bold":true}','{"text":" ","color":"red","bold":true}','{"text":"w","color":"red","bold":true}','{"text":"i","color":"red","bold":true}','{"text":"l","color":"red","bold":true}','{"text":"l","color":"red","bold":true}','{"text":".","color":"red","bold":true}']}
execute at @e[tag=cw_typewriter] unless entity @a[scores={stalkerType=1..}] run function sbremake:utils/typewriter/type_write
scoreboard players add @a stalkerType 1