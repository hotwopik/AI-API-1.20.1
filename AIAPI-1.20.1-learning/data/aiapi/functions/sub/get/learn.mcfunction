#Clear AI gen data
data modify storage aiapi:main model set value {end:"",init:"",do:[],cond:[]}

#Get condition command blocks
scoreboard players set learn.inlearning aiapi.main 1

scoreboard players set learn.read.x aiapi.main 0
scoreboard players set learn.read.y aiapi.main 1
scoreboard players set learn.condcount aiapi.main 0
execute positioned -1 1 -1 run function aiapi:sub/get/getconditions

execute unless data storage aiapi:main model.cond[0] run return 1

#Get do command blocks
scoreboard players set learn.read.x aiapi.main 0
scoreboard players set learn.read.y aiapi.main 1
scoreboard players set learn.docount aiapi.main 0
execute positioned 16 1 16 run function aiapi:sub/get/getdo

execute unless data storage aiapi:main model.do[0] run return 2

#Get init command block
execute unless block 4 1 4 command_block run return 3
data modify storage aiapi:main model.init set from block 4 1 4 Command

#Get end command block
execute unless block 6 1 4 command_block run return 4
data modify storage aiapi:main model.end set from block 6 1 4 Command

#Delete useless data
scoreboard players reset learn.read.x aiapi.main
scoreboard players reset learn.read.y aiapi.main

#Set start scores
scoreboard players set learn.maxResult aiapi.main 0
scoreboard players set learn.success aiapi.main 0
scoreboard players set learn.iteration aiapi.main 1
scoreboard players set learn.logicalLenght aiapi.main 0

scoreboard players operation learn.lastSuccess aiapi.main = learn.minSuccess aiapi.main

#Start generation
execute in aiapi:learn-ai run function aiapi:sub/gen/startgeneration

return 0