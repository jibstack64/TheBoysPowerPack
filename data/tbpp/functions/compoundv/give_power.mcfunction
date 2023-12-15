
setblock ~ ~ ~ minecraft:chest{Tags:["tbpp_rng"]}

loot replace block ~ ~ ~ container.0 loot tbpp:random_number

execute store result score @s tbpp_power run data get block ~ ~ ~ Items[0].Count

setblock ~ ~ ~ air

execute as @s[scores={tb_power_up=1..}] if score @s tbpp_power matches 1 run function tbpp:powers/homelander/message
execute as @s[scores={tb_power_up=1..}] if score @s tbpp_power matches 2 run function tbpp:powers/translucent/message
execute as @s[scores={tb_power_up=1..}] if score @s tbpp_power matches 3 run function tbpp:powers/hughie/message
execute as @s[scores={tb_power_up=1..}] if score @s tbpp_power matches 4 run function tbpp:powers/a_train/message
execute as @s[scores={tb_power_up=1..}] if score @s tbpp_power matches 5 run function tbpp:powers/soldier_boy/message
execute as @s[scores={tb_power_up=1..}] if score @s tbpp_power matches 6 run function tbpp:powers/butcher/message
execute as @s[scores={tb_power_up=1..}] if score @s tbpp_power matches 7 run function tbpp:powers/kimiko/message
execute as @s[scores={tb_power_up=1..}] if score @s tbpp_power matches 8 run function tbpp:powers/head_popper/message
