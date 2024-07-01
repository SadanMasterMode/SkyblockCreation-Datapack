# requires basically nothing lol

execute as @a[predicate=sbremake:items/berserk/rogue/mana] run tellraw @a {"text":"You don't have enough mana to use this ability!","color":"red"}
execute as @a[predicate=sbremake:items/berserk/rogue/main] run function sbremake:items/berserk/rogue/main