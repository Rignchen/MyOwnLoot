data modify storage itemio:main temp.chiseled_bookshelf_items set from block ~ ~ ~ Items
data modify storage itemio:main temp.chiseled_bookshelf_args set value ""
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[facing=north] run function itemio:v0.12.1/container/chiseled_bookshelf/north
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[facing=south] run function itemio:v0.12.1/container/chiseled_bookshelf/south
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[facing=east] run function itemio:v0.12.1/container/chiseled_bookshelf/east
execute if block ~ ~ ~ minecraft:chiseled_bookshelf[facing=west] run function itemio:v0.12.1/container/chiseled_bookshelf/west
data modify block ~ ~ ~ Items set from storage itemio:main temp.chiseled_bookshelf_items
