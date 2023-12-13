
execute at @s run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 1 1

execute at @s run setblock ~ ~ ~ air

kill @e[tag=tbpp_cast]

tag @p[tag=tbpp_init] remove tbpp_init
scoreboard players reset @e[tag=tbpp_cast] tbpp_steps
