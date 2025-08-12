# 採掘検知用
execute if score @p mining_pickaxe matches 1.. run function seichi_main:mine_event
execute if score @p mining_axe matches 1.. run function seichi_main:mine_event
execute if score @p mining_shovel matches 1.. run function seichi_main:mine_event

# 右クリック検知用
execute if score @p right_click matches 1.. run function seichi_main:right_click_event