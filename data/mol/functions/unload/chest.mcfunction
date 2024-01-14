## function mol:unload/

# get the items if the barrel is open
execute if entity @s[tag=mol.open] run data modify entity @s item.tag.mol.Items set from block ~ ~ ~ Items

# put a chest back
execute if block ~ ~ ~ barrel[facing=north] run setblock ~ ~ ~ chest[facing=north]
execute if block ~ ~ ~ barrel[facing=south] run setblock ~ ~ ~ chest[facing=south]
execute if block ~ ~ ~ barrel[facing=east] run setblock ~ ~ ~ chest[facing=east]
execute if block ~ ~ ~ barrel[facing=west] run setblock ~ ~ ~ chest[facing=west]

# remove the items who dropped from the barrel
function mol:tick/remove_chest/kill_item

# put the loot table (and potential Items) in the chest
data modify block ~ ~ ~ LootTable set from entity @s item.tag.mol.LootTable
execute if entity @s[tag=mol.open] run data modify block ~ ~ ~ Items set from entity @s item.tag.mol.Items

#remove the entity
kill @s
