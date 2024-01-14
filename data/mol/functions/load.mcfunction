## function #load:load

#load custom items
function mol:items

#scoreboard
scoreboard objectives add mol.id dummy
scoreboard objectives add mol.data dummy
scoreboard objectives add mol.chest_looted dummy

scoreboard players set #area_size mol.data 16

#start chest detection loop
schedule function mol:schedule/ 2s

#define
#define entity @a[tag=convention.debug]
#define score_holder #temp
#define storage mol:items
#define storage mol:data
