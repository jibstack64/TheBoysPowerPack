
execute at @s run playsound minecraft:entity.shulker.teleport ambient @a ~ ~ ~ 0.5 2
execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 1 10 normal

execute if score @s tbpp_active matches 0 run effect give @s minecraft:invisibility infinite 255 true
execute if score @s tbpp_active matches 1 run effect clear @s minecraft:invisibility

scoreboard players add @s tbpp_active 1
execute if score @s tbpp_active matches 2.. run scoreboard players set @s tbpp_active 0
