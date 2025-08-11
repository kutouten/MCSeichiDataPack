tell @a "Loading Seichi DataPack..."

#スコアボード定義
##サイドバー表示用
scoreboard objectives add sidebar dummy "Seichi Info"
##総合採掘量
scoreboard objectives add mining_count dummy
##各ツール採掘検知用
scoreboard objectives add mining_pickaxe minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add mining_axe minecraft.used:minecraft.diamond_axe
scoreboard objectives add mining_shovel minecraft.used:minecraft.diamond_shovel

#サイドバー設定
scoreboard objectives setdisplay sidebar sidebar
scoreboard players set Level sidebar 0
scoreboard players set NextLevel sidebar 0
scoreboard players set Total sidebar 0