#> api:player_modifier/core/defense/magic/remove
#
#
#
# @within function api:player_modifier/defense/magic/remove

# UserStorage呼び出し
    function oh_my_dat:please
# 無ければ入れる
    data modify storage api: Modifiers set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Defense.Magic
# 配列の初期化
    data modify storage api: NewModifiers set value []
    data remove storage api: Removed
# フィルタ
    function api:player_modifier/core/common/remove_modifier
# 削除されたデータの加工
    execute store result storage api: Removed.Amount double -0.001 run data get storage api: Removed.Amount 1000
# 新しい配列を戻す
    data modify storage api: Modifiers set from storage api: NewModifiers
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Modifier.Defense.Magic set from storage api: Modifiers
# データの更新
    function api:player_modifier/core/common/update_modifier/
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Modifiers.Defense.Magic set from storage api: Modifier
# リセット
    data remove storage api: Modifiers
    data remove storage api: NewModifiers