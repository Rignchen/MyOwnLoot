## function mol:action/open_chest/mol_chest

scoreboard players add @p[tag=mol.temp] mol.chest_looted 1
$execute as @p[tag=mol.temp] run loot insert ~ ~ ~ loot $(LootTable)
