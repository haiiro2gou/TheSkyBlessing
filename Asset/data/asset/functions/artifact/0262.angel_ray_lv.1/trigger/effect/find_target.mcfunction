#> asset:artifact/0262.angel_ray_lv.1/trigger/effect/find_target
#
#
#
# @within function asset:artifact/0262.angel_ray_lv.1/trigger/effect/*

execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=#lib:living,tag=!Uninterferable,dx=0] add TargetCandidate
execute if entity @s[distance=..12] positioned ^ ^ ^0.5 run function asset:artifact/0262.angel_ray_lv.1/trigger/effect/find_target