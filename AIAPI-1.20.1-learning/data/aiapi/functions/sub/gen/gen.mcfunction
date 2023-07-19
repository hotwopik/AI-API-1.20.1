execute if score learn.gen.z aiapi.main matches 513 run return 0
#Get condition command
scoreboard players set randomNumber aiapi.main 0

scoreboard players operation maxRandomNumber aiapi.main = learn.condcount aiapi.main
scoreboard players operation maxRandomNumber aiapi.main -= 1 aiapi.constant

execute unless score maxRandomNumber aiapi.main matches 0 run function aiapi:sub/gen/getrandomnumber

data modify storage aiapi:main getvalue set from storage aiapi:main model.cond
execute unless score randomNumber aiapi.main matches 0 run function aiapi:sub/gen/gen/command

#Place condition command block
setblock ~ ~ ~ command_block[facing=up]{UpdateLastExecution:0b,TrackOutput:0b}
data modify block ~ ~ ~ Command set from storage aiapi:main getvalue[0]

#Get do command
scoreboard players set randomNumber aiapi.main 0

scoreboard players operation maxRandomNumber aiapi.main = learn.docount aiapi.main
scoreboard players operation maxRandomNumber aiapi.main -= 1 aiapi.constant

execute unless score maxRandomNumber aiapi.main matches 0 run function aiapi:sub/gen/getrandomnumber

data modify storage aiapi:main getvalue set from storage aiapi:main model.do
execute unless score randomNumber aiapi.main matches 0 run function aiapi:sub/gen/gen/command

#Place do command block and pass worker
execute if block ~ ~ ~ command_block{Command:""} run data modify block ~ ~ ~ Command set from storage aiapi:main getvalue[0]
execute unless block ~ ~ ~ command_block{Command:""} run function aiapi:sub/gen/gen/condition

#Clear useless data
data remove storage aiapi:main getvalue

#End
scoreboard players add learn.logicalLenght aiapi.main 1

tp ~1 ~ ~
scoreboard players add learn.gen.x aiapi.main 1

execute if score learn.gen.x aiapi.main matches 16 run function aiapi:sub/gen/gen/newline
execute if score learn.gen.y aiapi.main matches 16 run function aiapi:sub/gen/gen/newlayer