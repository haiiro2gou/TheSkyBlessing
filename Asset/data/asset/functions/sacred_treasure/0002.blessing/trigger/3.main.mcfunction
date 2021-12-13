#> asset:sacred_treasure/0002.blessing/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0002.blessing/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う auto/feet/legs/chest/head/mainhand/offhandを記載してね
    function asset:sacred_treasure/lib/use/auto

# ここから先は神器側の効果の処理を書く
# 固定加算量  : HP +2, MP +5
# 40島攻略時  : HP+80, MP+200
# 追加選択    : HP +1, MP +2, Atk +1%, Def +1%
# 40島極振り時: HP+40, MP+80, Atk+40%, Def+40%

# 固定加算
    scoreboard players add $MaxHealth Global 20000
    function player_manager:bonus/update_health_bonus/
    scoreboard players add $MaxMP Global 5
    function player_manager:bonus/update_mp_bonus/
# メッセージ
    tellraw @s [{"text":"最大体力が","color":"white"},{"text":"2","color":"aqua"},{"text":"増えた","color":"white"}]
    tellraw @s [{"text":"最大MPが","color":"white"},{"text":"5","color":"aqua"},{"text":"増えた","color":"white"}]
# 選択トリガー
    scoreboard players enable @s 02.Trigger
# チャット
    function asset:sacred_treasure/0002.blessing/trigger/show_trigger_chat
# リスナー
    schedule function asset:sacred_treasure/0002.blessing/trigger/listener 1t