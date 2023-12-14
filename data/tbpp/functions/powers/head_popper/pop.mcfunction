
execute as @e[type=!item,tag=!tbpp_init,tag=!tbpp_cast,distance=..2] run playsound minecraft:enchant.thorns.hit ambient @a ~ ~ ~ 3 1

execute at @e[type=!item,tag=!tbpp_init,tag=!tbpp_cast,distance=..2] run particle minecraft:angry_villager ~ ~1.75 ~ 0 0 0 1 100 normal

execute as @e[type=!item,tag=!tbpp_init,tag=!tbpp_cast,distance=..2] run effect give @s minecraft:instant_damage 1 3 true

kill @e[tag=tbpp_cast]

tag @p[tag=tbpp_init] remove tbpp_init
scoreboard players reset @e[tag=tbpp_cast] tbpp_steps
