
execute at @s run particle minecraft:cloud ~ ~ ~ 0 0 0 1 50 normal
execute at @s run playsound minecraft:item.trident.riptide_3 ambient @a ~ ~ ~ 0.6 1

execute at @s run effect give @e[distance=1..3] minecraft:instant_damage 1 1 true

effect give @s minecraft:levitation 1 50 true
effect give @s minecraft:slow_falling 11 20 true
