execute store result score global cw_loops run data get block ~ ~ ~ Items[0].tag.cw_type
scoreboard players operation iterr cw_loops = global cw_loops
scoreboard players operation iterr cw_loops *= delay text_effects
data remove block ~ ~1 ~ front_text.messages[0]
function sbremake:utils/typewriter/type_write_loop