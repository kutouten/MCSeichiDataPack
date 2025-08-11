#Levelの値を増加
scoreboard players add @p level 1
#xpを設定
##ケース1: 0 <= N <= 16
execute if score @p level matches 0..16 run function seichi_main:xp_caluculate/calculate_case_1

##ケース2: 16 < N <= 31
execute if score @p level matches 17..31 run function seichi_main:xp_caluculate/calculate_case_2

##ケース3: N > 31
execute if score @p level matches 32.. run function seichi_main:xp_caluculate/calculate_case_3
