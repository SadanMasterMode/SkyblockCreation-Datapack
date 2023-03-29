# Effects
damage @s 0 player_attack by @a[limit=1]
particle totem_of_undying ~ ~1 ~ 0 0 0 0.5 100 normal
playsound entity.player.attack.sweep master @a ~ ~ ~
playsound entity.evoker.cast_spell master @a ~ ~ ~
scoreboard players add @a mana 250

# Dialogue Messages - BASIC
# Undead
scoreboard players set @s success 0
execute if entity @s[type=#sbremake:undead] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "There's not much in there.","color": "dark_gray","italic": true}]
execute if entity @s[type=#sbremake:undead] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Player must die.","color": "dark_gray","italic": true}]
execute if entity @s[type=#sbremake:undead] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Endless suffering, withering within.","color": "dark_gray","italic": true}]
# Allay
execute if entity @s[type=allay] if predicate sbremake:random/50 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Don't leave me behind!","color": "dark_gray","italic": true}]
execute if entity @s[type=allay] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Friend? Foe?","color": "dark_gray","italic": true}]
# Axolotl
execute if entity @s[type=axolotl] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Friend, stay!","color": "dark_gray","italic": true}]
execute if entity @s[type=axolotl] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Must protect, at all costs!","color": "dark_gray","italic": true}]
execute if entity @s[type=axolotl] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Fight with me, until the end!","color": "dark_gray","italic": true}]
# Bat
execute if entity @s[type=bat] if predicate sbremake:random/50 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "... How?","color": "dark_gray","italic": true}]
execute if entity @s[type=bat] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "... Why?","color": "dark_gray","italic": true}]
# Bee
execute if entity @s[type=bee] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Pollen! Everywhere!","color": "dark_gray","italic": true}]
execute if entity @s[type=bee] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "My queen... Where are you?","color": "dark_gray","italic": true}]
execute if entity @s[type=bee] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "What does this one want with me?","color": "dark_gray","italic": true}]
# Blaze
execute if entity @s[type=blaze] store result score @s success if dimension overworld run tellraw @a [{"text": "Too cold here... must return back.","color": "dark_gray","italic": true}]
execute if entity @s[type=blaze] if predicate sbremake:random/50 if score @s success matches 0 store result score @s success if dimension the_nether run tellraw @a [{"text": "Attack! Defend the fortress!","color": "dark_gray","italic": true}]
execute if entity @s[type=blaze] if score @s success matches 0 store result score @s success if dimension the_nether run tellraw @a [{"text": "Get back you vile fiend!","color": "dark_gray","italic": true}]
# Cat
execute if entity @s[type=cat] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "This one thinks he owns me! Haha!","color": "dark_gray","italic": true}]
execute if entity @s[type=cat] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Go back to making my food.","color": "dark_gray","italic": true}]
execute if entity @s[type=cat] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "What do you want? It's almost nap time, annoy someone else.","color": "dark_gray","italic": true}]
# Cave Spider
execute if entity @s[type=cave_spider] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Feel the wrath of my fangs!","color": "dark_gray","italic": true}]
execute if entity @s[type=cave_spider] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "You think you can survive poison?!","color": "dark_gray","italic": true}]
execute if entity @s[type=cave_spider] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "You'll regret ever coming here!","color": "dark_gray","italic": true}]
# Chicken
execute if entity @s[type=chicken] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Buk baaaaawk!","color": "dark_gray","italic": true}]
execute if entity @s[type=chicken] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Bawk. Baaaaawk?","color": "dark_gray","italic": true}]
execute if entity @s[type=chicken] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Cluck cluck baaaaaawk","color": "dark_gray","italic": true}]
# Cod
execute if entity @s[type=cod] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Let me be!","color": "dark_gray","italic": true}]
execute if entity @s[type=cod] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I have a family!","color": "dark_gray","italic": true}]
execute if entity @s[type=cod] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Leave!","color": "dark_gray","italic": true}]
# Cow
execute if entity @s[type=cow] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Moooooooooooooooooooooooooooooo","color": "dark_gray","italic": true}]
execute if entity @s[type=cow] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Moo.","color": "dark_gray","italic": true}]
execute if entity @s[type=cow] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Moo?","color": "dark_gray","italic": true}]
# Creeper
execute if entity @s[type=creeper] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Ssssssssssssss...","color": "dark_gray","italic": true}]
execute if entity @s[type=creeper] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Ssssssss!","color": "dark_gray","italic": true}]
execute if entity @s[type=creeper] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "BOOM!","color": "dark_gray","italic": true,"bold": true}]
# Dolphin
execute if entity @s[type=dolphin] if predicate sbremake:random/50 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Swim with me Friend!","color": "dark_gray","italic": true}]
execute if entity @s[type=dolphin] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Let's find treasure together!","color": "dark_gray","italic": true}]
# Donkey
execute if entity @s[type=donkey] if predicate sbremake:random/50 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I'm not from Shrek.","color": "dark_gray","italic": true}]
execute if entity @s[type=donkey] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I can carry you, just slowly...","color": "dark_gray","italic": true}]
# Elder Guardian
execute if entity @s[type=elder_guardian] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "You dare step into my domain?","color": "dark_gray","italic": true}]
execute if entity @s[type=elder_guardian] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Your tools are useless here!","color": "dark_gray","italic": true}]
execute if entity @s[type=elder_guardian] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "These treasures are not for your kind!","color": "dark_gray","italic": true}]
# Enderman
execute if entity @s[type=enderman] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Do not look at me.","color": "dark_gray","italic": true}]
execute if entity @s[type=enderman] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Can you survive the endless abyss?","color": "dark_gray","italic": true}]
execute if entity @s[type=enderman] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "My queen lays atop her throne.","color": "dark_gray","italic": true}]
# Endermite
execute if entity @s[type=endermite] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Sccccccrrrrrrr","color": "dark_gray","italic": true}]
execute if entity @s[type=endermite] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Prrrrreeeeeee","color": "dark_gray","italic": true}]
execute if entity @s[type=endermite] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Triiiiiiiiii?","color": "dark_gray","italic": true}]
# Evoker (regular)
execute if entity @s[type=evoker,tag=!dwindler] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "You aren't the only one who can read minds.","color": "dark_gray","italic": true}]
execute if entity @s[type=evoker,tag=!dwindler] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "A pathetic attempt of a human.","color": "dark_gray","italic": true}]
execute if entity @s[type=evoker,tag=!dwindler] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Run and never return.","color": "dark_gray","italic": true}]
# Evoker (dwindler)
execute if entity @s[type=evoker,tag=dwindler] if predicate sbremake:random/25 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "That weapon of yours... its familiar.","color": "dark_gray","italic": true}]
execute if entity @s[type=evoker,tag=dwindler] if predicate sbremake:random/25 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Are you what it sent?","color": "dark_gray","italic": true}]
execute if entity @s[type=evoker,tag=dwindler] if predicate sbremake:random/25 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "My minions will destroy whats left of you!","color": "dark_gray","italic": true}]
execute if entity @s[type=evoker,tag=dwindler] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Must protect heart...","color": "dark_gray","italic": true}]
# Fox
execute if entity @s[type=fox] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Does it bring food?","color": "dark_gray","italic": true}]
execute if entity @s[type=fox] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Is it friendly?","color": "dark_gray","italic": true}]
execute if entity @s[type=fox] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Do I trust?","color": "dark_gray","italic": true}]
# Frog
execute if entity @s[type=frog] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Ribbit.","color": "dark_gray","italic": true}]
execute if entity @s[type=frog] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Smell. Food.","color": "dark_gray","italic": true}]
execute if entity @s[type=frog] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Riiiiiiibbit?","color": "dark_gray","italic": true}]
# Ghast
execute if entity @s[type=ghast] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Please... leave!","color": "dark_gray","italic": true}]
execute if entity @s[type=ghast] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I will blow you up!","color": "dark_gray","italic": true}]
execute if entity @s[type=ghast] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Must protect!","color": "dark_gray","italic": true}]
# Glow Squid
execute if entity @s[type=glow_squid] if predicate sbremake:random/50 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Why?","color": "dark_gray","italic": true}]
execute if entity @s[type=glow_squid] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I serve no purpose...","color": "dark_gray","italic": true}]
# Goat
execute if entity @s[type=goat] if predicate sbremake:random/50 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I'm the GOAT!","color": "dark_gray","italic": true}]
execute if entity @s[type=goat] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I may have a headache.","color": "dark_gray","italic": true}]
# Guardian
execute if entity @s[type=guardian] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Mindless... drone...","color": "dark_gray","italic": true}]
execute if entity @s[type=guardian] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Our... fortress...","color": "dark_gray","italic": true}]
execute if entity @s[type=guardian] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Temple... safe...","color": "dark_gray","italic": true}]
# Hoglin
execute if entity @s[type=hoglin] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Stay away!","color": "dark_gray","italic": true}]
execute if entity @s[type=hoglin] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I'm not food!","color": "dark_gray","italic": true}]
execute if entity @s[type=hoglin] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Protect the young!","color": "dark_gray","italic": true}]
# Horse
execute if entity @s[type=horse] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Is it food I smell?","color": "dark_gray","italic": true}]
execute if entity @s[type=horse] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I'll take you anywhere!","color": "dark_gray","italic": true}]
execute if entity @s[type=horse] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I'm known as Usain Bolt","color": "dark_gray","italic": true}]
# Iron Golem
execute if entity @s[type=iron_golem] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Touch the villagers... I destroy you.","color": "dark_gray","italic": true}]
execute if entity @s[type=iron_golem] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Know your place, feeble human.","color": "dark_gray","italic": true}]
execute if entity @s[type=iron_golem] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Small, slow, weak.","color": "dark_gray","italic": true}]
# Llama
execute if entity @s[type=llama] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I'll spit on you :)","color": "dark_gray","italic": true}]
execute if entity @s[type=llama] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I'm not one for long walks.","color": "dark_gray","italic": true}]
execute if entity @s[type=llama] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Did you bring food?","color": "dark_gray","italic": true}]
# Magma Cube
execute if entity @s[type=magma_cube] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Cube, not square.","color": "dark_gray","italic": true}]
execute if entity @s[type=magma_cube] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success in the_nether run tellraw @a [{"text": "Leave our place of solitude.","color": "dark_gray","italic": true}]
execute if entity @s[type=magma_cube] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Feel pure heat!","color": "dark_gray","italic": true}]
# Mooshroom
execute if entity @s[type=mooshroom] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Mooooooooooooooooooooo","color": "dark_gray","italic": true}]
execute if entity @s[type=mooshroom] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Mooooo?","color": "dark_gray","italic": true}]
execute if entity @s[type=mooshroom] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMOOOoooooooooooooooooooooooooooooooooooooooooooooooooooooo","color": "dark_gray","italic": true}]
# Mule
execute if entity @s[type=mule] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Why do I exist?","color": "dark_gray","italic": true}]
execute if entity @s[type=mule] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I'm slow, small, disgraceful.","color": "dark_gray","italic": true}]
execute if entity @s[type=mule] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "End my suffering :(","color": "dark_gray","italic": true}]
# Ocelot
execute if entity @s[type=ocelot] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I'm fast as fu-!","color": "dark_gray","italic": true}]
execute if entity @s[type=ocelot] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Speed is the name of the game.","color": "dark_gray","italic": true}]
execute if entity @s[type=ocelot] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Too fast? You might die. Too slow? Too slow for the show.","color": "dark_gray","italic": true}]
# Panda
execute if entity @s[type=panda] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Cute, cuddly.","color": "dark_gray","italic": true}]
execute if entity @s[type=panda] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Small yet brave","color": "dark_gray","italic": true}]
execute if entity @s[type=panda] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Bamboo is my favourite","color": "dark_gray","italic": true}]
# Parrot
execute if entity @s[type=parrot] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Polly wants a cracker.","color": "dark_gray","italic": true}]
execute if entity @s[type=parrot] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Craaaaaaaaaw?","color": "dark_gray","italic": true}]
execute if entity @s[type=parrot] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "No cookie, please...","color": "dark_gray","italic": true}]
# Pig
execute if entity @s[type=pig] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Oink.","color": "dark_gray","italic": true}]
execute if entity @s[type=pig] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Ooooooooink.","color": "dark_gray","italic": true}]
execute if entity @s[type=pig] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Oink?","color": "dark_gray","italic": true}]
# Piglin
execute if entity @s[type=piglin] if entity @a[nbt={Inventory:[{id:"minecraft:golden_sword"}]}] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "So shiny... Does it give?","color": "dark_gray","italic": true}]
execute if entity @s[type=piglin] if entity @a[nbt={Inventory:[{id:"minecraft:golden_helmet"}]}] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "So shiny... Does it give?","color": "dark_gray","italic": true}]
execute if entity @s[type=piglin] if entity @a[nbt={Inventory:[{id:"minecraft:golden_chestplate"}]}] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "So shiny... Does it give?","color": "dark_gray","italic": true}]
execute if entity @s[type=piglin] if entity @a[nbt={Inventory:[{id:"minecraft:golden_leggings"}]}] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "So shiny... Does it give?","color": "dark_gray","italic": true}]
execute if entity @s[type=piglin] if entity @a[nbt={Inventory:[{id:"minecraft:golden_boots"}]}] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "So shiny... Does it give?","color": "dark_gray","italic": true}]
execute if entity @s[type=piglin] if predicate sbremake:random/50 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "What are your intentions here?","color": "dark_gray","italic": true}]
execute if entity @s[type=piglin] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Does it bring gold?","color": "dark_gray","italic": true}]
# Piglin Brute
execute if entity @s[type=piglin_brute] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I'm not one to mess around with.","color": "dark_gray","italic": true}]
execute if entity @s[type=piglin_brute] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Gold doesn't divert my attention!","color": "dark_gray","italic": true}]
execute if entity @s[type=piglin_brute] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Don't mistake my appearence, I aint no pig!","color": "dark_gray","italic": true}]
# Pillager
execute if entity @s[type=pillager] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I never miss.","color": "dark_gray","italic": true}]
execute if entity @s[type=pillager] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "It was a warning shot.","color": "dark_gray","italic": true}]
execute if entity @s[type=pillager] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "My bow is pristine!","color": "dark_gray","italic": true}]
# Polar Bear
execute if entity @s[type=polar_bear] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Stay away!","color": "dark_gray","italic": true}]
execute if entity @s[type=polar_bear] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Don't touch my cubs!","color": "dark_gray","italic": true}]
execute if entity @s[type=polar_bear] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Leave us alone!","color": "dark_gray","italic": true}]
# Pufferfish
execute if entity @s[type=pufferfish] if predicate sbremake:random/50 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Stay back!","color": "dark_gray","italic": true}]
execute if entity @s[type=pufferfish] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Feel prickly pain!","color": "dark_gray","italic": true}]
# Rabbit
execute if entity @s[type=rabbit] if predicate sbremake:random/50 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Hop hop hop","color": "dark_gray","italic": true}]
execute if entity @s[type=rabbit] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Carrots so crunchy.","color": "dark_gray","italic": true}]
# Ravager
execute if entity @s[type=ravager] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Grrrrr!","color": "dark_gray","italic": true}]
execute if entity @s[type=ravager] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Arghhhhh!","color": "dark_gray","italic": true}]
execute if entity @s[type=ravager] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Blllllarrrrg!","color": "dark_gray","italic": true}]
# Salmon
execute if entity @s[type=salmon] if predicate sbremake:random/10 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Its quite perplexing how some conditional dialogue came to exist in todays society.","color": "dark_gray","italic": true}]
execute if entity @s[type=salmon] if predicate sbremake:random/10 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "There is no greater presentiment than persistently optically canvassing a wall with closed ocular perceivers.","color": "dark_gray","italic": true}]
execute if entity @s[type=salmon] if predicate sbremake:random/10 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "As they marched about the corner stone to observe that they had peregrinated back in a timeless manner, they felt a large sensational gateaway freeze upon themselves.","color": "dark_gray","italic": true}]
execute if entity @s[type=salmon] if predicate sbremake:random/10 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "It was the preeminent timeful manner when he had ever visually perceived a human create dinner on top of a ginormous elephant.","color": "dark_gray","italic": true}]
execute if entity @s[type=salmon] if predicate sbremake:random/10 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "How exactly does the coefficient of the bisector relate to the perpendicular of the polynomial?","color": "dark_gray","italic": true}]
execute if entity @s[type=salmon] if predicate sbremake:random/10 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "The keep residing in the country England revealed a small amount of fancy footwork in the triumph over Nottingham Forest","color": "dark_gray","italic": true}]
execute if entity @s[type=salmon] if predicate sbremake:random/10 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "While I am a passionate basketball fan, I would much rather play football","color": "dark_gray","italic": true}]
execute if entity @s[type=salmon] if predicate sbremake:random/10 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Parlez-vous la francais? Oh my apologies, wrong language!","color": "dark_gray","italic": true}]
execute if entity @s[type=salmon] if predicate sbremake:random/10 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Est-ce tu parle la francais? Oh desole, j'ai pense tu parle la francais parce que j'ai parle la francais. Wrong language!","color": "dark_gray","italic": true}]
execute if entity @s[type=salmon] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Do you know why the chicken crossed the street? Neither do I.","color": "dark_gray","italic": true}]
# Sheep
execute if entity @s[type=sheep] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Bahhhhhhhhhhhhh","color": "dark_gray","italic": true}]
execute if entity @s[type=sheep] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Bah?!.","color": "dark_gray","italic": true}]
execute if entity @s[type=sheep] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Bahhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh","color": "dark_gray","italic": true}]
# Shulker
execute if entity @s[type=shulker] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Intruder, must protect!","color": "dark_gray","italic": true}]
execute if entity @s[type=shulker] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Fly, invader!","color": "dark_gray","italic": true}]
execute if entity @s[type=shulker] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Your legs shall taste the floor!","color": "dark_gray","italic": true}]
# Silverfish
execute if entity @s[type=endermite] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Sccccccrrrrrrr","color": "dark_gray","italic": true}]
execute if entity @s[type=endermite] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Prrrrreeeeeee","color": "dark_gray","italic": true}]
execute if entity @s[type=endermite] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Triiiiiiiiii?","color": "dark_gray","italic": true}]
# Slime
execute if entity @s[type=slime] if predicate sbremake:random/50 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Blop","color": "dark_gray","italic": true}]
execute if entity @s[type=slime] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Blip blop","color": "dark_gray","italic": true}]
# Snow Golem
execute if entity @s[type=snow_golem] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "The beach isn't my favourite place.","color": "dark_gray","italic": true}]
execute if entity @s[type=snow_golem] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Do you know where I can find some snow?","color": "dark_gray","italic": true}]
execute if entity @s[type=snow_golem] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "These snowballs do like nothing!","color": "dark_gray","italic": true}]
# Spider
execute if entity @s[type=spider] if predicate sbremake:random/50 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "For the queen!","color": "dark_gray","italic": true}]
execute if entity @s[type=spider] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Feel my fangs!","color": "dark_gray","italic": true}]
# Squid
execute if entity @s[type=squid] if predicate sbremake:random/50 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Mind empty","color": "dark_gray","italic": true}]
execute if entity @s[type=squid] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "No thoughts","color": "dark_gray","italic": true}]
# Strider
execute if entity @s[type=strider] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "What brings you here?","color": "dark_gray","italic": true}]
execute if entity @s[type=strider] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Is that fungus I smell?","color": "dark_gray","italic": true}]
execute if entity @s[type=strider] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Lava is my favourite.","color": "dark_gray","italic": true}]
# Tadpole
execute if entity @s[type=tadpole] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "ae","color": "dark_gray","italic": true}]
execute if entity @s[type=tadpole] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "eah","color": "dark_gray","italic": true}]
execute if entity @s[type=tadpole] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "uhf","color": "dark_gray","italic": true}]
# Tropical Fish
execute if entity @s[type=tropical_fish] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Water, so warm!","color": "dark_gray","italic": true}]
execute if entity @s[type=tropical_fish] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Do you love aquatic life?","color": "dark_gray","italic": true}]
execute if entity @s[type=tropical_fish] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Everything is so surreal!","color": "dark_gray","italic": true}]
# Turtle
execute if entity @s[type=turtle] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "wassup brah","color": "dark_gray","italic": true}]
execute if entity @s[type=turtle] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "excuz me brah","color": "dark_gray","italic": true}]
execute if entity @s[type=turtle] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "whatever brah","color": "dark_gray","italic": true}]
# Vex
execute if entity @s[type=vex] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Stay back!","color": "dark_gray","italic": true}]
execute if entity @s[type=vex] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "En guard!","color": "dark_gray","italic": true}]
execute if entity @s[type=vex] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Huzzah!","color": "dark_gray","italic": true}]
# Vindicator
execute if entity @s[type=vindicator] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "You think you're so strong?","color": "dark_gray","italic": true}]
execute if entity @s[type=vindicator] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Be crushed before my will!","color": "dark_gray","italic": true}]
execute if entity @s[type=vindicator] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Here's Johnny!","color": "dark_gray","italic": true}]
# Warden
execute if entity @s[type=warden] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "...","color": "dark_gray","italic": true}]
# Witch
execute if entity @s[type=witch] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "This old Witch will show you something!","color": "dark_gray","italic": true}]
execute if entity @s[type=witch] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Haha, this one fights!","color": "dark_gray","italic": true}]
execute if entity @s[type=witch] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I'm not too old!","color": "dark_gray","italic": true}]
# Wolf
execute if entity @s[type=wolf] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Friend?!","color": "dark_gray","italic": true}]
execute if entity @s[type=wolf] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "I must protecc!","color": "dark_gray","italic": true}]
execute if entity @s[type=wolf] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "Bone.","color": "dark_gray","italic": true}]

