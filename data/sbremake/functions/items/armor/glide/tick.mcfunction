scoreboard players remove @a[scores={spiritCD=1..}] spiritCD 1
scoreboard players remove @a[scores={glideTime=1..}] glideTime 1

execute as 9e2555c3-0221-4982-937c-ecca667a6007 at @s run function sbremake:items/armor/glide/as-marker
execute as @a[predicate=sbremake:items/armor/glide/main] at @s run function sbremake:items/armor/glide/main
execute as @a[scores={glideTime=0},tag=inGlide] run function sbremake:items/armor/glide/final