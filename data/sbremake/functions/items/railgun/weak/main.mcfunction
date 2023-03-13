scoreboard players add @p weakrailCharge 5
scoreboard players remove @p mana 25
execute unless score @p weakrailCharge matches 100 at @p run playsound minecraft:block.piston.extend master @p ~ ~ ~ 1 2
execute if score @p weakrailCharge matches 100 at @p run playsound minecraft:block.piston.extend master @p ~ ~ ~ 1 0.5