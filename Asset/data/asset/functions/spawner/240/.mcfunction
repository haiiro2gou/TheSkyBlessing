#> asset:spawner/240/
#
# スポナーの呪われた神器の位置を書く
#
# @within tag/function asset:spawner/register

execute unless data storage asset:spawner DPR[{D:overworld,X:-12,Y:105,Z:-117}] in overworld positioned -12 105 -117 if entity @p[distance=..40] run function asset:spawner/240/register