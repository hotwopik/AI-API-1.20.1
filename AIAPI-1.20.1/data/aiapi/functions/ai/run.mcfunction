#Init run
execute store result score lastExitCode aiapi.main run function aiapi:sub/run/run

#Error catch
execute if score lastExitCode aiapi.main matches 1 run tellraw @a [{"text":"[AI API] ","color":"blue"},{"text":"Fatal Error(5) while runing: ","color":"red"},{"text":"The run must running in the AI init command block","color":"dark_red","bold":true}]