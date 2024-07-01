function sbremake:utils/random_number
scoreboard players operation @a rand %= #12 const

tellraw @a[scores={rand=0}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Your attacks only tickle!","color": "white"}]
tellraw @a[scores={rand=1}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Haha, this is fun!","color": "white"}]
tellraw @a[scores={rand=2}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Oof-","color": "white"}]
tellraw @a[scores={rand=3}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": I smell the scent of fear!","color": "white"}]
tellraw @a[scores={rand=4}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Voila, il y a une opportunité pour mort!","color": "white"}]
tellraw @a[scores={rand=5}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Take this, or this, or even this!","color": "white"}]
tellraw @a[scores={rand=6}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Why don't you just DIE?!","color": "white"}]
tellraw @a[scores={rand=7}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": How do you have this much health?","color": "white"}]
tellraw @a[scores={rand=8}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Vous êtes trés mielleux!","color": "white"}]
tellraw @a[scores={rand=9}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Is this real?","color": "white"}]
tellraw @a[scores={rand=10}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": Come on, bring your best!","color": "white"}]
tellraw @a[scores={rand=11}] [{"text": "[BOSS]","color": "red"},{"text": " Grand Emperor Mercurius","color": "red"},{"text": ": He he he haw","color": "white","hoverEvent": {"action": "show_text","value": "i ran out of ideas :c"}}]
playsound entity.evoker.ambient master @a