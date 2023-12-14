
execute at @s run playsound minecraft:block.fire.extinguish ambient @a ~ ~ ~ 1 1

execute at @s run effect give @e[distance=1..2] minecraft:instant_damage 1 0 true
execute at @s run data merge entity @e[distance=1..2,limit=1] {Fire:80}

execute at @s run setblock ~ ~ ~ air

kill @e[tag=tbpp_cast]

tag @p[tag=tbpp_init] remove tbpp_init
scoreboard players reset @e[tag=tbpp_cast] tbpp_steps
