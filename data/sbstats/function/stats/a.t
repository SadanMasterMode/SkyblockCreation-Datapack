{
    Base:{
        type:'SWORD', # Weapon type (sword, axe, dagger, etc...) - Dictates what reforges can go on it.
        rarity:'RARE', # Rarity (common, rare, leg, etc...) - Dictates what stats the reforges give and what color it is in chat
        stats:{ # Base weapon stats
            damage:100,
            strength:100
        }
    },
    Upgrades:{
        recomb:0b, # Dictates whether the item has a recomb and is able to have one applied.
        reforge:{
            type:'', # Reforge name (suspicious, godly, etc...)
            stats:{
                # Reforge stats, empty when spawned in.
            } 
        }
    }, # Generic vanilla stuff below
    Unbreakable:1,
    display:{
        Name:'[{"text":"Rare Sword","italic":false,"color":"blue"}]',
        Lore:[ # Each newline is a seperate lore line
            '[{"text":"Damage: ","italic":false,"color":"gray"},{"text":"+100","color":"red"},{"text":"","color":"dark_purple"}]',
            '[{"text":"Strength: ","italic":false,"color":"gray"},{"text":"+100","color":"red"},{"text":"","color":"dark_purple"}]',
            '[{"text":"","italic":false,"color":"dark_purple"}]',
            '[{"text":"Ability: Testing ","italic":false,"color":"gold"},{"text":"RIGHT CLICK","color":"yellow","bold":true},{"text":"","color":"dark_purple","bold":false}]',
            '[{"text":"A simple testing ability.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]',
            '[{"text":"Cooldown:","italic":false,"color":"dark_gray"},{"text":" ","color":"gray"},{"text":"1s","color":"green"},{"text":"","color":"dark_purple"}]',
            '[{"text":"","italic":false,"color":"dark_purple"}]',
            '[{"text":"This item can be reforged!","italic":false,"color":"dark_gray"},{"text":"","italic":false,"color":"dark_purple"}]',
            '[{"text":"RARE SWORD","italic":false,"color":"blue","bold":true}]'
        ]
    },
    HideFlags:127
}
Base:{
    type:'',
    rarity:'',
    stats:{
        
    },
    description:[

    ]
},
Upgrades:{
    recomb:0b,
    reforge:{
        type:'',
        stats:{

        }
    }
}
