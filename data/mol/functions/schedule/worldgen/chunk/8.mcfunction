## function mol:schedule/worldgen/get_chunk

# get chunk pos
function mol:schedule/worldgen/clone_pos
scoreboard players operation #chunk_x mol.data += #area_size mol.data
scoreboard players operation #chunk_z mol.data += #area_size mol.data
function mol:schedule/worldgen/test_start