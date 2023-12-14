
execute as @s run tag @s add tbpp_init

execute at @s run summon armor_stand ~ ~1.8 ~ {Tags:["tbpp_cast"],Invisible:1,NoGravity:1,Invulnerable:1,Small:1}
execute as @e[tag=tbpp_cast,limit=1] at @s run tp @s ^ ^ ^
execute as @e[tag=tbpp_cast,limit=1] at @s run data modify entity @s Rotation set from entity @p[tag=tbpp_init] Rotation

execute as @e[tag=tbpp_cast] run function tbpp:powers/head_popper/scan
