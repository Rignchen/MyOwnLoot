## function #mol:load

execute as @e[type=item_display,tag=mol.chest] at @s run function mol:schedule/chest

#loop
schedule function mol:schedule/ 2t
