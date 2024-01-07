## function #load:load

#load custom items
function mol:items

#scoreboard
scoreboard objectives add mol.id dummy
scoreboard objectives add mol.chest_looted dummy

#define
#define entity @a[tag=convention.debug]
#define score_holder #temp
#define storage mol:items
#define storage mol:data

# debug
kill @e[type=item_display]
