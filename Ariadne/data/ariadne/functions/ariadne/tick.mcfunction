execute as @e[tag=cauldron_heated,nbt={ArmorItems:[{tag:{Cauldron:[{id:"minecraft:fermented_spider_eye",Count:1},{id:"minecraft:ender_pearl",Count:1},{id:"minecraft:string",Count:2}]}}]},scores={seek_counter=4}] at @s run function ariadne:cauldron/recipe
execute as @e[tag=cauldron_heated,nbt={ArmorItems:[{tag:{Cauldron:[{id:"minecraft:feather",Count:1}]}}]}] at @s run function ariadne:cauldron/recipe2

execute as @e[tag=ariadne_teleporting] at @s run function ariadne:ariadne/teleporting

execute as @a[nbt={SelectedItem:{tag:{SeekItem:["ariadne"]}}}] at @s run function ariadne:ariadne/holding
execute as @e[tag=ariadne_detector] at @s run function ariadne:ariadne/detector