tell @a "Loading Seichi DataPack..."

#スコアボード定義
##サイドバー表示用
scoreboard objectives add sidebar dummy "Seichi Info"
##総合採掘量
scoreboard objectives add mining_count dummy
## レベルを保持するスコアボード
scoreboard objectives add level dummy
## 経験値（XP）を保持するスコアボード
scoreboard objectives add xp dummy
##各ツール採掘検知用
scoreboard objectives add mining_pickaxe minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add mining_axe minecraft.used:minecraft.diamond_axe
scoreboard objectives add mining_shovel minecraft.used:minecraft.diamond_shovel
##経験値計算用
scoreboard objectives add temp dummy
### 定数を保持するためのダミープレイヤー
scoreboard players set #const_5_2 temp 2
scoreboard players set #const_81_2 temp 81
scoreboard players set #const_9_2 temp 9
scoreboard players set #const_325_2 temp 325
scoreboard players set #const_2220 temp 2220

#サイドバー設定
scoreboard objectives setdisplay sidebar sidebar
scoreboard players set Level sidebar 0
scoreboard players set NextLevel sidebar 0
scoreboard players set Total sidebar 0
#tablistの設定
scoreboard objectives setdisplay list level

#ツールの付与
function seichi_main:give_item