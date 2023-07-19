function aiapi:sub/gen/cleararea

#Place init command block
setblock 0 0 0 command_block{UpdateLastExecution:0b,TrackOutput:0b}
data modify block 0 0 0 Command set from storage aiapi:main model.init

#Place end command block
setblock 0 1 0 command_block{UpdateLastExecution:0b,TrackOutput:0b}
data modify block 0 1 0 Command set from storage aiapi:main model.end

#Summon generation point
summon marker 1 0 0 {Tags:[aiapi.learn.genpoint]}

scoreboard players set learn.gen.x aiapi.main 1
scoreboard players set learn.gen.y aiapi.main 0
scoreboard players set learn.gen.z aiapi.main 0

#Run AI
execute positioned 0 0 0 run function aiapi:sub/run/run