# Dwindler Dream
execute if entity @s[tag=dwindlerDream] run tellraw @a [{"text": "A mind full of rue and regret...\n","italic": true,"color": "dark_gray"}]
execute if entity @s[tag=dwindlerDream] store result score @s success run tellraw @a [{"text": "ENTER THE DREAMREALM?","italic": false,"color": "gold","bold": true},{"text": "\nYes","color": "green","bold": true,"italic": false,"clickEvent": {"action": "run_command","value": "/function sbremake:items/berserk/dreamnail/dwindler"},"hoverEvent": {"action": "show_text","contents": "There's no going back."}},{"text": " No","color": "red","bold": true,"italic": false,"clickEvent": {"action": "run_command","value": "/tellraw @a {\"text\":\"You choose not to\",\"color\": \"dark_gray\"}"},"hoverEvent": {"action": "show_text","contents": "not yet"}}]

# Emperor's Heart
execute if entity @s[tag=emperorHeart,type=end_crystal] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "A pulsating darkness emits from this entity","color": "dark_gray","italic": true}]
execute if entity @s[tag=emperorHeart,type=end_crystal] if predicate sbremake:random/33 if score @s success matches 0 store result score @s success run tellraw @a [{"text": "The darkness seeps into your mind","color": "dark_gray","italic": true}]
execute if entity @s[tag=emperorHeart,type=end_crystal] if score @s success matches 0 store result score @s success run tellraw @a [{"text": "It has a grip on you as well","color": "dark_gray","italic": true}]

execute if score @s success matches 0 store result score @s success run tellraw @a [{"text": "oddly enough, this mob doesn't have dreamnail dialogue. Contact Sadan to fix.","color": "dark_gray","italic": true}]