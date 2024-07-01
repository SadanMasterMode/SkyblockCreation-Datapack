damage @a[limit=1] 12 mob_attack by e39dc353-0355-4517-b803-00dee36ca116

function sbremake:utils/random_number
scoreboard players operation @a rand %= #2 const

execute at e39dc353-0355-4517-b803-00dee36ca116 run particle dust{color:[1.0,0.0,0.0],scale:1} ~ ~0.5 ~ 0.5 0.5 0.5 1 10 normal

tellraw @a[scores={rand=0}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Die, you feeble player!","color": "white"}]
tellraw @a[scores={rand=1}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Prenez ça!","color": "white"}]
playsound entity.evoker.ambient master @a
playsound entity.wither_skeleton.hurt master @a