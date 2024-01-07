
# this function is called by the player when he close a chest

execute store result storage mol:data temp.owner int 1 run scoreboard players get @s mol.id
function mol:close_chest/player with storage mol:data temp
