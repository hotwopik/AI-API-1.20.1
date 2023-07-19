gamerule commandBlockOutput false

scoreboard objectives add aiapi.main dummy
scoreboard objectives add aiapi.constant dummy
scoreboard objectives add aiapi.run.id dummy

scoreboard objectives add aiapi.run.x dummy
scoreboard objectives add aiapi.run.y dummy
scoreboard objectives add aiapi.run.z dummy

scoreboard players set 1 aiapi.constant 1
scoreboard players set 2 aiapi.constant 2

execute unless score learn.maxResultRequired aiapi.main matches 0.. run scoreboard players set learn.maxResultRequired aiapi.main 10

execute in aiapi:learn-main run function aiapi:sub/subworldload
execute in aiapi:learn-ai run forceload add 0 0

function #aiapi:loaded