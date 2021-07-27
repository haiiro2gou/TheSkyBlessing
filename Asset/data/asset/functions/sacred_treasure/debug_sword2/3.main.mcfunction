#> asset:sacred_treasure/debug_sword2/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/debug_sword2/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/mainhand

# ここから先は神器側の効果の処理を書く
data modify storage lib: Argument.Damage set value 20
data modify storage lib: Argument.AttackType set value "Physical"
data modify storage lib: Argument.ElementType set value "None"
function lib:damage/modifier
execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function lib:damage/
execute at @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run particle minecraft:crit ~ ~1 ~ 0.3 0.5 0.3 1 70
data remove storage lib: Argument