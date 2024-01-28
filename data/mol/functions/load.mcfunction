## function #load:load

#load custom items
function mol:items

#scoreboard
scoreboard objectives add mol.id dummy
scoreboard objectives add mol.data dummy
scoreboard objectives add mol.chest_looted dummy

scoreboard players set #area_size mol.data 16

##settings
# 0 = no chest drop, 1 = drop mc chest, 2 = drop custom chest
scoreboard players set #chest_drop mol.data 0

#start chest detection loop
schedule function mol:schedule/ 2s

#tell it is loaded
tellraw @a[tag=convention.debug] [{"text":"[MOL]","color":"dark_aqua"},{"text":" My Own Loots has been loaded","color":"aqua"}]

#define
#define entity @a[tag=convention.debug]
#define score_holder #temp
#define storage mol:items
#define storage mol:data
