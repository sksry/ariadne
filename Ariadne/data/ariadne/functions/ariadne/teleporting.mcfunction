particle witch ~ ~0.5 ~ 0.25 0.25 0.25 0 3 force

execute at @s[scores={seek_stationary=0}] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
execute at @s[scores={seek_stationary=0}] run particle witch ~ ~0.5 ~ 0.35 0.36 0.35 1 75 force
execute as @s[scores={seek_stationary=0}] run summon armor_stand ~ ~ ~ {Tags:[ariadne_dest],Marker:1,Silent:1,Invisible:1,NoGravity:1}
tag @s[scores={seek_stationary=0}] add ariadne_finished
execute as @e[tag=ariadne_dest] run function ariadne:ariadne/dest
execute at @s[scores={seek_stationary=0}] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0
execute at @s[scores={seek_stationary=0}] run particle witch ~ ~0.5 ~ 0.35 0.36 0.35 1 75 force
tag @s[scores={seek_stationary=0}] remove ariadne_finished
tag @s[scores={seek_stationary=0}] remove ariadne_teleporting
tag @s[scores={seek_stationary=0}] remove ariadne_teleporting_1


give @s[scores={seek_health=0},tag=ariadne_teleporting_1] string{SeekItem:["ariadne"],display:{Name:'{"text":"Ariadne Thread","color":"yellow","italic":false}',Lore:['{"text":"A curious tether to the user\'s\\nhome. An indisputably useful\\ntool for any explorer.","color":"gray","italic":false}']},Enchantments:[{}]}
tag @s[scores={seek_health=0}] remove ariadne_teleporting
tag @s[scores={seek_health=0}] remove ariadne_teleporting_1

give @s[tag=seek_sneaked,tag=ariadne_teleporting_1] string{SeekItem:["ariadne"],display:{Name:'{"text":"Ariadne Thread","color":"yellow","italic":false}',Lore:['{"text":"A curious tether to the user\'s\\nhome. An indisputably useful\\ntool for any explorer.","color":"gray","italic":false}']},Enchantments:[{}]}
tag @s[tag=seek_sneaked] remove ariadne_teleporting
tag @s[tag=seek_sneaked] remove ariadne_teleporting_1
scoreboard players set @s[tag=seek_sneaked] seek_stationary 0


