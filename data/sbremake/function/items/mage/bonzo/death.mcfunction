execute on passengers run kill @s
kill @s

function sbremake:utils/random_number
scoreboard players operation @a rand %= #9 const

execute if score @a[limit=1] rand matches 0 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{components:{"minecraft:fireworks":{explosions:[{colors:[I;16719360],shape:"small_ball"}],flight_duration:1b}},count:64,id:"minecraft:firework_rocket"},Life:0}
execute if score @a[limit=1] rand matches 1 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{components:{"minecraft:fireworks":{explosions:[{colors:[I;12779775],shape:"small_ball"}],flight_duration:1b}},count:64,id:"minecraft:firework_rocket"},Life:0}
execute if score @a[limit=1] rand matches 2 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{components:{"minecraft:fireworks":{explosions:[{colors:[I;16711901],shape:"small_ball"}],flight_duration:1b}},count:64,id:"minecraft:firework_rocket"},Life:0}
execute if score @a[limit=1] rand matches 3 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{components:{"minecraft:fireworks":{explosions:[{colors:[I;16748800],shape:"small_ball"}],flight_duration:1b}},count:64,id:"minecraft:firework_rocket"},Life:0}
execute if score @a[limit=1] rand matches 4 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{components:{"minecraft:fireworks":{explosions:[{colors:[I;364800],shape:"small_ball"}],flight_duration:1b}},count:64,id:"minecraft:firework_rocket"},Life:0}
execute if score @a[limit=1] rand matches 5 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{components:{"minecraft:fireworks":{explosions:[{colors:[I;655104],shape:"small_ball"}],flight_duration:1b}},count:64,id:"minecraft:firework_rocket"},Life:0}
execute if score @a[limit=1] rand matches 6 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{components:{"minecraft:fireworks":{explosions:[{colors:[I;1114367],shape:"small_ball"}],flight_duration:1b}},count:64,id:"minecraft:firework_rocket"},Life:0}
execute if score @a[limit=1] rand matches 7 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{components:{"minecraft:fireworks":{explosions:[{colors:[I;47103],shape:"small_ball"}],flight_duration:1b}},count:64,id:"minecraft:firework_rocket"},Life:0}
execute if score @a[limit=1] rand matches 8 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{components:{"minecraft:fireworks":{explosions:[{colors:[I;16775936],shape:"small_ball"}],flight_duration:1b}},count:64,id:"minecraft:firework_rocket"},Life:0}

execute at @s as @e[distance=..3,tag=!spectator,type=!#sbremake:never-detect] at @s run function sbremake:items/mage/bonzo/dmg