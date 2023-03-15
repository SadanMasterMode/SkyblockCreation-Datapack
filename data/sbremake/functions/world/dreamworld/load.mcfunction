scoreboard objectives add life dummy
scoreboard objectives add bob dummy
scoreboard objectives add cd dummy
scoreboard objectives add count dummy
scoreboard objectives add phase dummy
scoreboard objectives add hits dummy
scoreboard objectives add mobCount dummy
scoreboard objectives add stalkerType dummy
scoreboard objectives add dmgDealtResis minecraft.custom:damage_dealt_resisted

tag @a remove mercuriusSpawn
tag @a remove mercuriusBoss

schedule function sbremake:world/dreamworld/mercurius/spawn 1t append