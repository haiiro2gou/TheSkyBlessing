#> asset:spawner/637/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:-205,Y:229,Z:3}] in overworld positioned -205 229 3 if entity @p[distance=..40] run function asset:spawner/637/register