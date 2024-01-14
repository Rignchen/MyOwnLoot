execute if score #itemio.minor load.status matches ..12 unless score #itemio.minor load.status matches 12 run function itemio:v0.12.1/test_load/enumerate/set_version
execute unless score #itemio.set load.status matches 1 if score #itemio.minor load.status matches ..12 if score #itemio.minor load.status matches 12 run function itemio:v0.12.1/test_load/enumerate/patch
