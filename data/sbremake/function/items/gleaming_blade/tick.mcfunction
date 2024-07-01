execute as @a at @s if entity @s[predicate=sbremake:items/gleaming_blade/holding-off,predicate=sbremake:items/gleaming_blade/light_check] run function sbremake:items/gleaming_blade/activate

execute as @a at @s if entity @s[predicate=sbremake:items/gleaming_blade/holding-on] unless predicate sbremake:items/gleaming_blade/light_check run function sbremake:items/gleaming_blade/deactivate