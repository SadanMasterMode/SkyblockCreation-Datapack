function sbremake:utils/random_number
scoreboard players operation @a rand %= #2 const
tellraw @a[scores={rand=0}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": You fool, how did you let ","color": "white"},{"score":{"name": "#mercuriusHeal","objective": "count"},"color": "red"},{"text": " of my summons live?","color": "white"}]
tellraw @a[scores={rand=1}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": It's truly remarkable how ","color": "white"},{"score":{"name": "#mercuriusHeal","objective": "count"},"color": "red"},{"text": " of my summons managed to live!","color": "white"}]
playsound entity.evoker.ambient master @a

execute as @e[tag=mercuriusHeal] unless score e39dc353-0355-4517-b803-00dee36ca116 health matches 2451.. run scoreboard players add e39dc353-0355-4517-b803-00dee36ca116 health 50
scoreboard players reset #mercuriusHeal life
execute at @e[tag=mercuriusHeal] run particle cloud ~ ~1 ~ 0 0 0 0.2 100 normal
kill @e[tag=mercuriusHeal]