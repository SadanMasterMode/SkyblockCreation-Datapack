scoreboard players operation DamageCalc.tmp.1 fakePlayers = @a damageHologram
scoreboard players operation DamageCalc.tmp.1 fakePlayers %= #10 const

scoreboard players operation DamageCalc.tmp.2 fakePlayers = @a damageHologram
scoreboard players operation DamageCalc.tmp.2 fakePlayers /= #10 const
scoreboard players operation DamageCalc.tmp.2 fakePlayers %= #10 const

scoreboard players operation DamageCalc.tmp.3 fakePlayers = @a damageHologram
scoreboard players operation DamageCalc.tmp.3 fakePlayers /= #100 const
scoreboard players operation DamageCalc.tmp.3 fakePlayers %= #10 const

scoreboard players operation DamageCalc.tmp.4 fakePlayers = @a damageHologram
scoreboard players operation DamageCalc.tmp.4 fakePlayers /= #1000 const
scoreboard players operation DamageCalc.tmp.4 fakePlayers %= #10 const

scoreboard players operation DamageCalc.tmp.5 fakePlayers = @a damageHologram
scoreboard players operation DamageCalc.tmp.5 fakePlayers /= #10000 const
scoreboard players operation DamageCalc.tmp.5 fakePlayers %= #10 const

scoreboard players operation DamageCalc.tmp.6 fakePlayers = @a damageHologram
scoreboard players operation DamageCalc.tmp.6 fakePlayers /= #100000 const
scoreboard players operation DamageCalc.tmp.6 fakePlayers %= #10 const

scoreboard players operation DamageCalc.tmp.7 fakePlayers = @a damageHologram
scoreboard players operation DamageCalc.tmp.7 fakePlayers /= #1000000 const
scoreboard players operation DamageCalc.tmp.7 fakePlayers %= #10 const

scoreboard players operation DamageCalc.tmp.8 fakePlayers = @a damageHologram
scoreboard players operation DamageCalc.tmp.8 fakePlayers /= #10000000 const
scoreboard players operation DamageCalc.tmp.8 fakePlayers %= #10 const

scoreboard players operation DamageCalc.tmp.9 fakePlayers = @a damageHologram
scoreboard players operation DamageCalc.tmp.9 fakePlayers /= #100000000 const
scoreboard players operation DamageCalc.tmp.9 fakePlayers %= #10 const

scoreboard players operation DamageCalc.tmp.10 fakePlayers = @a damageHologram
scoreboard players operation DamageCalc.tmp.10 fakePlayers /= #1000000000 const
scoreboard players operation DamageCalc.tmp.10 fakePlayers %= #10 const

data remove storage sbremake:data DamageCalc.tmp
execute if score DamageCalc.tmp.10 fakePlayers matches 1.. run data modify storage sbremake:data DamageCalc.tmp append value '{"score":{"name":"DamageCalc.tmp.10","objective":"fakePlayers"}}'

scoreboard players set DamageCalc.tmp.condition9 fakePlayers 1
execute if score DamageCalc.tmp.9 fakePlayers matches 0 run scoreboard players set DamageCalc.tmp.condition9 fakePlayers 0 
execute if score DamageCalc.tmp.10 fakePlayers matches 1.. run scoreboard players set DamageCalc.tmp.condition9 fakePlayers 1
execute if score DamageCalc.tmp.condition9 fakePlayers matches 1 run data modify block 3000000 1 3000000 Text1 set value '{"score":{"name":"DamageCalc.tmp.9","objective":"fakePlayers"}}'
execute if score DamageCalc.tmp.condition9 fakePlayers matches 1.. run data modify storage sbremake:data DamageCalc.tmp append from block 3000000 1 3000000 Text1

scoreboard players set DamageCalc.tmp.condition8 fakePlayers 1
execute if score DamageCalc.tmp.8 fakePlayers matches 0 run scoreboard players set DamageCalc.tmp.condition8 fakePlayers 0 
execute if score DamageCalc.tmp.condition9 fakePlayers matches 1.. run scoreboard players set DamageCalc.tmp.condition8 fakePlayers 1
execute if score DamageCalc.tmp.condition8 fakePlayers matches 1 run data modify block 3000000 1 3000000 Text1 set value '{"score":{"name":"DamageCalc.tmp.8","objective":"fakePlayers"}}'
execute if score DamageCalc.tmp.condition8 fakePlayers matches 1.. run data modify storage sbremake:data DamageCalc.tmp append from block 3000000 1 3000000 Text1

scoreboard players set DamageCalc.tmp.condition7 fakePlayers 1
execute if score DamageCalc.tmp.7 fakePlayers matches 0 run scoreboard players set DamageCalc.tmp.condition7 fakePlayers 0 
execute if score DamageCalc.tmp.condition8 fakePlayers matches 1.. run scoreboard players set DamageCalc.tmp.condition7 fakePlayers 1
execute if score DamageCalc.tmp.condition7 fakePlayers matches 1 run data modify block 3000000 1 3000000 Text1 set value '{"score":{"name":"DamageCalc.tmp.7","objective":"fakePlayers"}}'
execute if score DamageCalc.tmp.condition7 fakePlayers matches 1.. run data modify storage sbremake:data DamageCalc.tmp append from block 3000000 1 3000000 Text1

