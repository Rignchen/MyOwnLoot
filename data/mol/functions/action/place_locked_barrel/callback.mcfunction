## function mol:action/place_locked_barrel/

execute align xyz positioned ~.5 ~.5 ~.5 unless entity @e[type=item_display, tag=mol.chest, tag=!mol.open, distance=...01, limit=1] run data remove block ~ ~ ~ Lock
