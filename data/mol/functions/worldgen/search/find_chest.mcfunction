## function mol:worldgen/search/goto_chest

execute unless entity @e[type=marker,tag=mol.chest_location,distance=...1] run scoreboard players set #temp mol.chest_looted 0
execute if score #temp mol.chest_looted matches 0 summon marker run function mol:worldgen/search/new_marker
