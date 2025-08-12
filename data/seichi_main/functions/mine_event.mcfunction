#スコアボードのリセット
execute if score @p mining_pickaxe matches 1.. run scoreboard players remove @p mining_pickaxe 1
execute if score @p mining_axe matches 1.. run scoreboard players remove @p mining_axe 1
execute if score @p mining_shovel matches 1.. run scoreboard players remove @p mining_shovel 1
#mining_countを増加
scoreboard players add @p mining_count 1
#xpを減少
scoreboard players remove @p xp 1
#xpが0以下になったらlevelUP
execute if score @p xp matches ..0 run function seichi_main:levelup
#sidebarの更新
scoreboard players operation Total sidebar = @p mining_count
scoreboard players operation Level sidebar = @p level
scoreboard players operation NextLevel sidebar = @p xp