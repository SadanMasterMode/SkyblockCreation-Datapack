advancement revoke @s only sbremake:items/archer/juju/left-click
advancement revoke @s only sbremake:items/archer/juju/right-click

execute if score #juju-cd fakePlayers >= #juju-max-cd fakePlayers positioned 0.0 0 0.0 run summon marker ^ ^ ^2 {Tags:["direction","spectator"],UUID:[I;559228475,506676269,-1933369704,1578730848],data:{SBRemake:{UUID:"2155263b-1e33-442d-8cc3-1e985e198560"}}}

execute if score #juju-cd fakePlayers >= #juju-max-cd fakePlayers anchored eyes positioned ^ ^ ^0.5 run summon arrow ~ ~ ~ {Tags:["projectile","spectator","juju"],damage:0,crit:0b,pickup:0b}

execute if score #juju-cd fakePlayers >= #juju-max-cd fakePlayers run data modify entity @e[type=arrow,tag=projectile,tag=juju,limit=1] Motion set from entity 2155263b-1e33-442d-8cc3-1e985e198560 Pos

execute if score #juju-cd fakePlayers >= #juju-max-cd fakePlayers run tag @e[tag=projectile,type=arrow,tag=juju] remove projectile

execute if score #juju-cd fakePlayers >= #juju-max-cd fakePlayers run scoreboard players reset #juju-cd fakePlayers

kill 2155263b-1e33-442d-8cc3-1e985e198560