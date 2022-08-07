scoreboard players remove @s seek_temp 1
execute if block ~ ~ ~ tripwire run scoreboard players set @s seek_temp 0
execute if block ~ ~ ~ tripwire run setblock ~ ~ ~ air
execute if block ~ ~ ~ tripwire run tag @s add removed_tripwire

execute unless entity @s[tag=removed_tripwire] if block ~ ~1 ~ tripwire run scoreboard players set @s seek_temp 0
execute unless entity @s[tag=removed_tripwire] if block ~ ~1 ~ tripwire run setblock ~ ~1 ~ air
execute if block ~ ~1 ~ tripwire run tag @s add removed_tripwire

execute unless entity @s[tag=removed_tripwire] if block ~1 ~ ~ tripwire run scoreboard players set @s seek_temp 0
execute unless entity @s[tag=removed_tripwire] if block ~1 ~ ~ tripwire run setblock ~1 ~ ~ air
execute if block ~1 ~ ~ tripwire run tag @s add removed_tripwire

execute unless entity @s[tag=removed_tripwire] if block ~-1 ~ ~ tripwire run scoreboard players set @s seek_temp 0
execute unless entity @s[tag=removed_tripwire] if block ~-1 ~ ~ tripwire run setblock ~-1 ~ ~ air
execute if block ~-1 ~ ~ tripwire run tag @s add removed_tripwire

execute unless entity @s[tag=removed_tripwire] if block ~ ~ ~1 tripwire run scoreboard players set @s seek_temp 0
execute unless entity @s[tag=removed_tripwire] if block ~ ~ ~1 tripwire run setblock ~ ~ ~1 air
execute if block ~ ~ ~1 tripwire run tag @s add removed_tripwire

execute unless entity @s[tag=removed_tripwire] if block ~ ~ ~-1 tripwire run scoreboard players set @s seek_temp 0
execute unless entity @s[tag=removed_tripwire] if block ~ ~ ~-1 tripwire run setblock ~ ~ ~-1 air

tp @s ^ ^ ^0.1
kill @s[scores={seek_temp=..0}]
execute as @s[scores={seek_temp=1..}] at @s run function ariadne:ariadne/string_raycast