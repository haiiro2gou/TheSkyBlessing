#> asset:sacred_treasure/0270.angel_ray_lv.10/recursive
#
#
#
# @within function
#   asset:sacred_treasure/0270.angel_ray_lv.10/3.main
#   asset:sacred_treasure/0270.angel_ray_lv.10/recursive

# 処理
    execute as @e[type=area_effect_cloud,tag=7I.AngelRay] at @s run function asset:sacred_treasure/0270.angel_ray_lv.10/ray
# Entityが残ってるならループ予約
    execute if entity @e[type=area_effect_cloud,tag=7I.AngelRay,limit=1] run schedule function asset:sacred_treasure/0270.angel_ray_lv.10/recursive 1t