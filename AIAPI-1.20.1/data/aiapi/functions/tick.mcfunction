execute as @e[tag=aiapi.instrpoint] at @s run function aiapi:sub/run/next
execute as @e[tag=aiapi.instrpoint.await] at @s run function aiapi:sub/run/initawait
tag @e[tag=aiapi.instrpoint.init] add aiapi.instrpoint.await