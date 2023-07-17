#Init learn and exit if AI allready in learn
execute if score learn.inlearning aiapi.main matches 1 run scoreboard players set learn.exitCode aiapi.main 5
execute unless score learn.inlearning aiapi.main matches 1 store result score learn.exitCode aiapi.main in aiapi:learn-main run function aiapi:sub/get/learn

#Error catch
execute if score learn.exitCode aiapi.main matches 1 run tellraw @a [{"text":"[AI API] ","color":"blue"},{"text":"Fatal Error(1) while learning: ","color":"red"},{"text":"At least 1 Сondition command block is required","color":"dark_red","bold":true}]
execute if score learn.exitCode aiapi.main matches 2 run tellraw @a [{"text":"[AI API] ","color":"blue"},{"text":"Fatal Error(2) while learning: ","color":"red"},{"text":"At least 1 Do command block is required","color":"dark_red","bold":true}]
execute if score learn.exitCode aiapi.main matches 3 run tellraw @a [{"text":"[AI API] ","color":"blue"},{"text":"Fatal Error(3) while learning: ","color":"red"},{"text":"Initelize command block was missed","color":"dark_red","bold":true}]
execute if score learn.exitCode aiapi.main matches 4 run tellraw @a [{"text":"[AI API] ","color":"blue"},{"text":"Fatal Error(7) while learning: ","color":"red"},{"text":"End command block was missed","color":"dark_red","bold":true}]
execute if score learn.exitCode aiapi.main matches 5 run tellraw @a [{"text":"[AI API] ","color":"blue"},{"text":"Error(4): ","color":"red"},{"text":"AI allready in learning","color":"dark_red","bold":true}]

execute unless score learn.exitCode aiapi.main matches 0 run scoreboard players set learn.inlearning aiapi.main 0