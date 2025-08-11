# 5/2 * N * N
scoreboard players operation @p temp = @p level
scoreboard players operation @p temp *= @p level
scoreboard players set #temp_const temp 5
scoreboard players operation @p temp *= #temp_const temp
scoreboard players set #temp_const temp 2
scoreboard players operation @p temp /= #temp_const temp
scoreboard players operation @p xp += @p temp

# -81/2 * N
scoreboard players set @p temp 81
scoreboard players operation @p temp *= @p level
scoreboard players set #temp_const temp 2
scoreboard players operation @p temp /= #temp_const temp
scoreboard players operation @p xp -= @p temp

# +360
scoreboard players add @p xp 360