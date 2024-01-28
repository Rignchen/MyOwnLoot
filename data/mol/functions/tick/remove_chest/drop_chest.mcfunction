## function mol:tick/remove_chest/

execute if score #chest_drop mol.data matches 1 run loot spawn ~ ~ ~ loot minecraft:blocks/chest
execute if score #chest_drop mol.data matches 2 run loot spawn ~ ~ ~ loot mol:i/mol_chest
