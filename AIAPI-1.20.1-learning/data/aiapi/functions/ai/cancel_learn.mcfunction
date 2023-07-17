#Kill all run and gen points
kill @e[tag=aiapi.learn.genpoint]
kill @e[tag=aiapi.instrpoint]
kill @e[tag=aiapi.startpoint]

#End message
tellraw @a [{"text":"[AI API] ","color":"blue"},{"text":"Learn has been ended","color":"green"}]
tellraw @a [{"text":"[AI API] ","color":"blue"},{"text":"Total logical lenght: ","color":"green"},{"score":{"objective":"aiapi.main","name":"learn.logicalLenght"}}]

#Data clearing
scoreboard players set learn.inlearning aiapi.main 0

scoreboard players reset learn.gen.x aiapi.main
scoreboard players reset learn.gen.y aiapi.main
scoreboard players reset learn.gen.z aiapi.main

scoreboard players reset learn.docount aiapi.main
scoreboard players reset learn.condcount aiapi.main
scoreboard players reset learn.maxResult aiapi.main