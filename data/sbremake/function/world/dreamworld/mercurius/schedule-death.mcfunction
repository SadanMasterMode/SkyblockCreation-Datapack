schedule clear sbremake:world/dreamworld/mercurius/schedule-death
scoreboard players set #mercuriusDeath fakePlayers 1

tellraw @a [{"text": "Time to go home.","color": "dark_gray"}]
schedule function sbremake:world/dreamworld/mercurius/schedule-death-2 3s append