execute if entity @s[tag=!spectator,type=#sbremake:spectators] run function sbremake:utils/spectator

# Invisible Minecarts
execute if entity @s[type=#minecraft:minecarts,tag=!invisible_minecart] run function sbremake:utils/invisible_minecarts

# Mob Nametags
execute if entity @s[tag=!maxHealth,type=!#sbremake:spectators] run function sbremake:nametags/max_health 
execute if entity @s[tag=!noName,type=!#sbremake:spectators] in minecraft:overworld run function sbremake:nametags/main

# Misc
execute if entity @s[tag=float] run function sbremake:utils/item_float
execute if entity @s[tag=damageHologram] run function sbremake:tick/damage_hologram
execute if entity @s[scores={health=..0},tag=!not_kill,tag=newDmg,type=!#sbremake:spectators] run kill @s