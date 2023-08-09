# MINECRAFT API 🌎
Minecraft API to control our beloved Frostburn server from the UNICUM infrastructure. All of these endpoints are only accessible for internal usage on our private network. 

You can use the ./endpoints.add.sh script to append new entry to the table

## API CONTRACT
| PHYSICAL TARGET | ENDPOINT | METHOD | REQUEST | RESPONSE | WHAT DOES IT DO? |
|--|--|--|--|--|--|
| 0.0.0.0:5000 | /stop | HTTP:**POST** | {"command": "stop"} | **SUCCESSFUL** no_response **INVALID** {"response": "invalid"} | Backend injects "/stop" command into minecraft server console then terminates self process |
|0.0.0.0:5000 | /message | HTTP:**POST** | {"message": "**string**"} | **SUCCESSFUL** {"response": "message_sent"} **INVALID** {"response":"invalid"} | Backend injects "/say ${message:String}" into minecraft server console to enable automated messages |
