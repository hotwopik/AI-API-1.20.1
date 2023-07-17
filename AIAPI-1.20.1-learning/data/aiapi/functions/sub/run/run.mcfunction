#Exit if it runed no in command block
execute unless block ~ ~ ~ command_block run return 1
#Run command block
data modify block ~ ~ ~ auto set value 1b
data modify block ~ ~ ~ auto set value 0b
#Summon run procces points
summon marker ~ ~ ~ {Tags:[aiapi.instrpoint.init]}
summon marker ~ ~ ~ {Tags:[aiapi.startpoint.init,aiapi.startpoint]}
execute as @e[tag=aiapi.instrpoint.init] run function aiapi:sub/run/setpointid

scoreboard players operation @e[tag=aiapi.startpoint.init] aiapi.run.id = lastRunStartId aiapi.main
tag @e[tag=aiapi.startpoint.init] remove aiapi.startpoint.init
#Init run end
schedule function #aiapi:start 1 append

return 0