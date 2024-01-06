## function mol:worldgen/

data remove block ~ ~ ~ Lock
data modify block ~ ~ ~ Lock set from entity @s data.Lock
execute store result score #temp mol.chest_looted run data get block ~ ~ ~ LootTable
execute if score #temp mol.chest_looted matches 1.. align xyz positioned ~.5 ~.5 ~.5 summon item_display run function mol:worldgen/transform_chest
kill @s
