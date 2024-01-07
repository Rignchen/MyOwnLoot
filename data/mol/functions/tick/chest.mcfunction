## function mol:tick/

execute unless block ~ ~ ~ barrel run function mol:tick/remove_chest/
execute if entity @s[tag=mol.open] if block ~ ~ ~ barrel[open=false] run function mol:close_chest/
