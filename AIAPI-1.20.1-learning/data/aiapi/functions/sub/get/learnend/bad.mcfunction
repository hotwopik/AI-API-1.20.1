scoreboard players set learn.maxResult aiapi.main 0
scoreboard players operation learn.lastSuccess aiapi.main = learn.success aiapi.main
function aiapi:sub/gen/undo

execute at @s run function aiapi:sub/gen/gen

execute positioned 0 0 0 run function aiapi:sub/run/run