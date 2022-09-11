#> asset:sacred_treasure/0958.whetstone_of_the_gods/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:sacred_treasure/0958.whetstone_of_the_gods/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:sacred_treasure/common/use/offhand

# ここから先は神器側の効果の処理を書く
    execute if data storage asset:context Items.mainhand{id:   "minecraft:wooden_sword"} run item replace entity @s weapon.mainhand with wooden_sword{Sharpened:1b,display:{Name:'{"text":"研がれた木の剣","color":"white","italic":false}'},Enchantments:[{}],AttributeModifiers:[{Name:"generic.attack_damage",AttributeName:"generic.attack_damage",Amount:20d,Operation:0,Slot:"mainhand",UUID:[I;1,1,958,1]},{Name:"generic.attack_speed",AttributeName:"generic.attack_speed",Amount:-2.4d,Operation:0,Slot:"mainhand",UUID:[I;1,1,958,1]}]}
    execute if data storage asset:context Items.mainhand{id:    "minecraft:stone_sword"} run item replace entity @s weapon.mainhand with stone_sword{Sharpened:1b,display:{Name:'{"text":"研がれた石の剣","color":"white","italic":false}'},Enchantments:[{}],AttributeModifiers:[{Name:"generic.attack_damage",AttributeName:"generic.attack_damage",Amount:45d,Operation:0,Slot:"mainhand",UUID:[I;1,1,958,1]},{Name:"generic.attack_speed",AttributeName:"generic.attack_speed",Amount:-2.4d,Operation:0,Slot:"mainhand",UUID:[I;1,1,958,1]}]}
    execute if data storage asset:context Items.mainhand{id:     "minecraft:iron_sword"} run item replace entity @s weapon.mainhand with iron_sword{Sharpened:1b,display:{Name:'{"text":"研がれた鉄の剣","color":"white","italic":false}'},Enchantments:[{}],AttributeModifiers:[{Name:"generic.attack_damage",AttributeName:"generic.attack_damage",Amount:70d,Operation:0,Slot:"mainhand",UUID:[I;1,1,958,1]},{Name:"generic.attack_speed",AttributeName:"generic.attack_speed",Amount:-2.4d,Operation:0,Slot:"mainhand",UUID:[I;1,1,958,1]}]}
    execute if data storage asset:context Items.mainhand{id:   "minecraft:golden_sword"} run item replace entity @s weapon.mainhand with golden_sword{Sharpened:1b,display:{Name:'{"text":"研がれた金の剣","color":"white","italic":false}',Lore:['{"text":"耐久力 XX","color":"gray","italic":false}']},Enchantments:[{id:"unbreaking",lvl:20s}],HideFlags:1,AttributeModifiers:[{Name:"generic.attack_damage",AttributeName:"generic.attack_damage",Amount:150d,Operation:0,Slot:"mainhand",UUID:[I;1,1,958,1]},{Name:"generic.attack_speed",AttributeName:"generic.attack_speed",Amount:-2.4d,Operation:0,Slot:"mainhand",UUID:[I;1,1,958,1]}]}
    execute if data storage asset:context Items.mainhand{id:  "minecraft:diamond_sword"} run item replace entity @s weapon.mainhand with diamond_sword{Sharpened:1b,display:{Name:'{"text":"研がれたダイヤモンドの剣","color":"white","italic":false}'},Enchantments:[{}],AttributeModifiers:[{Name:"generic.attack_damage",AttributeName:"generic.attack_damage",Amount:300d,Operation:0,Slot:"mainhand",UUID:[I;1,1,958,1]},{Name:"generic.attack_speed",AttributeName:"generic.attack_speed",Amount:-2.4d,Operation:0,Slot:"mainhand",UUID:[I;1,1,958,1]}]}
    execute if data storage asset:context Items.mainhand{id:"minecraft:netherite_sword"} run item replace entity @s weapon.mainhand with netherite_sword{Sharpened:1b,display:{Name:'{"text":"研がれたネザライトの剣","color":"white","italic":false}'},Enchantments:[{}],AttributeModifiers:[{Name:"generic.attack_damage",AttributeName:"generic.attack_damage",Amount:500d,Operation:0,Slot:"mainhand",UUID:[I;1,1,958,1]},{Name:"generic.attack_speed",AttributeName:"generic.attack_speed",Amount:-2.4d,Operation:0,Slot:"mainhand",UUID:[I;1,1,958,1]}]}