# vaporizer
execute as @a[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{display:{Name:"\"Vaporizer\""},Unbreakable:1b,CustomModelData:1}}}] if score @s right_click matches 1.. run function seichi_main:item_use/vaporizer/vaporizer_main

# スコアボードの値をリセット
scoreboard players set @p right_click 0

