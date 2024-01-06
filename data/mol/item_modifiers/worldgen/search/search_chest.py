# use this loot table to check the location of a chest in the chunck

from json import dumps
from os import path

x_range = (0, 16)
y_range = (-64, 318)
z_range = (0, 16)

all_tests = []

item_modifier = lambda x, y, z: {
	"function": "minecraft:set_nbt",
	"tag": "{x:%s,y:%s,z:%s}" % (x, y, z),
	"conditions": [
		{
			"condition": "minecraft:inverted",
			"term": {
				"condition": "minecraft:location_check",
				"offsetX": x,
				"offsetY": y,
				"offsetZ": z,
				"predicate": {
					"block": {
						"nbt": "{\"Lock\":\"§mol:chest\"}"
					}
				}
			}
		},
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
}

for x in range(x_range[0], x_range[1]):
	for y in range(y_range[0], y_range[1]):
		for z in range(z_range[0], z_range[1]):
			all_tests.append(item_modifier(x, y, z))



with open(path.join(__file__.removesuffix(path.basename(__file__)), "search_chest.json"), "w") as f:
	f.write(dumps(all_tests, indent="\t"))
