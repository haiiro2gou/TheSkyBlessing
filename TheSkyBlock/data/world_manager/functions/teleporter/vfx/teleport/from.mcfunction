#> world_manager:teleporter/vfx/teleport/from
#
#
#
# @within function world_manager:teleporter/active

playsound entity.enderman.teleport player @a ~ ~ ~
particle reverse_portal ~ ~1 ~ 0 0 0 1 150 force @a[distance=..15]