scoreboard players set DamageCalc.tmp.condition6 fakePlayers 1
execute if score DamageCalc.tmp.6 fakePlayers matches 0 run scoreboard players set DamageCalc.tmp.condition6 fakePlayers 0 
execute if score DamageCalc.tmp.condition7 fakePlayers matches 1.. run scoreboard players set DamageCalc.tmp.condition6 fakePlayers 1
execute if score DamageCalc.tmp.condition6 fakePlayers matches 1 run data modify block 3000000 1 3000000 Text1 set value '{"score":{"name":"DamageCalc.tmp.6","objective":"fakePlayers"}}'
execute if score DamageCalc.tmp.condition6 fakePlayers matches 1.. run data modify storage sbremake:data DamageCalc.tmp append from block 3000000 1 3000000 Text1

scoreboard players set DamageCalc.tmp.condition5 fakePlayers 1
execute if score DamageCalc.tmp.5 fakePlayers matches 0 run scoreboard players set DamageCalc.tmp.condition5 fakePlayers 0 
execute if score DamageCalc.tmp.condition6 fakePlayers matches 1.. run scoreboard players set DamageCalc.tmp.condition5 fakePlayers 1
execute if score DamageCalc.tmp.condition5 fakePlayers matches 1 run data modify block 3000000 1 3000000 Text1 set value '{"score":{"name":"DamageCalc.tmp.5","objective":"fakePlayers"}}'
execute if score DamageCalc.tmp.condition5 fakePlayers matches 1.. run data modify storage sbremake:data DamageCalc.tmp append from block 3000000 1 3000000 Text1

scoreboard players set DamageCalc.tmp.condition4 fakePlayers 1
execute if score DamageCalc.tmp.4 fakePlayers matches 0 run scoreboard players set DamageCalc.tmp.condition4 fakePlayers 0 
execute if score DamageCalc.tmp.condition5 fakePlayers matches 1.. run scoreboard players set DamageCalc.tmp.condition4 fakePlayers 1
execute if score DamageCalc.tmp.condition4 fakePlayers matches 1 run data modify block 3000000 1 3000000 Text1 set value '{"score":{"name":"DamageCalc.tmp.4","objective":"fakePlayers"}}'
execute if score DamageCalc.tmp.condition4 fakePlayers matches 1.. run data modify storage sbremake:data DamageCalc.tmp append from block 3000000 1 3000000 Text1

scoreboard players set DamageCalc.tmp.condition3 fakePlayers 1
execute if score DamageCalc.tmp.3 fakePlayers matches 0 run scoreboard players set DamageCalc.tmp.condition3 fakePlayers 0 
execute if score DamageCalc.tmp.condition4 fakePlayers matches 1.. run scoreboard players set DamageCalc.tmp.condition3 fakePlayers 1
execute if score DamageCalc.tmp.condition3 fakePlayers matches 1 run data modify block 3000000 1 3000000 Text1 set value '{"score":{"name":"DamageCalc.tmp.3","objective":"fakePlayers"}}'
execute if score DamageCalc.tmp.condition3 fakePlayers matches 1.. run data modify storage sbremake:data DamageCalc.tmp append from block 3000000 1 3000000 Text1

scoreboard players set DamageCalc.tmp.condition2 fakePlayers 1
execute if score DamageCalc.tmp.2 fakePlayers matches 0 run scoreboard players set DamageCalc.tmp.condition2 fakePlayers 0 
execute if score DamageCalc.tmp.condition3 fakePlayers matches 1.. run scoreboard players set DamageCalc.tmp.condition2 fakePlayers 1
execute if score DamageCalc.tmp.condition2 fakePlayers matches 1 run data modify block 3000000 1 3000000 Text1 set value '{"score":{"name":"DamageCalc.tmp.2","objective":"fakePlayers"}}'
execute if score DamageCalc.tmp.condition2 fakePlayers matches 1.. run data modify storage sbremake:data DamageCalc.tmp append from block 3000000 1 3000000 Text1

scoreboard players set DamageCalc.tmp.condition1 fakePlayers 1
execute if score DamageCalc.tmp.1 fakePlayers matches 0 run scoreboard players set DamageCalc.tmp.condition1 fakePlayers 0 
execute if score DamageCalc.tmp.condition2 fakePlayers matches 1.. run scoreboard players set DamageCalc.tmp.condition2 fakePlayers 1
execute if score DamageCalc.tmp.condition1 fakePlayers matches 1 run data modify block 3000000 1 3000000 Text1 set value '[{"text":".","color":"white"},{"score":{"name":"DamageCalc.tmp.1","objective":"fakePlayers"}}]'
execute if score DamageCalc.tmp.condition1 fakePlayers matches 1.. run data modify storage sbremake:data DamageCalc.tmp append from block 3000000 1 3000000 Text1

data modify storage sbremake:data DamageCalc.CritHologram set value '[{"text":"✧ ","color": "white"},{"nbt":"DamageCalc.tmp[0]","storage":"sbremake:data","color": "white","interpret": true},{"nbt":"DamageCalc.tmp[1]","storage":"sbremake:data","color": "yellow","interpret": true},{"nbt":"DamageCalc.tmp[2]","storage":"sbremake:data","color": "gold","interpret": true},{"nbt":"DamageCalc.tmp[3]","storage":"sbremake:data","color": "red","interpret": true},{"nbt":"DamageCalc.tmp[4]","storage":"sbremake:data","color": "red","interpret": true},{"nbt":"DamageCalc.tmp[5]","storage":"sbremake:data","color": "white","interpret": true},{"nbt":"DamageCalc.tmp[6]","storage":"sbremake:data","color": "white","interpret": true},{"nbt":"DamageCalc.tmp[7]","storage":"sbremake:data","color": "yellow","interpret": true},{"nbt":"DamageCalc.tmp[8]","storage":"sbremake:data","color": "gold","interpret": true},{"nbt":"DamageCalc.tmp[9]","storage":"sbremake:data","color": "red","interpret": true},{"text":" ✧","color": "white"}]'