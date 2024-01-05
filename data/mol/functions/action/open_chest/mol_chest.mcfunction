## mol:action/open_chest/callback

# set the chest's contents to what the player left
$execute store success score @s mol.chest_looted run data modify block ~ ~ ~ Items set from entity @s item.tag.mol.Items[{Owner:$(owner)}].Items
execute if score @s mol.chest_looted matches 0 run scoreboard players add @p[tag=mol.temp] mol.chest_looted 1

# lock the chest with an unobtainable password (the § symbol can't be typed)
data modify entity @s item.tag.mol.Lock set from block ~ ~ ~ Lock
data modify block ~ ~ ~ Lock set value "§mol:chest"

# make the chest easier to track
tag @s add mol.open
scoreboard players operation @s mol.id = @p[tag=mol.temp] mol.id
$data modify entity @s item.tag.mol.owner set value $(owner)
