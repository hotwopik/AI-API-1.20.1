tag @s remove aiapi.instrpoint.await
tag @s remove aiapi.instrpoint.init
tag @s add aiapi.instrpoint
execute store result score lastInitSuccess aiapi.main run data get block ~ ~ ~ SuccessCount
execute unless block ~ ~ ~ command_block{Command:""} if score lastInitSuccess aiapi.main matches 0 run scoreboard players set lastExitCode aiapi.main 2
execute if score lastExitCode aiapi.main matches 2 run function aiapi:sub/run/initawait.err
execute if score lastExitCode aiapi.main matches 2 run return 2
scoreboard players set @s aiapi.run.x 1
scoreboard players set @s aiapi.run.y 0
scoreboard players set @s aiapi.run.z 0
tp ~1 ~ ~
execute at @s run function aiapi:sub/run/next.sub