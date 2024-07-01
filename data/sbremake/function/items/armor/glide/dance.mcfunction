scoreboard players add #glide-1 recursive 1

particle flame ^ ^0.33 ^1 0 0 0 0 0 normal

execute unless score #glide-1 recursive matches 15.. rotated ~24 ~ run function sbremake:items/armor/glide/dance
execute if score #glide-1 recursive matches 15.. run scoreboard players reset #glide-1 recursive