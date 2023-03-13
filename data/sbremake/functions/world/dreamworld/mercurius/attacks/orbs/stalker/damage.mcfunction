schedule clear sbremake:world/dreamworld/mercurius/attacks/orbs/stalker/damage
attribute @p generic.knockback_resistance base set 100
execute as @a[tag=stalkerEye] run damage @s 6 generic by @e[tag=stalker_orb,limit=1]
attribute @p generic.knockback_resistance base set 0
tellraw @a[tag=stalkerEye] [{"text": "Don't look at the Stalker Orb!","color": "red"}]