execute at @a run playsound minecraft:entity.zombie_villager.cure ambient @a ~ ~ ~ 1 1 1
scoreboard players reset @p Wimpact
effect give @p minecraft:absorption 5 1 true
schedule function sbremake:items/mage/wimpact/delay 5s