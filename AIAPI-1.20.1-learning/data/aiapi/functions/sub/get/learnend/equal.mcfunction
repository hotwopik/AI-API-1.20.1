scoreboard players add learn.maxResult aiapi.main 1

execute if score learn.maxResult aiapi.main = learn.maxResultRequired aiapi.main run function aiapi:ai/cancel_learn
execute if score learn.maxResult aiapi.main = learn.maxResultRequired aiapi.main run return 0

function aiapi:sub/gen/undo

execute at @s run function aiapi:sub/gen/gen

execute positioned 0 0 0 run function aiapi:sub/run/run