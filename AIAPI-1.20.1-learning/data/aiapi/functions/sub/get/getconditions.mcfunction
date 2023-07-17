execute if block ~ ~ ~ command_block run function aiapi:sub/get/appendcond

scoreboard players add learn.read.x aiapi.main 1
execute if score learn.read.x aiapi.main matches 1..15 positioned ~-1 ~ ~ run function aiapi:sub/get/getconditions
execute if score learn.read.x aiapi.main matches 16 if score learn.read.y aiapi.main matches 1..15 run function aiapi:sub/get/getconditions.newlayer