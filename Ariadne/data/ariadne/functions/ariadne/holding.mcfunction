execute positioned ~ ~1.2 ~ unless entity @e[tag=ariadne_detector,distance=..0] run summon armor_stand ~ ~ ~ {Small:1,Invisible:1,Silent:1,NoGravity:1,Tags:[ariadne_detector],ShowArms:1b}
execute as @s[tag=seek_stringed] run summon armor_stand ~ ~ ~ {Small:1,Invisible:1,Silent:1,NoGravity:1,Marker:1,Tags:[ariadne_string]}
give @a[tag=seek_stringed] string{SeekItem:["ariadne"],display:{Name:'{"text":"Ariadne Thread","color":"yellow","italic":false}',Lore:['{"text":"A curious tether to the user\'s\\nhome. An indisputably useful\\ntool for any explorer.","color":"gray","italic":false}']},Enchantments:[{}]}
scoreboard players set @e[tag=ariadne_string] seek_temp 200
data modify entity @e[tag=ariadne_string,sort=nearest,limit=1] Rotation set from entity @s Rotation
execute as @e[tag=ariadne_string] at @s run tp @s ~ ~1.625 ~
execute as @e[tag=ariadne_string] at @s run function ariadne:ariadne/string_raycast
kill @e[tag=ariadne_string]