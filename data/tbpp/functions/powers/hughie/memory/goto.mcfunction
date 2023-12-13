
execute at @s run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1,Invulnerable:1,Invisible:1,Tags:["tbpp_cast"]}

execute store result entity @e[tag=tbpp_cast,limit=1] Pos[0] double 1 run scoreboard players get @s tbpp_store_x
execute store result entity @e[tag=tbpp_cast,limit=1] Pos[1] double 1 run scoreboard players get @s tbpp_store_y
execute store result entity @e[tag=tbpp_cast,limit=1] Pos[2] double 1 run scoreboard players get @s tbpp_store_z

tp @s @e[tag=tbpp_cast,limit=1]

tellraw @s ["",{"text":"Successfully teleported.","color":"green"}]

