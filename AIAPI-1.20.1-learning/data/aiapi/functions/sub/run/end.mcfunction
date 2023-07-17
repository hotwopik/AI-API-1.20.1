scoreboard players operation lastRunEndId aiapi.main = @s aiapi.run.id

#Run end command block
execute as @e[tag=aiapi.startpoint] if score @s aiapi.run.id = @e[tag=aiapi.instrpoint,limit=1,sort=nearest] aiapi.run.id at @s run function aiapi:sub/run/endpoint
kill @s

#Run end functions
schedule function #aiapi:end 1 append
execute if score learn.inlearning aiapi.main matches 1 run schedule function aiapi:sub/get/learn.end 2