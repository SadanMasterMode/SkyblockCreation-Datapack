execute at @a facing entity e39dc353-0355-4517-b803-00dee36ca116 feet run summon marker ~ ~ ~ {Invulnerable:1b,CustomName:'{"text": "!","color": "red","bold": true}',Tags:["evokerLine","spectator"],UUID:[I;-459537365,-1953936280,-2142950814,-839473723],data:{SBRemake:{UUID:"e49c042b-8b89-4c68-8045-2a62cdf6a5c5"}},CustomNameVisible:1b,NoGravity:1b}
playsound entity.evoker.prepare_attack master @a[distance=..10] ~ ~ ~

execute as e49c042b-8b89-4c68-8045-2a62cdf6a5c5 at @s run function sbremake:world/dreamworld/mercurius/attacks/fang-line

execute at e39dc353-0355-4517-b803-00dee36ca116 run particle dust{color:[0.353,0.192,0.192],scale:1} ~ ~0.5 ~ 0.5 0.5 0.5 1 10 normal

function sbremake:utils/random_number
scoreboard players operation @a rand %= #3 const
tellraw @a[scores={rand=0}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Fangs, go!","color": "white"}]
tellraw @a[scores={rand=1}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": My fangs taste blood, beware!","color": "white"}]
tellraw @a[scores={rand=2}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Watch your legs!","color": "white"}]
playsound entity.evoker.ambient master @a