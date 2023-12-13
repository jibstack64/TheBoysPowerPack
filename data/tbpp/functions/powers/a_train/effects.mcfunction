
effect give @s minecraft:resistance 1 1 true
execute if score @s tbpp_active matches 1.. run execute at @s if score @s tbpp_deaths matches ..0 run particle minecraft:soul_fire_flame ~ ~ ~ 0 0 0 0.1 5 normal
execute if score @s tbpp_active matches 1.. run execute at @s if score @s tbpp_deaths matches ..0 run effect give @s minecraft:strength 1 2 true
