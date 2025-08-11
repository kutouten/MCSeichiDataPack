# N * N
scoreboard players operation @p temp = @p level
scoreboard players operation @p temp *= @p level
scoreboard players operation @p xp += @p temp

# 6N
scoreboard players set @p temp 6
scoreboard players operation @p temp *= @p level
scoreboard players operation @p xp += @p temp