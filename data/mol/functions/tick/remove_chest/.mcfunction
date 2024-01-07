
# test if we should drop the chest
execute store result score #temp mol.chest_looted run kill @e[type=item,nbt={Item:{id:"minecraft:barrel"},Age:0s}]
execute if score #temp mol.chest_looted matches 0 store result score #temp mol.chest_looted run kill @e[type=item,nbt={Item:{id:"minecraft:barrel"},Age:0s}]

# remove the items
execute if data entity @s item.tag.mol.LootTable run function mol:tick/remove_chest/kill_item

# drop the chest
execute if score #temp mol.chest_looted matches 1 run loot spawn ~ ~ ~ loot mol:i/mol_chest

# remove the item display
kill @s
