
## drawback
effect give @p[tag=tbpp_init] minecraft:poison 1 0 true
effect give @p[tag=tbpp_init] minecraft:slowness 1 1 true

scoreboard players add @e[tag=tbpp_cast] tbpp_steps 1

execute as @e[tag=tbpp_cast,scores={tbpp_steps=64..}] run function tbpp:powers/butcher/break

execute at @e[tag=tbpp_cast,scores={tbpp_steps=..63}] run particle minecraft:flame ~ ~ ~ 0 0 0 0.01 1 normal

execute as @e[tag=tbpp_cast,scores={tbpp_steps=..63}] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ air run tp @e[tag=tbpp_cast] ^ ^ ^0.5
execute as @e[tag=tbpp_cast,scores={tbpp_steps=..63}] at @s if block ~ ~ ~ air run function tbpp:powers/butcher/laser

execute as @e[tag=tbpp_cast,scores={tbpp_steps=..63}] at @s unless block ~ ~ ~ air run function tbpp:powers/butcher/break
