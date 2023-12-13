
## make objectives available
scoreboard players add @a tbpp_power 0
scoreboard players add @a tbpp_active 0
scoreboard players enable @a tb_power_up
scoreboard players enable @a tb_github
scoreboard players enable @a tb_version

## github/version
execute as @a[scores={tb_github=1..}] run tellraw @s ["",{"text":"Made by "},{"text":"jibstack64","color":"yellow"},{"text":" ("},{"text":"source code","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/jibstack64/TheBoysPowerPack"}},{"text":")."}]
execute as @a[scores={tb_version=1..}] run tellraw @s ["",{"text":"TheBoysPowerPack","bold":true,"color":"gold"},{"text":" v1.0.0"}]
scoreboard players set @a tb_github 0
scoreboard players set @a tb_version 0

## give random power
execute as @a[scores={tb_power_up=1..}] if score @s tbpp_power matches 1.. run function tbpp:errors/power
execute as @a[scores={tb_power_up=1..}] run function tbpp:compoundv/give_power
scoreboard players set @a tb_power_up 0

## reset ability apon death
scoreboard players set @a[scores={tbpp_deaths=1..}] tbpp_active 0
scoreboard players set @a tbpp_deaths 0

## activate power
execute as @a[scores={tbpp_jump=1.., tbpp_sneak=1..}] run function tbpp:activate
scoreboard players set @a[scores={tbpp_jump=1..}] tbpp_jump 0
scoreboard players set @a[scores={tbpp_sneak=1..}] tbpp_sneak 0


## power effects
execute as @a[scores={tbpp_power=1}] run function tbpp:powers/homelander/effects
execute as @a[scores={tbpp_power=2}] run function tbpp:powers/translucent/effects
execute as @a[scores={tbpp_power=3}] run function tbpp:powers/hughie/effects
execute as @a[scores={tbpp_power=4}] run function tbpp:powers/a_train/effects
execute as @a[scores={tbpp_power=5}] run function tbpp:powers/soldier_boy/effects
execute as @a[scores={tbpp_power=6}] run function tbpp:powers/butcher/effects
