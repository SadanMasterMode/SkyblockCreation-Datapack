data modify block ~ ~1 ~ front_text.messages[1] set value '[{"nbt":"front_text.messages[0]","block":"~ ~ ~","interpret":true},{"nbt":"Items[0].tag.cw_type[0]","block":"~ ~-1 ~","interpret":true}]'
data modify block ~ ~1 ~ front_text.messages[0] set value '{"nbt":"front_text.messages[1]","block":"~ ~ ~","interpret":true}'
data remove block ~ ~ ~ Items[0].tag.cw_type[0]

title @a title [""]
title @a subtitle [""]
execute if score title text_effects matches 1 run title @a[tag=typewriter] title {"nbt":"front_text.messages[0]","block":"~ ~1 ~","interpret":true}
execute if score subtitle text_effects matches 1 run title @a[tag=typewriter] subtitle {"nbt":"front_text.messages[0]","block":"~ ~1 ~","interpret":true}
execute if score actionbar text_effects matches 1 run title @a[tag=typewriter] actionbar {"nbt":"front_text.messages[0]","block":"~ ~1 ~","interpret":true}

execute if score sounds text_effects matches 1 at @a run playsound block.note_block.snare master @a[tag=typewriter] ~ ~ ~ 1000 1.5