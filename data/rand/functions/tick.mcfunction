# ダイスのスクリプト
execute as @a[nbt={SelectedItem: {id: "minecraft:carrot_on_a_stick", tag: {dice: true}}},limit=1] run execute if score @s is_use_carrot_stick matches 1.. run function rand:dice