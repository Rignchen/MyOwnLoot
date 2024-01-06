## function mol:worldgen/search/find_chest

tag @s add mol.chest_location
data modify block ~ ~ ~ Lock set value "§mol:chest"

setblock ~ ~1 ~ diamond_block
