execute if score learn.gen.z aiapi.main matches 0 if score learn.gen.y aiapi.main matches 0 if score learn.gen.x aiapi.main matches 1 run return 1

tp ~-1 ~ ~
scoreboard players remove learn.gen.x aiapi.main 1

execute if score learn.gen.x aiapi.main matches -1 run function aiapi:sub/gen/undo/backline
execute if score learn.gen.y aiapi.main matches -1 run function aiapi:sub/gen/undo/backlayer

execute at @s run fill ~ ~ ~ ~ ~1 ~ air

scoreboard players remove learn.logicalLenght aiapi.main 1

return 0