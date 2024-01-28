## advancement mol:action/place_locked_barrel

#make reusable
advancement revoke @s only mol:action/place_locked_barrel

# raycast to find the barrel
data merge storage iris:settings {Callback:"mol:action/place_locked_barrel/callback",Whitelist:"minecraft:barrel"}
execute anchored eyes positioned ^ ^ ^ run function iris:get_target
