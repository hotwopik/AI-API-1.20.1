#Init run and exit if AI in learning
execute unless score learn.inlearning aiapi.main matches 1 store result score lastExitCode aiapi.main run function aiapi:sub/run/run
execute if score learn.inlearning aiapi.main matches 1 run scoreboard players set lastExitCode aiapi.main 2

#Error catch
execute if score lastExitCode aiapi.main matches 1 run tellraw @a [{"text":"[AI API] ","color":"blue"},{"text":"Fatal Error(5) while runing: ","color":"red"},{"text":"The run must running in the AI init command block","color":"dark_red","bold":true}]
execute if score lastExitCode aiapi.main matches 2 run tellraw @a [{"text":"[AI API] ","color":"blue"},{"text":"Error(8): ","color":"red"},{"text":"You cant run other AI while some AI in learning","color":"dark_red","bold":true}]