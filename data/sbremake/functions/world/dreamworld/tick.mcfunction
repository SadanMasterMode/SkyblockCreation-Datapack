# Mercurius
execute as @a[advancements={sbremake:mercurius/emperor_heart_lc=true},limit=1] in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/crystal_death
execute as @a[advancements={sbremake:mercurius/emperor_heart_rc=true},limit=1] in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/crystal_rc

execute if entity @a[limit=1] in sbremake:dreamworld as @e[tag=bob] unless score #2 life matches 1.. run function sbremake:world/dreamworld/mercurius/crystal/tick
execute if entity @a[limit=1] in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/tick