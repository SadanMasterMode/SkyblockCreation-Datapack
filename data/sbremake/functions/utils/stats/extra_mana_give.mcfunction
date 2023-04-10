scoreboard players operation @s extraMana += #wisdom-mana fakePlayers
scoreboard players operation @s extraMana -= @s dwindlerMana
execute as @e[tag=manaTotem,type=text_display] run scoreboard players operation @a[limit=1] extraMana -= @s mercuriusManaDec