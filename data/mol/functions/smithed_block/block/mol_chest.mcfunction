## function mol:smithed_block/mol

execute if block ~ ~ ~ furnace[facing=east] run setblock ~ ~ ~ chest[facing=east]
execute if block ~ ~ ~ furnace[facing=north] run setblock ~ ~ ~ chest[facing=north]
execute if block ~ ~ ~ furnace[facing=south] run setblock ~ ~ ~ chest[facing=south]
execute if block ~ ~ ~ furnace[facing=west] run setblock ~ ~ ~ chest[facing=west]

execute summon item_display run function mol:worldgen/transform_chest
