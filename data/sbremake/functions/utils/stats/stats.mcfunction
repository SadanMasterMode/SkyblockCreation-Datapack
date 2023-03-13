data modify storage sbremake:data PlayerData set from entity @s

# Clear
## Helmet
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.Damage run data modify storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.Damage set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.attack run data modify storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.attack set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.strength run data modify storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.strength set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.cd run data modify storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.cd set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.intelligence run data modify storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.intelligence set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.ferocity run data modify storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.ferocity set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.defense run data modify storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.defense set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.health run data modify storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag.health set value 0
## Chestplate
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.Damage run data modify storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.Damage set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.attack run data modify storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.attack set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.strength run data modify storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.strength set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.cd run data modify storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.cd set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.intelligence run data modify storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.intelligence set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.ferocity run data modify storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.ferocity set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.defense run data modify storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.defense set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.health run data modify storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag.health set value 0
## Leggings
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.Damage run data modify storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.Damage set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.attack run data modify storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.attack set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.strength run data modify storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.strength set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.cd run data modify storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.cd set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.intelligence run data modify storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.intelligence set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.ferocity run data modify storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.ferocity set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.defense run data modify storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.defense set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.health run data modify storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag.health set value 0
## Boots
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.Damage run data modify storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.Damage set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.attack run data modify storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.attack set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.strength run data modify storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.strength set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.cd run data modify storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.cd set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.intelligence run data modify storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.intelligence set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.ferocity run data modify storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.ferocity set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.defense run data modify storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.defense set value 0
execute unless data storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.health run data modify storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag.health set value 0

# Held Item Stats
execute store result score @s itemDurability run data get storage sbremake:data PlayerData.SelectedItem.tag.Damage
execute store result score @s itemDamage run data get storage sbremake:data PlayerData.SelectedItem.tag.attack
execute store result score @s itemStrength run data get storage sbremake:data PlayerData.SelectedItem.tag.strength
execute store result score @s itemCD run data get storage sbremake:data PlayerData.SelectedItem.tag.cd
execute store result score @s itemIntelligence run data get storage sbremake:data PlayerData.SelectedItem.tag.intelligence
execute store result score @s itemFerocity run data get storage sbremake:data PlayerData.SelectedItem.tag.ferocity
execute store result score @s itemDefense run data get storage sbremake:data PlayerData.SelectedItem.tag.defense
execute store result score @s itemHealth run data get storage sbremake:data PlayerData.SelectedItem.tag.intelligence

# Helmet Stats
data modify storage sbremake:data HelmetData set from storage sbremake:data PlayerData.Inventory[{Slot:103b}].tag

execute store result score @s headDurability run data get storage sbremake:data HelmetData.Damage
execute store result score @s headAttack run data get storage sbremake:data HelmetData.attack
execute store result score @s headStrength run data get storage sbremake:data HelmetData.strength
execute store result score @s headCD run data get storage sbremake:data HelmetData.cd
execute store result score @s headIntelligence run data get storage sbremake:data HelmetData.intelligence
execute store result score @s headFerocity run data get storage sbremake:data HelmetData.ferocity
execute store result score @s headDefense run data get storage sbremake:data HelmetData.defense
execute store result score @s headHealth run data get storage sbremake:data HelmetData.health

# Chestplate Stats
data modify storage sbremake:data ChestplateData set from storage sbremake:data PlayerData.Inventory[{Slot:102b}].tag

execute store result score @s chestplateDurability run data get storage sbremake:data ChestplateData.Damage
execute store result score @s chestplateAttack run data get storage sbremake:data ChestplateData.attack
execute store result score @s chestplateStrength run data get storage sbremake:data ChestplateData.strength
execute store result score @s chestplateCD run data get storage sbremake:data ChestplateData.cd
execute store result score @s chestplateIntelligence run data get storage sbremake:data ChestplateData.intelligence
execute store result score @s chestplateFerocity run data get storage sbremake:data ChestplateData.ferocity
execute store result score @s chestplateDefense run data get storage sbremake:data ChestplateData.defense
execute store result score @s chestplateHealth run data get storage sbremake:data ChestplateData.health

# Leggings Stats
data modify storage sbremake:data LeggingsData set from storage sbremake:data PlayerData.Inventory[{Slot:101b}].tag

execute store result score @s leggingsDurability run data get storage sbremake:data LeggingsData.Damage
execute store result score @s leggingsAttack run data get storage sbremake:data LeggingsData.attack
execute store result score @s leggingsStrength run data get storage sbremake:data LeggingsData.strength
execute store result score @s leggingsCD run data get storage sbremake:data LeggingsData.cd
execute store result score @s leggingsIntelligence run data get storage sbremake:data LeggingsData.intelligence
execute store result score @s leggingsFerocity run data get storage sbremake:data LeggingsData.ferocity
execute store result score @s leggingsDefense run data get storage sbremake:data LeggingsData.defense
execute store result score @s leggingsHealth run data get storage sbremake:data LeggingsData.health

# Boots Stats
data modify storage sbremake:data BootsData set from storage sbremake:data PlayerData.Inventory[{Slot:100b}].tag

execute store result score @s bootsDurability run data get storage sbremake:data BootsData.Damage
execute store result score @s bootsAttack run data get storage sbremake:data BootsData.attack
execute store result score @s bootsStrength run data get storage sbremake:data BootsData.strength
execute store result score @s bootsCD run data get storage sbremake:data BootsData.cd
execute store result score @s bootsIntelligence run data get storage sbremake:data BootsData.intelligence
execute store result score @s bootsFerocity run data get storage sbremake:data BootsData.ferocity
execute store result score @s bootsDefense run data get storage sbremake:data BootsData.defense
execute store result score @s bootsHealth run data get storage sbremake:data BootsData.health

# Defense
scoreboard players set @s defense 0
scoreboard players operation @s defense += @s itemDefense
scoreboard players operation @s defense += @s headDefense
scoreboard players operation @s defense += @s chestplateDefense
scoreboard players operation @s defense += @s leggingsDefense
scoreboard players operation @s defense += @s bootsDefense

# Health
scoreboard players set @s maxHealth 100
scoreboard players operation @s maxHealth += @s itemHealth
scoreboard players operation @s maxHealth += @s headHealth
scoreboard players operation @s maxHealth += @s chestplateHealth
scoreboard players operation @s maxHealth += @s leggingsHealth
scoreboard players operation @s maxHealth += @s bootsHealth

# Damage
scoreboard players set @s damage 0
scoreboard players operation @s damage += @s itemDamage
scoreboard players operation @s damage += @s headDamage
scoreboard players operation @s damage += @s chestplateDamage
scoreboard players operation @s damage += @s leggingsDamage
scoreboard players operation @s damage += @s bootsDamage

# Witherborn Check
execute store result score @s headWitherborn run data get storage sbremake:data HelmetData.witherborn
execute store result score @s cpWitherborn run data get storage sbremake:data ChestplateData.witherborn
execute store result score @s leggingsWitherborn run data get storage sbremake:data LeggingsData.witherborn
execute store result score @s bootsWitherborn run data get storage sbremake:data BootsData.witherborn