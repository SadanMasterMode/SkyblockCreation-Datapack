function sbremake:utils/stats/stats
function sbremake:achievements/check
function sbremake:utils/player_gamemode
function sbremake:utils/cos
function sbremake:utils/stats/dmg_attribute

execute store result score #new-slot fakePlayers run data get storage sbremake:data PlayerData.SelectedItemSlot
execute unless score #old-slot fakePlayers = #new-slot fakePlayers run function sbremake:utils/stats/get-stats