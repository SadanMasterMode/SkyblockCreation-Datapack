execute at 487bdc79-7a38-4017-869d-f3f0f61a6adc run particle minecraft:dust{color:[1,1,1],scale:2} ~ ~ ~ 0.1 0.1 0.1 0.01 0 normal

execute as @a[predicate=sbremake:items/sinseeker/main] unless entity 487bdc79-7a38-4017-869d-f3f0f61a6adc run tellraw @a {"text":"You do not have a marker set!","color":"red"}
execute as @a[predicate=sbremake:items/sinseeker/main] at @s if entity 487bdc79-7a38-4017-869d-f3f0f61a6adc run function sbremake:items/sinseeker/main
execute as @a[predicate=sbremake:items/sinseeker/marker] at @s if entity 487bdc79-7a38-4017-869d-f3f0f61a6adc run function sbremake:items/sinseeker/sinmark2
execute as @a[predicate=sbremake:items/sinseeker/marker] at @s unless entity 487bdc79-7a38-4017-869d-f3f0f61a6adc run function sbremake:items/sinseeker/sinmark