## advancement mol:action/open_chest

# make reusable
advancement revoke @s only mol:action/open_chest

# raycast to find chest the
data merge storage iris:settings {Callback:"mol:action/open_chest/callback",Whitelist:"minecraft:barrel"}
execute anchored eyes positioned ^ ^ ^ run function iris:get_target
