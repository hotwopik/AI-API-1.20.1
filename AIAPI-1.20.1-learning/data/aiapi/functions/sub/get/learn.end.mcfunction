tellraw @a [{"text":"[AI API] ","color":"blue"},{"text":"Iteration: ","color":"green"},{"score":{"objective":"aiapi.main","name":"learn.iteration"},"color":"yellow"},{"text":". Result: ","color":"green"},{"score":{"objective":"aiapi.main","name":"learn.success"},"color":"yellow","bold":true}]

execute if score learn.lastSuccess aiapi.main = learn.success aiapi.main as @e[tag=aiapi.learn.genpoint] at @s run function aiapi:sub/get/learnend/equal

execute if score learn.lastSuccess aiapi.main > learn.success aiapi.main as @e[tag=aiapi.learn.genpoint] at @s run function aiapi:sub/get/learnend/bad
execute if score learn.lastSuccess aiapi.main < learn.success aiapi.main as @e[tag=aiapi.learn.genpoint] at @s run function aiapi:sub/get/learnend/good

scoreboard players add learn.iteration aiapi.main 1