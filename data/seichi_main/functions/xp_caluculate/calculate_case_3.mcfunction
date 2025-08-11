# 9/2 * N * N
scoreboard players operation @p temp = @p level
scoreboard players operation @p temp *= @p level
scoreboard players set #temp_const temp 9
scoreboard players operation @p temp *= #temp_const temp
scoreboard players set #temp_const temp 2
scoreboard players operation @p temp /= #temp_const temp
scoreboard players operation @p xp += @p temp

# -325/2 * N
scoreboard players set @p temp 325
scoreboard players operation @p temp *= @p level
scoreboard players set #temp_const temp 2
scoreboard players operation @p temp /= #temp_const temp
scoreboard players operation @p xp -= @p temp

# +2220
scoreboard players add @p xp 2220