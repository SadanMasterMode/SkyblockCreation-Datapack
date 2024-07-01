scoreboard players add @a bob 1
execute if score @p bob matches 1 run data merge entity @s {interpolation_duration:6,start_interpolation:0,transformation:[2.0130302149885035f,0.6010606141352284f,2.141596481991582f,0f,-1.4095389311788624f,2.5791328270615557f,0.6010606141352284f,-1.5f,-1.7207293090531377f,-1.4095389311788624f,2.0130302149885035f,0f,0f,0f,0f,1f]}

execute if score @p bob matches 7 run data merge entity @s {interpolation_duration:6,start_interpolation:0,transformation:[-1.2678547852220983f,-0.4721360868727881f,-2.67761680586709f,0f,2.7189233611099497f,-0.22016067300011435f,-1.2485932221803502f,-1.5f,3.6739403974420594e-16f,-2.954423259036624f,0.5209445330007909f,0f,0f,0f,0f,1f]}

execute if score @p bob matches 13 run data merge entity @s {interpolation_duration:6,start_interpolation:0,transformation:[-1.993389073166024f,-2.239355791976597f,0.10810013840494093f,0f,-0.7255342879439257f,0.7812078065027694f,2.8041601880200844f,-1.5f,-2.121320343559643f,1.8371173070873834f,-1.0606601717798214f,0f,0f,0f,0f,1f]}

execute if score @p bob matches 19 run data merge entity @s {interpolation_duration:6,start_interpolation:0,transformation:[-0.4990970260284058f,-2.9529838481017174f,-0.1754666676607674f,0f,1.8626554590445372f,-0.17546666766076574f,-2.3451494812552167f,-1.5f,2.298133329356934f,-0.49909702602840633f,1.8626554590445368f,0f,0f,0f,0f,1f]}

execute if score @p bob matches 25 run data merge entity @s {interpolation_duration:6,start_interpolation:0,transformation:[0.7296310404050821f,-0.7415497556338535f,-2.813848344313668f,0f,-2.723020113571106f,-1.1968917102263994f,-0.39065546851225147f,-1.5f,-1.0260604299770066f,2.6490666646784664f,-0.9641814145298092f,0f,0f,0f,0f,1f]}

scoreboard players reset @a[scores={bob=31..}] bob

schedule function sbremake:world/dreamworld/mercurius/crystal/sound 80t append