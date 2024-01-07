## mol:action/open_chest/

tag @s add mol.temp
execute store result storage mol:data temp.owner int 1 run scoreboard players get @s mol.id
execute align xyz positioned ~.5 ~.5 ~.5 as @e[type=item_display, tag=mol.chest, tag=!mol.open, distance=...01, limit=1] run function mol:action/open_chest/mol_chest with storage mol:data temp
tag @s remove mol.temp
