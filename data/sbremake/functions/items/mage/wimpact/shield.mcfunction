playsound minecraft:entity.zombie_villager.cure ambient @a[distance=..10] ~ ~ ~ 1 1 1
scoreboard players set @a Wimpact 0
effect give @a minecraft:absorption 5 1 true
schedule function sbremake:items/mage/wimpact/delay 5s