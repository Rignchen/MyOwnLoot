## function mol:schedule/

execute if entity @s[tag=mol.open] if block ~ ~ ~ barrel[open=false] run function mol:close_chest/
