#> player_manager:god/mercy/listener
#
#
#
# @within function
#   player_manager:god/mercy/
#   player_manager:god/mercy/listener

# チェック
    execute as @a[scores={Believe=1..}] run function player_manager:god/mercy/on_click
    execute as @a[scores={Believe=0}] unless score @s InArea matches 10..14 run scoreboard players reset @s Believe
# ループ
    execute if entity @a[scores={Believe=0},limit=1] run schedule function player_manager:god/mercy/listener 1t