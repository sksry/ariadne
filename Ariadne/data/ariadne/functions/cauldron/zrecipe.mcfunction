setblock ~ ~ ~ cauldron[level=0]
particle minecraft:end_rod ~0.5 ~1.5 ~0.5 0 0 0 0.15 100 force
particle minecraft:firework ~0.5 ~1.5 ~0.5 0 0 0 0.175 50 force
playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1.5
summon item ~0.5 ~1.25 ~0.5 {NoGravity:1b,Glowing:1b,PickupDelay:24,Item:{id:"minecraft:string",Count:2b,tag:{SeekItem:["ariadne"],display:{Name:'{"text":"Ariadne Thread","color":"yellow","italic":false}',Lore:['{"text":"A curious tether to the user\'s\\nhome. An indisputably useful\\ntool for any explorer.","color":"gray","italic":false}']},Enchantments:[{}]}}}
kill @s