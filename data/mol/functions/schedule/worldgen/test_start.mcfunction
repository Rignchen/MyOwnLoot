## function mol:schedule/worldgen/chunk/(1-8)

# store pos in a temp storage, so we can use them in macro
data modify storage mol:data temp set value {}
execute store result storage mol:data temp.x int 1 run scoreboard players get #chunk_x mol.data
execute store result storage mol:data temp.z int 1 run scoreboard players get #chunk_z mol.data

# test is the chunk is already generated
function mol:schedule/worldgen/test with storage mol:data temp
