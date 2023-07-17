execute if predicate aiapi:number_chance run scoreboard players add randomNumber aiapi.main 1
scoreboard players remove maxRandomNumber aiapi.main 1

execute unless score maxRandomNumber aiapi.main matches 0 run function aiapi:sub/gen/getrandomnumber