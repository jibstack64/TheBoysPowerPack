
scoreboard players add @e[tag=tbpp_cast] tbpp_steps 1

execute as @e[tag=tbpp_cast,scores={tbpp_steps=64..}] run function tbpp:powers/head_popper/pop

execute as @e[tag=tbpp_cast,scores={tbpp_steps=..63}] at @s positioned ^ ^ ^0.5 unless entity @e[type=!item,tag=!tbpp_init,tag=!tbpp_cast,distance=..2] run tp @e[tag=tbpp_cast] ^ ^ ^0.5
execute as @e[tag=tbpp_cast,scores={tbpp_steps=..63}] at @s unless entity @e[type=!item,tag=!tbpp_init,tag=!tbpp_cast,distance=..2] run function tbpp:powers/head_popper/scan

execute as @e[tag=tbpp_cast,scores={tbpp_steps=..63}] at @s if entity @e[type=!item,tag=!tbpp_init,tag=!tbpp_cast,distance=..2] run function tbpp:powers/head_popper/pop
