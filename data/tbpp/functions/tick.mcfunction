
## make objectives available
scoreboard players add @a tbpp_power 0
scoreboard players add @a tbpp_active 0
scoreboard players enable @a tb_power_up
scoreboard players enable @a tb_power_toggle
scoreboard players enable @a tb_github
scoreboard players enable @a tb_version

## github/version
execute as @a[scores={tb_github=1..}] run tellraw @s ["",{"text":"Made by "},{"text":"jibstack64","color":"yellow"},{"text":" ("},{"text":"source code","color":"aqua","clickEvent":{"action":"open_url","value":"https://github.com/jibstack64/TheBoysPowerPack"}},{"text":")."}]
execute as @a[scores={tb_version=1..}] run tellraw @s ["",{"text":"TheBoysPowerPack","bold":true,"color":"gold"},{"text":" v1.1.0"}]
scoreboard players set @a tb_github 0
scoreboard players set @a tb_version 0

## give random power
execute as @a[scores={tb_power_up=1..}] if score @s tbpp_power matches 1.. run function tbpp:errors/power
execute as @a[scores={tb_power_up=1..}] run function tbpp:compoundv/give_power
scoreboard players set @a tb_power_up 0

## reset ability apon death
scoreboard players set @a[scores={tbpp_deaths=1..}] tbpp_active 0
scoreboard players set @a tbpp_deaths 0

## toggle power
execute as @a[scores={tb_power_toggle=1..}] if score @s tbpp_power matches ..0 run function tbpp:errors/toggle
execute as @a[scores={tb_power_toggle=1..}] run scoreboard players add @s tbpp_toggle 1
execute as @a[scores={tb_power_toggle=1..}] if score @s tbpp_toggle matches 2.. run scoreboard players set @s tbpp_toggle 0
execute as @a[scores={tb_power_toggle=1..,tbpp_toggle=1}] run tellraw @a ["",{"text":"Your ability has been toggled "},{"text":"OFF","bold":true,"color":"red"},{"text":"."}]
execute as @a[scores={tb_power_toggle=1..,tbpp_toggle=0}] run tellraw @a ["",{"text":"Your ability has been toggled "},{"text":"ON","bold":true,"color":"green"},{"text":"."}]
execute as @a[scores={tb_power_toggle=1..,tbpp_active=1}] run function tbpp:activate
scoreboard players set @a tb_power_toggle 0

## activate power
execute as @a[scores={tbpp_jump=1.., tbpp_sneak=1.., tbpp_toggle=..0}] run function tbpp:activate
scoreboard players set @a[scores={tbpp_jump=1..}] tbpp_jump 0
scoreboard players set @a[scores={tbpp_sneak=1..}] tbpp_sneak 0

## power effects
execute as @a run function tbpp:effects
