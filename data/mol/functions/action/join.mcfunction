## advancement mol:action/join

# give everyone a unique id when they join for the first time
scoreboard players add #server mol.id 1
scoreboard players operation @s mol.id = #server mol.id
