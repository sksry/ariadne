tag @a remove ariadne_teleporting
give @a[tag=ariadne_teleporting_1] string{SeekItem:["ariadne"],display:{Name:'{"text":"Ariadne Thread","color":"yellow","italic":false}',Lore:['{"text":"A curious tether to the user\'s\\nhome. An indisputably useful\\ntool for any explorer.","color":"gray","italic":false}']},Enchantments:[{}]}
tag @a remove ariadne_teleporting_1

scoreboard objectives remove seek_string
scoreboard objectives add seek_string minecraft.used:minecraft.string

scoreboard objectives remove seek_temp
scoreboard objectives add seek_temp dummy