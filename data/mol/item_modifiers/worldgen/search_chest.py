# use this loot table to check the location of a chest in the chunck

from json import dumps
from os import path

x_range = (0, 16)
y_range = (0, 255)
z_range = (0, 16)

item_modifiers = []

for x in range(x_range[0], x_range[1]):
	for y in range(y_range[0], y_range[1]):
		for z in range(z_range[0], z_range[1]):
			item_modifiers.append({
				"function": "minecraft:set_nbt",
				"tag": "{x:%s,y:%s,z:%s}" % (x, y, z),
				"conditions": [
					{
						"condition": "minecraft:location_check",
						"offsetX": x,
						"offsetY": y,
						"offsetZ": z,
						"predicate": {
							"block": {
								"blocks": [
									"minecraft:chest"
								]
							}
						}
					}
				]
			})

with open(path.join(__file__.removesuffix(path.basename(__file__)), "search_chest.json"), "w") as f:
	f.write(dumps(item_modifiers, indent="\t"))
