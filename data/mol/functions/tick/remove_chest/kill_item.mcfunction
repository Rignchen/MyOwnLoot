## function mol:tick/remove_chest/
## function mol:worldgen/become_barrel
## function mol:unload/chest

# remove that spawn this exact tick in a 5 block radius
kill @e[type=item,nbt={Age:0s},distance=..5]
