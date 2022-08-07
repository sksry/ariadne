execute store result entity @s Pos[0] double 1 run data get entity @p[tag=ariadne_finished] SpawnX
execute store result entity @s Pos[1] double 1 run data get entity @p[tag=ariadne_finished] SpawnY
execute store result entity @s Pos[2] double 1 run data get entity @p[tag=ariadne_finished] SpawnZ
execute at @s run tp @p[tag=ariadne_finished] ~0.5 ~ ~0.5
kill @s