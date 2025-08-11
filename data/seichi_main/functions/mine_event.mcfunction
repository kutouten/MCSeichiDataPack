#スコアボードのリセット
scoreboard players set @p mining_pickaxe 0
scoreboard players set @p mining_axe 0
scoreboard players set @p mining_shovel 0
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