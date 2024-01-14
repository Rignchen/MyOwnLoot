## function mol:schedule/worldgen/get_chunk_pos

## Try on these regions: (- = Player, R = Region) (player included)
#
#	R	R	R
#	R	-	R
#	R	R	R
#

function mol:schedule/worldgen/test with storage mol:data temp
$execute if loaded ~-$(area_size) ~ ~-$(area_size) run function mol:schedule/worldgen/chunk/1
$execute if loaded ~-$(area_size) ~ ~ run function mol:schedule/worldgen/chunk/2
$execute if loaded ~-$(area_size) ~ ~$(area_size) run function mol:schedule/worldgen/chunk/3
$execute if loaded ~ ~ ~-$(area_size) run function mol:schedule/worldgen/chunk/4
$execute if loaded ~ ~ ~$(area_size) run function mol:schedule/worldgen/chunk/5
$execute if loaded ~$(area_size) ~ ~-$(area_size) run function mol:schedule/worldgen/chunk/6
$execute if loaded ~$(area_size) ~ ~ run function mol:schedule/worldgen/chunk/7
$execute if loaded ~$(area_size) ~ ~$(area_size) run function mol:schedule/worldgen/chunk/8
