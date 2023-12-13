
effect give @s minecraft:resistance 1 1 true
effect give @s minecraft:strength 1 0 true
execute if score @s tbpp_active matches 1.. as @s run function tbpp:powers/butcher/start_laser
