scoreboard players operation lastRunEndId aiapi.main = @s aiapi.run.id
execute as @e[tag=aiapi.startpoint] if score @s aiapi.run.id = @e[tag=aiapi.instrpoint,limit=1,sort=nearest] aiapi.run.id at @s run function aiapi:sub/run/endpoint
kill @s
schedule function #aiapi:end 1 append