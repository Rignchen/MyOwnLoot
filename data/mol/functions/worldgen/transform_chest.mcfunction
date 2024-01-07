## function mol:smithed_block/block/mol_chest
## function mol:worldgen/chest_location

data merge entity @s {item:{Count:1b,id:"minecraft:furnace",tag:{CustomModelData:9449900,mol:{Items:[],Lock:""}}},Tags:["mol.chest","container.nop"]}
data modify entity @s item.tag.mol.LootTable set from block ~ ~ ~ LootTable

#rotate
execute if block ~ ~ ~ chest[facing=east] run data modify entity @s Rotation[0] set value 270f
execute if block ~ ~ ~ chest[facing=north] run data modify entity @s Rotation[0] set value 180f
execute if block ~ ~ ~ chest[facing=south] run data modify entity @s Rotation[0] set value 0f
execute if block ~ ~ ~ chest[facing=west] run data modify entity @s Rotation[0] set value 90f
