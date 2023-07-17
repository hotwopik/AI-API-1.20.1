tellraw @a [{"text":"[AI API] ","color":"blue"},{"text":"Fatal Error(6) while runing: ","color":"red"},{"text":"AI wasnt init success","color":"dark_red","bold":true}]

execute as @e[tag=aiapi.startpoint] if score @s aiapi.run.id = @e[tag=aiapi.instrpoint,limit=1,sort=nearest] aiapi.run.id at @s run function aiapi:sub/run/endpoint
kill @s