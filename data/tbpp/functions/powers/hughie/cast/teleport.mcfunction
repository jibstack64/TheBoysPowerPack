
execute at @p[tag=tbpp_init] run playsound minecraft:entity.enderman.teleport ambient @a ~ ~ ~ 2 1

execute at @p[tag=tbpp_init] run particle minecraft:poof ~ ~ ~ 0 0 0 0.25 10 normal

execute as @s at @e[tag=tbpp_cast] run tp @p[tag=tbpp_init] ~ ~ ~

kill @e[tag=tbpp_cast]

tag @p[tag=tbpp_init] remove tbpp_init
scoreboard players reset @e[tag=tbpp_cast] tbpp_steps
