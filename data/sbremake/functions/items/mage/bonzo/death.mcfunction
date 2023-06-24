execute on passengers run kill @s
kill @s

function sbremake:utils/random_number
scoreboard players operation @a rand %= #9 const

execute if score @a[limit=1] rand matches 0 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:64b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 16719360]}]}}},Life:0}
execute if score @a[limit=1] rand matches 1 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:64b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 12779775]}]}}},Life:0}
execute if score @a[limit=1] rand matches 2 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:64b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 16711901]}]}}},Life:0}
execute if score @a[limit=1] rand matches 3 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:64b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 16748800]}]}}},Life:0}
execute if score @a[limit=1] rand matches 4 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:64b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 364800]}]}}},Life:0}
execute if score @a[limit=1] rand matches 5 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:64b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 655104]}]}}},Life:0}
execute if score @a[limit=1] rand matches 6 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:64b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 1114367]}]}}},Life:0}
execute if score @a[limit=1] rand matches 7 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:64b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 47103]}]}}},Life:0}
execute if score @a[limit=1] rand matches 8 run summon minecraft:firework_rocket ~ ~ ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:64b,tag:{Fireworks:{Flight:1b,Explosions:[{Type:0b,Colors:[I; 16775936]}]}}},Life:0}

execute at @s as @e[distance=..3,tag=!spectator,type=!#sbremake:never-detect] at @s run function sbremake:items/mage/bonzo/dmg