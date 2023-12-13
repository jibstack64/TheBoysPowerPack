
effect give @s minecraft:resistance 1 1 true
execute as @s if score @s tbpp_active matches 1.. run effect give @s minecraft:resistance 1 3 true
execute as @s if score @s tbpp_active matches 1.. run effect give @s minecraft:weakness 1 255 true
