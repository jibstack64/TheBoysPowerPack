
scoreboard players add @e[tag=tbpp_cast] tbpp_steps 1

execute as @e[tag=tbpp_cast,scores={tbpp_steps=64..}] run function tbpp:powers/hughie/cast/teleport

execute as @e[tag=tbpp_cast,scores={tbpp_steps=..63}] at @s positioned ^ ^ ^0.5 if block ~ ~ ~ air run tp @e[tag=tbpp_cast] ^ ^ ^0.5
execute as @e[tag=tbpp_cast,scores={tbpp_steps=..63}] at @s if block ~ ~ ~ air run function tbpp:powers/hughie/cast/scan

execute as @e[tag=tbpp_cast,scores={tbpp_steps=..63}] at @s unless block ~ ~ ~ air run function tbpp:powers/hughie/cast/teleport
