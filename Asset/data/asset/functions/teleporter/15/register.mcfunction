#> asset:teleporter/15/register
#
# スポナーの定義データ
#
# @within function asset:teleporter/15/


# 重複防止レジストリへの登録
    data modify storage asset:teleporter DPR set value {D:overworld,X:89,Y:15,Z:74}

# ID (int)
    data modify storage asset:teleporter ID set value 15
# GroupID (string)
    data modify storage asset:teleporter GroupID set value islands
# デフォルトの起動状態 ("InvisibleDeactivate" | "VisibleDeactivate" | "Activate")
    data modify storage asset:teleporter ActivationState set value InvisibleDeactivate
# 色 ("white" | "aqua")
    data modify storage asset:teleporter Color set value white

function asset:teleporter/common/register