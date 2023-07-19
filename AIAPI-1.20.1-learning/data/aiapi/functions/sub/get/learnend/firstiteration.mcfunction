tellraw @a [{"text":"[AI API] ","color":"blue"},{"text":"Test iteration","color":"green"},{"text":". Result: ","color":"green"},{"score":{"objective":"aiapi.main","name":"learn.success"},"color":"yellow","bold":true}]
scoreboard players operation learn.lastSuccess aiapi.main = learn.success aiapi.main
scoreboard players add learn.iteration aiapi.main 1

execute as @e[tag=aiapi.learn.genpoint] at @s run function aiapi:sub/gen/gen

execute in aiapi:learn-ai positioned 0 0 0 run function aiapi:sub/run/run