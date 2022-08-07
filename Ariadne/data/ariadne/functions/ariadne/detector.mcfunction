execute as @s[nbt={HandItems:[{tag:{SeekItem:["ariadne"]}}]}] positioned ~ ~-1.2 ~ run tag @p add ariadne_user
execute as @s[nbt={HandItems:[{tag:{SeekItem:["ariadne"]}}]}] at @s run function ariadne:ariadne/ariadne
data remove entity @s HandItems[]
execute positioned ~ ~-1.2 ~ unless entity @a[nbt={SelectedItem:{tag:{SeekItem:["ariadne"]}}},distance=0] run kill @s

