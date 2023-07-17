#Run procces
execute as @e[tag=aiapi.instrpoint] at @s run function aiapi:sub/run/next
#Sub init run procces
execute as @e[tag=aiapi.instrpoint.await] at @s run function aiapi:sub/run/initawait

tag @e[tag=aiapi.instrpoint.init] add aiapi.instrpoint.await