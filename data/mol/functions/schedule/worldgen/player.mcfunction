## function mol:schedule/

# get the x and z position of the player
execute store result score #pos_x mol.data run data get entity @s Pos[0]
execute store result score #pos_z mol.data run data get entity @s Pos[2]

# get the x and z position +/- the area_size, this is done by dividing the position by the area_size, then multiplying by the area_size again, this can be done because scoreboard values are integers
scoreboard players operation #pos_x mol.data /= #area_size mol.data
scoreboard players operation #pos_x mol.data *= #area_size mol.data
scoreboard players operation #pos_z mol.data /= #area_size mol.data
scoreboard players operation #pos_z mol.data *= #area_size mol.data

# put the x and z position in the temp storage
data modify storage mol:data temp set value {}
execute store result storage mol:data temp.x int 1 run scoreboard players get #pos_x mol.data
execute store result storage mol:data temp.z int 1 run scoreboard players get #pos_z mol.data
execute store result storage mol:data temp.area_size int 1 run scoreboard players get #area_size mol.data

# get the 8 chunks around the player
function mol:schedule/worldgen/get_chunk_pos with storage mol:data temp
