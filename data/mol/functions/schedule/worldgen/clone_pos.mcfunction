## function mol:schedule/worldgen/get_chunk

# cords are stored in the scoreboard pos_x and pos_z, they need to be cloned to the scoreboard chunk_x and chunk_z

scoreboard players operation #chunk_x mol.data = #pos_x mol.data
scoreboard players operation #chunk_z mol.data = #pos_z mol.data
