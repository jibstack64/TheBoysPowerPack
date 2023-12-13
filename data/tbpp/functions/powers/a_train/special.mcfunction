
execute at @s run playsound minecraft:item.trident.riptide_3 ambient @a ~ ~ ~ 0.5 2

execute if score @s tbpp_active matches 0 run effect give @s minecraft:speed infinite 20 true
execute if score @s tbpp_active matches 1 run effect clear @s minecraft:speed

scoreboard players add @s tbpp_active 1
execute if score @s tbpp_active matches 2.. run scoreboard players set @s tbpp_active 0
