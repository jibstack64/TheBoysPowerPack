
effect give @s minecraft:resistance 1 1 true
effect give @s minecraft:regeneration 1 0 true
execute as @s if score @s tbpp_active matches 1.. run effect give @s minecraft:resistance 1 2 true
execute as @s if score @s tbpp_active matches 1.. run effect give @s minecraft:speed 1 2 true
execute as @s if score @s tbpp_active matches 1.. run effect give @s minecraft:strength 1 0 true
execute as @s if score @s tbpp_active matches 1.. run effect give @s minecraft:jump_boost 1 1 true
execute as @s if score @s tbpp_active matches 1.. run effect give @s minecraft:hunger 1 2 true
execute at @s if score @s tbpp_active matches 1.. run particle minecraft:egg_crack ~ ~ ~ 0 0 0 5 10 normal
