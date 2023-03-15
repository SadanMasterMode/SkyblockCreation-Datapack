data modify storage sbstats:data BaseGemstoneData set from storage sbstats:data PlayerData.SelectedItem.tag.Base.Gemstones[2]
data modify storage sbstats:data UpgradeGemstoneData set from storage sbstats:data PlayerData.SelectedItem.tag.Upgrades.Gemstones[2]

data modify storage sbstats:data GemstoneBuilder append value {"text":" "}

# First Bracket

## Gemstone Locked
execute unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"[","color":"dark_gray"}
## Gemstone Unlocked (not applied)
execute if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"[","color":"gray"}
## Gemstone Unlocked (rough)
execute if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b,Tier:'ROUGH'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"[","color":"white"}
## Gemstone Unlocked (flawed)
execute if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b,Tier:'FLAWED'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"[","color":"green"}
## Gemstone Unlocked (fine)
execute if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b,Tier:'FINE'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"[","color":"blue"}
## Gemstone Unlocked (flawless)
execute if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b,Tier:'FLAWLESS'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"[","color":"dark_purple"}
## Gemstone Unlocked (perfect)
execute if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b,Tier:'PERFECT'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"[","color":"gold"}

# Gemstones

## Ruby
execute if data storage sbstats:data {BaseGemstoneData:{id:"RUBY"}} unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❤","color":"dark_gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"RUBY"}} if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❤","color":"gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"RUBY"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❤","color":"red"}

## Amber
execute if data storage sbstats:data {BaseGemstoneData:{id:"AMBER"}} unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"⸕","color":"dark_gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"AMBER"}} if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"⸕","color":"gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"AMBER"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"⸕","color":"gold"}

## Topaz
execute if data storage sbstats:data {BaseGemstoneData:{id:"TOPAZ"}} unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"✧","color":"dark_gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"TOPAZ"}} if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"✧","color":"gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"TOPAZ"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"✧","color":"yellow"}

## Jade
execute if data storage sbstats:data {BaseGemstoneData:{id:"JADE"}} unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"☘","color":"dark_gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"JADE"}} if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"☘","color":"gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"JADE"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"☘","color":"green"}

## Sapphire
execute if data storage sbstats:data {BaseGemstoneData:{id:"SAPPHIRE"}} unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"✎","color":"dark_gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"SAPPHIRE"}} if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"✎","color":"gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"SAPPHIRE"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"✎","color":"blue"}

## Amethyst
execute if data storage sbstats:data {BaseGemstoneData:{id:"AMETHYST"}} unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❈","color":"dark_gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"AMETHYST"}} if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❈","color":"gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"AMETHYST"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❈","color":"light_pink"}

## Jasper
execute if data storage sbstats:data {BaseGemstoneData:{id:"JASPER"}} unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❁","color":"dark_gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"JASPER"}} if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❁","color":"gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"JASPER"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❁","color":"dark_pink"}

## Opal
execute if data storage sbstats:data {BaseGemstoneData:{id:"OPAL"}} unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❂","color":"dark_gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"OPAL"}} if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❂","color":"gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"OPAL"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❂","color":"white"}

# Misc Slots

