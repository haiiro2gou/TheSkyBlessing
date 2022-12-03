#> asset_manager:effect/give/give
#
#
#
# @within function asset_manager:effect/give/

# storage呼び出し
    function oh_my_dat:please

# エフェクトがすでに付与されている場合はそれを取得する
    function asset_manager:effect/give/try_pop_effect_data
# 追加するためのデータを加工する
    function asset_manager:effect/give/make_effect_data
# Effectsに追加
    data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].Effects append from storage asset:effect EffectData
# イベントを呼び出すための待機リストにIDを追加する
    execute if data storage asset:effect OriginEffectData run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EventWaitEffects.ReGiven append from storage asset:effect ID
    execute unless data storage asset:effect OriginEffectData run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].EventWaitEffects.Given append from storage asset:effect ID
# タグ付与
    tag @s add HasAssetEffect
# リセット
    data remove storage asset:effect EffectData
    data remove storage asset:effect OriginEffectData