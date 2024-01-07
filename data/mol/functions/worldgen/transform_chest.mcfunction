## function mol:smithed_block/block/mol_chest
## function mol:worldgen/chest_location

data merge entity @s {item:{Count:1b,id:"minecraft:furnace",tag:{CustomModelData:9449900,mol:{Items:[],Lock:""}}},Tags:["mol.chest","container.nop"]}

function mol:worldgen/become_barrel

#rotate
execute if block ~ ~ ~ barrel[facing=east] run data modify entity @s Rotation[0] set value 270f
execute if block ~ ~ ~ barrel[facing=north] run data modify entity @s Rotation[0] set value 180f
execute if block ~ ~ ~ barrel[facing=south] run data modify entity @s Rotation[0] set value 0f
execute if block ~ ~ ~ barrel[facing=west] run data modify entity @s Rotation[0] set value 90f
