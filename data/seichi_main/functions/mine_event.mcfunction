#スコアボードのリセット
scoreboard players set @p mining_pickaxe 0
scoreboard players set @p mining_axe 0
scoreboard players set @p mining_shovel 0

#mining_countを増加
scoreboard players add @p mining_count 1

#sidebarの更新
scoreboard players operation Total sidebar = @p mining_count