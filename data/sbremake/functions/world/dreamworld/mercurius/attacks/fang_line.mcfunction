execute facing entity @p feet run summon armor_stand ^ ^-0.5 ^1 {Invisible:1b,Invulnerable:1b,CustomName:'{"text": "!","color": "red","bold": true}',Tags:["evokerLine"]}
execute at @a run playsound entity.evoker.prepare_attack master @a ~ ~ ~
tellraw @a [{"text": "The Emperor casted a line of Evoker Fangs!","color": "red"}]