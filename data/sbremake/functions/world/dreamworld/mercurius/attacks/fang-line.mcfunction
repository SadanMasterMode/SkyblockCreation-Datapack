execute at @s run summon evoker_fangs ^ ^ ^ {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon","spectator"]}

execute at @s if score e39dc353-0355-4517-b803-00dee36ca116 phase matches 1.. run summon evoker_fangs ^ ^ ^1 {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon","spectator"]}
execute at @s if score e39dc353-0355-4517-b803-00dee36ca116 phase matches 1.. run summon evoker_fangs ^ ^ ^-1 {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon","spectator"]}


execute at @s if score e39dc353-0355-4517-b803-00dee36ca116 phase matches 2.. run summon evoker_fangs ^1 ^ ^ {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon","spectator"]}
execute at @s if score e39dc353-0355-4517-b803-00dee36ca116 phase matches 2.. run summon evoker_fangs ^-1 ^ ^ {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon","spectator"]}
execute at @s if score e39dc353-0355-4517-b803-00dee36ca116 phase matches 2.. run summon evoker_fangs ^1 ^ ^1 {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon","spectator"]}
execute at @s if score e39dc353-0355-4517-b803-00dee36ca116 phase matches 2.. run summon evoker_fangs ^-1 ^ ^1 {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon","spectator"]}
execute at @s if score e39dc353-0355-4517-b803-00dee36ca116 phase matches 2.. run summon evoker_fangs ^1 ^ ^-1 {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon","spectator"]}
execute at @s if score e39dc353-0355-4517-b803-00dee36ca116 phase matches 2.. run summon evoker_fangs ^-1 ^ ^-1 {Warmup:0,Tags:["mercuriusFangs","mercuriusSummon","spectator"]}

execute at @s facing entity e39dc353-0355-4517-b803-00dee36ca116 feet run tp @s ^ ^ ^2 facing entity e39dc353-0355-4517-b803-00dee36ca116 feet 
data modify entity @s Pos[1] set value 41d

execute at e39dc353-0355-4517-b803-00dee36ca116 unless entity @s[distance=..3] at @s run function sbremake:world/dreamworld/mercurius/attacks/fang-line
kill @s