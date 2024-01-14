## call by the player

#remove chests
execute as @e[tag=mol.chest] at @s run function mol:unload/chest

#storages
data remove storage mol:items data
data remove storage mol:data chunk
data remove storage mol:data temp

#scoreboard
scoreboard objectives remove mol.id
scoreboard objectives remove mol.chest_looted

#say goodbye
tellraw @a[tag=convention.debug] [{"text":"[MOL]","color":"dark_aqua"},{"text":" My Own Loots is disabled","color":"aqua"}]
tellraw @s[tag=!convention.debug] [{"text":"[MOL]","color":"dark_aqua"},{"text":" My Own Loots is disabled","color":"aqua"}]

#disable the pack
datapack disable "file/My Own Loots"
datapack disable "file/My Own Loots.zip"
