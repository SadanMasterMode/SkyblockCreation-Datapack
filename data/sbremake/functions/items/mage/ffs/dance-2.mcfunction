scoreboard players add #ffs-2 recursive 1

particle dust 0 0 0 1 ^ ^2 ^5.5 0 0 0 0 0 normal
particle dust 0 0 0 1 ^ ^ ^5.5 0 0 0 0 0 normal
particle dust 0 0 0 1 ^ ^1 ^5.5 0 0 0 0 0 normal

execute unless score #ffs-2 recursive matches 36.. rotated ~10 ~ run function sbremake:items/mage/ffs/dance-2
execute if score #ffs-2 recursive matches 36.. run scoreboard players reset #ffs-2 recursive