advancement revoke @s only sbremake:mercurius/emperor_heart_lc
scoreboard players remove @e[tag=emperorHeart,type=interaction] life 1
execute at @a run playsound entity.wither.hurt master @a ~ ~ ~
particle crimson_spore 88 43.5 99 0 0 0 1 300 normal
particle flame 88 43.5 99 0 0 0 0.2 100 normal
execute at @a run playsound entity.player.attack.sweep master @a ~ ~ ~
data merge entity @e[type=item_display,tag=emperorHeart,limit=1] {glow_color_override:16711680}
schedule function sbremake:world/dreamworld/mercurius/crystal/crystal_color 8t append