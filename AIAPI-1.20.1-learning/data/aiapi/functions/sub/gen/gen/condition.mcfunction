setblock ~ ~1 ~ chain_command_block[facing=up,conditional=true]{UpdateLastExecution:0b,TrackOutput:0b,auto:1b}
data modify block ~ ~1 ~ Command set from storage aiapi:main getvalue[0]