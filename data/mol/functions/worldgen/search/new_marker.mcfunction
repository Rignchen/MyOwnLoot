## function mol:worldgen/search/find_chest

tag @s add mol.chest_location
data modify entity @s data.Lock set from block ~ ~ ~ Lock
data modify block ~ ~ ~ Lock set value "§mol:chest"
