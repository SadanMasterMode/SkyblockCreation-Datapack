function sbremake:items/armor/glide/dance

execute if score @a[limit=1] glideTime matches 41..60 run data modify entity @s text set value '{"score":{"objective":"glideTime","name":"@a[limit=1]"},"color":"green"}'
execute if score @a[limit=1] glideTime matches 21..40 run data modify entity @s text set value '{"score":{"objective":"glideTime","name":"@a[limit=1]"},"color":"yellow"}'
execute if score @a[limit=1] glideTime matches 1..20 run data modify entity @s text set value '{"score":{"objective":"glideTime","name":"@a[limit=1]"},"color":"red"}'