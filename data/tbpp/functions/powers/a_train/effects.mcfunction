
effect give @s minecraft:resistance 1 1 true
execute at @s if score @s tbpp_active matches 1.. run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.1 5 normal
execute at @s if score @s tbpp_active matches 1.. run effect give @e[distance=1..2] minecraft:instant_damage 1 0 true
execute at @s if score @s tbpp_active matches 1.. run effect give @s minecraft:hunger 1 3 true
