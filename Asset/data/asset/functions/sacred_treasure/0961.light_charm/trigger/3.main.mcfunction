#> asset:sacred_treasure/0961.light_charm/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0961.light_charm/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/hotbar

# ここから先は神器側の効果の処理を書く
    playsound minecraft:block.anvil.place player @a ~ ~ ~ 1 1.5
    playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.5
    particle crit ~ ~1 ~ 0 0 0 0.5 10

# 補正を追加
    function asset:sacred_treasure/0961.light_charm/trigger/add_modifier