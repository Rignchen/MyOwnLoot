## function mol:smithed_block/block/mol_chest

data merge entity @s {item:{Count:1b,id:"minecraft:furnace",tag:{CustomModelData:9449900,mol:{Items:{},LootTable:"",Lock:""}}}}
#summon item_display ~ ~ ~ {item:{Count:1b,id:"minecraft:furnace",tag:{CustomModelData:9449900,mol:{Items:{},LootTable:"",Lock:""}}}}

#rotate
execute if block ~ ~ ~ chest[facing=east] run data modify entity @s Rotation[0] set value 270f
execute if block ~ ~ ~ chest[facing=north] run data modify entity @s Rotation[0] set value 180f
execute if block ~ ~ ~ chest[facing=south] run data modify entity @s Rotation[0] set value 0f
execute if block ~ ~ ~ chest[facing=west] run data modify entity @s Rotation[0] set value 90f
