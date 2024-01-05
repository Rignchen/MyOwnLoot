##function mol:close_chest/close_chest

# store the items in the chest as owned by the player who opened it
$execute if score @s mol.chest_looted matches 0 run data modify entity @s item.tag.mol.Items append value {Owner:$(owner)}
$data modify entity @s item.tag.mol.Items[{Owner:$(owner)}].Items set from block ~ ~ ~ Items

# put the data back
data modify block ~ ~ ~ Items set value []
data modify block ~ ~ ~ Lock set from entity @s item.tag.mol.Lock
data modify block ~ ~ ~ LootTable set from entity @s item.tag.mol.LootTable

#remove the information that it's open
tag @s remove mol.open
scoreboard players set @s mol.chest_looted 0
scoreboard players set @s mol.id 0
