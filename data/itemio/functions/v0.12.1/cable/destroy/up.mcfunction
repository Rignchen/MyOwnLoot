scoreboard players remove @s itemio.math 2
function #itemio:event/cable_update
execute if entity @s[tag=!itemio.network.already_regenerated] run function itemio:v0.12.1/cable/destroy/regen
