#> iris:setup/load
#
# Defines scoreboard objectives and sets up storage if it has not already been done
#
# @handles #minecraft:load

# Setup scoreboard and storage
execute unless data storage iris:data is_setup run function iris:setup/scoreboard
execute unless data storage iris:data is_setup run function iris:setup/storage
