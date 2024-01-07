
# this function is called by the chest when it closes

execute at @s run function mol:close_chest/chest with entity @s[tag=mol.open] item.tag.mol
