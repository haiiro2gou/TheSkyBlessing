#> asset:sacred_treasure/0573.final_prism/final_laser
#
# 超必殺究極ビーム
#
# @within function asset:sacred_treasure/0573.final_prism/*

# お前をここで倒す！
    execute unless entity @s[distance=..2] run particle minecraft:dust 1 1 1 1 ~ ~ ~ 0.1 0.1 0.1 0 1 force
    execute unless entity @s[distance=..2] run particle minecraft:electric_spark ~ ~ ~ 0.15 0.15 0.15 0 5 force
    execute unless entity @s[distance=..2] if predicate lib:random_pass_per/5 run particle minecraft:end_rod ~ ~ ~ 0.15 0.15 0.15 0 1 force
    execute unless entity @s[distance=..2] if predicate lib:random_pass_per/25 run particle minecraft:glow ~ ~ ~ 0.15 0.15 0.15 0 1 force

# 接触時判定
    execute if entity @s[distance=..45] positioned ~-0.5 ~-0.5 ~-0.5 at @e[tag=Enemy,dx=0] run function asset:sacred_treasure/0573.final_prism/damage_final

# 前進
    execute if entity @s[distance=..45] positioned ~-0.5 ~-0.5 ~-0.5 unless entity @s[dx=0] unless entity @e[tag=Enemy,tag=!Uninterferable,dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^0.5 run function asset:sacred_treasure/0573.final_prism/final_laser
    execute if entity @s[distance=..45] positioned ~-0.5 ~-0.5 ~-0.5 if entity @s[dx=0] positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ #lib:no_collision positioned ^ ^ ^0.5 run function asset:sacred_treasure/0573.final_prism/final_laser

# 減速
    effect give @s slowness 1 1 true