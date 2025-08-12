#表示用ダミーlevelを設定
scoreboard players operation #prev_level level = @p level
#Levelの値を増加
scoreboard players add @p level 1
#soundの再生
playsound minecraft:entity.player.levelup master @p ~ ~ ~ 1 1 1
playsound minecraft:ui.toast.challenge_complete master @p ~ ~ ~ 1 1 1
#titleの表示
title @p title {"text":"Level Up! ","color":"gold","bold":true, "extra": [{"score":{"name":"#prev_level","objective":"level"}},{"text":" -> "},{"score":{"name":"@p","objective":"level"}}]}

#xpを設定
##ケース1: 0 <= N <= 16
execute if score @p level matches 0..16 run function seichi_main:xp_caluculate/calculate_case_1

##ケース2: 16 < N <= 31
execute if score @p level matches 17..31 run function seichi_main:xp_caluculate/calculate_case_2

##ケース3: N > 31
execute if score @p level matches 32.. run function seichi_main:xp_caluculate/calculate_case_3
