data remove storage itemio:io filters
data remove storage itemio:io input
data modify storage itemio:io input set from storage itemio:main servo_items[0]
scoreboard players operation #max_output_count itemio.io = @s itemio.servo.stack_limit
execute positioned ^ ^ ^-1 align xyz positioned ~0.5 ~0.5 ~0.5 run function #itemio:calls/transfer
data remove storage itemio:main servo_items[0]
execute if score #success_transfer itemio.io matches 0 if data storage itemio:main servo_items[0] run function itemio:v0.12.1/servo/make_transfer_items
