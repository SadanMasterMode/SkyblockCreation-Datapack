tag @e[nbt={HurtTime:10s}] add wraithMarked
execute at @p run playsound minecraft:entity.wither.hurt master @p ~ ~ ~
tellraw @p [{"text":"TERRORWRAITH ","color":"green","bold":true},{"text":"You marked a mob!","color":"green","bold":false}]