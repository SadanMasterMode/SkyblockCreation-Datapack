scoreboard players set @p infiniteManaToggle 0
execute if score @p infiniteMana matches 0 run function sbremake:items/book/infinitemana/on
execute if score @p infiniteMana matches 1 if score @p infiniteManaToggle matches 0 run function sbremake:items/book/infinitemana/off