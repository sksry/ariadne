setblock ~ ~ ~ cauldron[level=0]
particle minecraft:end_rod ~0.5 ~1.5 ~0.5 0 0 0 0.15 100 force
particle minecraft:firework ~0.5 ~1.5 ~0.5 0 0 0 0.175 50 force
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.5
summon item ~0.5 ~1.25 ~0.5 {NoGravity:1b,Glowing:1b,PickupDelay:24,Item:{id:"minecraft:feather",Count:1b,tag:{display:{Name:'{"text":"Homeward Feather","color":"light_purple","italic":false}',Lore:['{"text":"A curious tether to the user\'s\\nhome. An indisputably useful\\ntool for any explorer.\\n\\nImbued with excessive power,\\nthe enchantment on this item\\nwill never fade.","color":"gray","italic":false}']},SeekItem:["ariadne","homeward_feather"],Enchantments:[{}]}}}
kill @s