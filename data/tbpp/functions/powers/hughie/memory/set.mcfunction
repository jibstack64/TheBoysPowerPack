
execute as @s store result score @s tbpp_store_x run data get entity @s Pos[0]
execute as @s store result score @s tbpp_store_y run data get entity @s Pos[1]
execute as @s store result score @s tbpp_store_z run data get entity @s Pos[2]

tellraw @s ["",{"text":"Set teleport destination.","color":"green"}]
