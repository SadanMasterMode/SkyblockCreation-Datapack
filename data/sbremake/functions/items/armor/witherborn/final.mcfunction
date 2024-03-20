execute if entity fccff781-547f-498c-b424-1297596e1d57 as fccff781-547f-498c-b424-1297596e1d57 at @s run tp @s ^ ^ ^0.5 facing entity 638e122c-b657-4d30-a679-7358a2d5f184
execute unless entity fccff781-547f-498c-b424-1297596e1d57 as e4e3300c-d322-4618-a0dc-ea79d82d2844 at @s run tp @s ^ ^ ^0.5 facing entity 638e122c-b657-4d30-a679-7358a2d5f184

execute at fccff781-547f-498c-b424-1297596e1d57 positioned ~ ~4 ~ as @e[tag=witherbornMarked,distance=..1,limit=1,sort=nearest] run function sbremake:items/armor/witherborn/mob1_kill

execute unless entity fccff781-547f-498c-b424-1297596e1d57 at e4e3300c-d322-4618-a0dc-ea79d82d2844 positioned ~ ~4 ~ as @e[tag=witherbornMarked,distance=..1,limit=1,sort=nearest] run function sbremake:items/armor/witherborn/mob2_kill