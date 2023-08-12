# FROSTBURN MISSILE LAUNCHER 🤖
## What is frostburn-missile-launcher project is?
Frostburn Missile Launcher is a Discord BOT written by Francis in NODE.JS JavaScript that leverages the powers of **discord.js 14** library to connect to discord APIs and control our private minecraft server via discord messages.

[frostburn missile launcher repository on github](https://github.com/FrancisStudios/frostburn-missile-launcher)

This BOT ensures that two people's "access key" is needed to launch the server. 
 ## User controls ⌨️
 Two people is needed to vote for start before server will start up

**Important:** there is a countdown timer after every vote. If the two player does not activate the following command in **2 minutes time**, the BOT will clear votes.

```
/frostburn vote start
```

To stop the server, one needs to activate the stop sequence with the following command

```
/frostburn stop
```

The bot will respond to each messages to indicate progress and server status. If you experience some issues, please contact **Francis**

## API access 🌐

### Start ▶️
This bot starts the server by creating a **launch.semaphore** file which is tracked by external script(s) and when the launch semaphore is in place, the script launches the appropriate container, with the server already configured.

### Stop 🛑
This bot activates our Minecraft Server Api (documentation [here](../API/endpoints.md)) /stop endpoint to signal the stop sequence which will gracefully stop the java runtime  by injecting **/stop** command into the server.jar console stream, and after the runtime is gracefully terminated, the stop API will terminate itself.