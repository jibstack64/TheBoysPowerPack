
execute at @s if score @s tbpp_active matches 0 run playsound minecraft:entity.vex.ambient ambient @a ~ ~ ~ 1 2
execute at @s if score @s tbpp_active matches 1.. run playsound minecraft:entity.vex.hurt ambient @a ~ ~ ~ 1 2

scoreboard players add @s tbpp_active 1
execute if score @s tbpp_active matches 2.. run scoreboard players set @s tbpp_active 0