## Combat
execute if data storage sbstats:data {BaseGemstoneData:{id:"COMBAT"}} unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"⚔","color":"dark_gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"COMBAT"}} if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"⚔","color":"gray"}
### Sapphire
execute if data storage sbstats:data {BaseGemstoneData:{id:"COMBAT"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'SAPPHIRE'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"⚔","color":"blue"}
### Amethyst
execute if data storage sbstats:data {BaseGemstoneData:{id:"COMBAT"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'AMETHYST'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"⚔","color":"light_pink"}
### Jasper
execute if data storage sbstats:data {BaseGemstoneData:{id:"COMBAT"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'JASPER'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"⚔","color":"dark_pink"}
### Ruby
execute if data storage sbstats:data {BaseGemstoneData:{id:"COMBAT"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'RUBY'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"⚔","color":"red"}

## Offensive
execute if data storage sbstats:data {BaseGemstoneData:{id:"OFFENSIVE"}} unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"☠","color":"dark_gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"OFFENSIVE"}} if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"☠","color":"gray"}
### Sapphire
execute if data storage sbstats:data {BaseGemstoneData:{id:"OFFENSIVE"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'SAPPHIRE'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"☠","color":"blue"}
### Jasper
execute if data storage sbstats:data {BaseGemstoneData:{id:"OFFENSIVE"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'JASPER'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"☠","color":"dark_pink"}

## Defensive
execute if data storage sbstats:data {BaseGemstoneData:{id:"DEFENSIVE"}} unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"☤","color":"dark_gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"DEFENSIVE"}} if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"☤","color":"gray"}
### Ruby
execute if data storage sbstats:data {BaseGemstoneData:{id:"DEFENSIVE"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'RUBY'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"☤","color":"red"}
### Amethyst
execute if data storage sbstats:data {BaseGemstoneData:{id:"DEFENSIVE"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'AMETHYST'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"☤","color":"light_pink"}
### Opal
execute if data storage sbstats:data {BaseGemstoneData:{id:"DEFENSIVE"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'OPAL'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"☤","color":"white"}

## Mining
execute if data storage sbstats:data {BaseGemstoneData:{id:"MINING"}} unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"✦","color":"dark_gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"MINING"}} if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"✦","color":"gray"}
### Jade
execute if data storage sbstats:data {BaseGemstoneData:{id:"MINING"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'JADE'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"✦","color":"green"}
### Amber
execute if data storage sbstats:data {BaseGemstoneData:{id:"MINING"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'AMBER'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"✦","color":"gold"}
### Topaz
execute if data storage sbstats:data {BaseGemstoneData:{id:"MINING"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'TOPAZ'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"✦","color":"yellow"}

## Universal
execute if data storage sbstats:data {BaseGemstoneData:{id:"UNIVERSAL"}} unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❂","color":"dark_gray"}
execute if data storage sbstats:data {BaseGemstoneData:{id:"UNIVERSAL"}} if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❂","color":"gray"}
### Jade
execute if data storage sbstats:data {BaseGemstoneData:{id:"UNIVERSAL"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'JADE'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❂","color":"green"}
### Amber
execute if data storage sbstats:data {BaseGemstoneData:{id:"UNIVERSAL"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'AMBER'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❂","color":"gold"}
### Topaz
execute if data storage sbstats:data {BaseGemstoneData:{id:"UNIVERSAL"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'TOPAZ'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❂","color":"yellow"}
### Sapphire
execute if data storage sbstats:data {BaseGemstoneData:{id:"UNIVERSAL"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'SAPPHIRE'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❂","color":"blue"}
### Amethyst
execute if data storage sbstats:data {BaseGemstoneData:{id:"UNIVERSAL"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'AMETHYST'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❂","color":"light_pink"}
### Jasper
execute if data storage sbstats:data {BaseGemstoneData:{id:"UNIVERSAL"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'JASPER'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❂","color":"dark_pink"}
### Ruby
execute if data storage sbstats:data {BaseGemstoneData:{id:"UNIVERSAL"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'RUBY'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❂","color":"red"}
### Opal
execute if data storage sbstats:data {BaseGemstoneData:{id:"DEFENSIVE"}} if data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} if data storage sbstats:data {UpgradeGemstoneData:{id:'OPAL'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"❂","color":"white"}

# Second Bracket

## Gemstone Locked
execute unless data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"]","color":"dark_gray"}
## Gemstone Unlocked (not applied)
execute if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"]","color":"gray"}
## Gemstone Unlocked (rough)
execute if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b,Tier:'ROUGH'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"]","color":"white"}
## Gemstone Unlocked (flawed)
execute if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b,Tier:'FLAWED'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"]","color":"green"}
## Gemstone Unlocked (fine)
execute if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b,Tier:'FINE'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"]","color":"blue"}
## Gemstone Unlocked (flawless)
execute if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b,Tier:'FLAWLESS'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"]","color":"dark_purple"}
## Gemstone Unlocked (perfect)
execute if data storage sbstats:data {BaseGemstoneData:{Unlocked:1b}} unless data storage sbstats:data {UpgradeGemstoneData:{Applied:1b,Tier:'PERFECT'}} run data modify storage sbstats:data GemstoneBuilder append value {"text":"]","color":"gold"}
#endregion