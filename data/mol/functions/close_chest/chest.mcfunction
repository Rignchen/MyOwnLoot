##function mol:close_chest/close_chest

# store the items in the chest as owned by the player who opened it
$execute if score @s mol.chest_looted matches 0 run data modify entity @s item.tag.mol.Items append value {Owner:$(owner)}
$data modify entity @s item.tag.mol.Items[{Owner:$(owner)}].Items set from block ~ ~ ~ Items

# put the data back
data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ Lock set from entity @s item.tag.mol.Lock

#remove the information that it's open
tag @s remove mol.open
scoreboard players reset @s mol.chest_looted
scoreboard players reset @s mol.id
# reset is more efficient here because it's really likely that the player will open lots of chests
# with set 0 the game would have to store a lot of useless data
