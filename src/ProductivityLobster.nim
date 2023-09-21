# This is just an example to get you started. A typical binary package
# uses this file as the main entry point of the application.
#, asyncdispatch

import std/envvars, times, options, asyncdispatch
import dimscord


# Set Globals
##[ This Section is to be dedicated to setting appropriate variables ]##
let discord: DiscordClient = newDiscordClient(getEnv("LOBSTER"))
echo "[*] Connection to client successful"

proc onReady(s: Shard, r: Ready) {.event(discord).} =
  echo $s.user

proc ctrlc() {.noconv.} =
  echo "Closing Session"
  waitFor discord.endSession()
  quit()


setControlCHook(ctrlc)
waitFor discord.startSession()



# when isMainModule:
#   echo("Hello, World!")
