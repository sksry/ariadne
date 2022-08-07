execute as @s[nbt={HandItems:[{tag:{SeekItem:["homeward_feather"]}}]}] as @a[tag=ariadne_user,gamemode=!creative] run give @s feather{display:{Name:'{"text":"Homeward Feather","color":"light_purple","italic":false}',Lore:['{"text":"A curious tether to the user\'s\\nhome. An indisputably useful\\ntool for any explorer.\\n\\nImbued with excessive power,\\nthe enchantment on this item\\nwill never fade.","color":"gray","italic":false}']},SeekItem:["ariadne","homeward_feather"],Enchantments:[{}]}
execute store success entity @s HandItems[0].tag.success int 1 run data get entity seeksery SpawnX
execute if entity @s[nbt={HandItems:[{tag:{success:0}}]}] run tag @a[tag=ariadne_user] add ariadne_failed
execute if entity @s[nbt={HandItems:[{tag:{success:0}}]}] run tellraw @a[tag=ariadne_user] {"text":"Energy gathers and immediately dissapates. It seems that you\nhave no set spawn.","color":"gray"}
execute if entity @s[nbt={HandItems:[{tag:{success:0}}]}] run playsound minecraft:block.ender_chest.close master @a[tag=ariadne_user] ~ ~ ~ 0.5 2
tag @a[tag=ariadne_user,scores={seek_stationary=1..}] add ariadne_failed
tag @a[tag=ariadne_user,nbt={OnGround:0b}] add ariadne_failed

tag @a[tag=ariadne_user,tag=!ariadne_failed] add ariadne_teleporting
scoreboard players set @a[tag=ariadne_user,tag=!ariadne_failed] seek_stationary 120

execute as @s[nbt=!{HandItems:[{tag:{SeekItem:["homeward_feather"]}}]}] as @a[tag=ariadne_failed,gamemode=!creative] run give @s string{SeekItem:["ariadne"],display:{Name:'{"text":"Ariadne Thread","color":"yellow","italic":false}',Lore:['{"text":"A curious tether to the user\'s\\nhome. An indisputably useful\\ntool for any explorer.","color":"gray","italic":false}']},Enchantments:[{}]}
tag @a[tag=ariadne_failed] remove ariadne_failed
tag @a[tag=ariadne_user] remove ariadne_user