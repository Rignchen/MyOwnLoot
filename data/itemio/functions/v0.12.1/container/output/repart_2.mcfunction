tag @e[type=#itemio:container, tag=itemio.container.initialised, distance=..0.5001, limit=1, sort=nearest] add itemio.selected.output
execute as @e[tag=itemio.selected.output, tag=!itemio.container.nope, tag=!itemio.container.auto_handled_io] run function itemio:v0.12.1/container/output/custom/output
execute unless entity @e[tag=itemio.selected.output, tag=!itemio.container.nope, tag=!itemio.container.auto_handled_io] run function itemio:v0.12.1/container/output/repart_vanilla
execute as @e[tag=itemio.selected.output, tag=itemio.container.auto_handled_io, tag=!itemio.container.nope] run function itemio:v0.12.1/container/auto_handled_output/before
tag @e[tag=itemio.selected.output] remove itemio.selected.output
