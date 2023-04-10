data remove storage sbremake:data World.MercuriusBombs.type
data remove storage sbremake:data World.MercuriusBombs.extra
data remove storage sbremake:data World.MercuriusBombs.tmp

execute if entity @e[tag=tmp,tag=freezeBomb] run function sbremake:world/dreamworld/mercurius/attacks/bombs/freeze
execute if entity @e[tag=tmp,tag=damageBomb] run function sbremake:world/dreamworld/mercurius/attacks/bombs/damage
execute if entity @e[tag=tmp,tag=enderBomb] run function sbremake:world/dreamworld/mercurius/attacks/bombs/ender
execute if entity @e[tag=tmp,tag=weaknessBomb] run function sbremake:world/dreamworld/mercurius/attacks/bombs/weakness
execute if entity @e[tag=tmp,tag=manaBomb] run function sbremake:world/dreamworld/mercurius/attacks/bombs/mana
execute if entity @e[tag=tmp,tag=healthBomb] run function sbremake:world/dreamworld/mercurius/attacks/bombs/health
execute if entity @e[tag=tmp,tag=speedBomb] run function sbremake:world/dreamworld/mercurius/attacks/bombs/speed

tellraw @a [{"nbt":"World.MercuriusBombs.tmp","storage": "sbremake:data","interpret": true},{"text": "You were hit by a "},{"nbt":"World.MercuriusBombs.type","storage": "sbremake:data","interpret": true},{"text": "! "},{"nbt":"World.MercuriusBombs.extra","storage": "sbremake:data","interpret": true}]

execute as @e[tag=tmp,tag=mercuriusBomb] on passengers run kill @s
kill @e[tag=tmp,tag=mercuriusBomb]