# Mercurius
execute as @a[advancements={sbremake:mercurius/emperor_heart_lc=true},predicate=sbremake:world/mercurius/dimension_check,limit=1] in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/crystal_death
execute as @a[advancements={sbremake:mercurius/emperor_heart_rc=true},predicate=sbremake:world/mercurius/dimension_check,limit=1] in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/crystal_rc

execute as @e[tag=bob] unless score #2 life matches 1.. run function sbremake:world/dreamworld/mercurius/crystal/tick
execute if entity @a[predicate=sbremake:world/mercurius/dimension_check,limit=1] in sbremake:dreamworld run function sbremake:world/dreamworld/mercurius/tick