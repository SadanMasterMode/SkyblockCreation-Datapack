schedule clear sbremake:world/dreamworld/mercurius/attacks/orbs/damage
execute at @e[tag=damage_orb] run damage @a[distance=..7,limit=1] 6 mob_attack by @e[tag=damage_orb,limit=1]
execute at @e[tag=damage_orb] run tellraw @a[distance=..7] [{"text": "You were damaged via the Damage Orb!","color": "red"}]
execute at @e[tag=damage_orb] run effect give @a[distance=..7] nausea 4 1 true