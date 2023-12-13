
execute if score @s tbpp_active matches 0 run function tbpp:powers/hughie/memory/set
execute if score @s tbpp_active matches 1.. run function tbpp:powers/hughie/memory/goto

scoreboard players add @s tbpp_active 1
execute if score @s tbpp_active matches 2.. run scoreboard players set @s tbpp_active 0
