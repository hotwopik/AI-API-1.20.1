tp ~1 ~ ~

scoreboard players add @s aiapi.run.x 1
execute if score @s aiapi.run.x matches 16 run function aiapi:sub/run/next/newline
execute if score @s aiapi.run.y matches 16 run function aiapi:sub/run/next/newlayer

execute at @s run function aiapi:sub/run/next.sub