# MINECRAFT API 🌎
Minecraft API to control our beloved Frostburn server from the UNICUM infrastructure. All of these endpoints are only accessible for internal usage on our private network. 

You can use the ./endpoints.add.sh script to append new entry to the table

## API CONTRACT 🤝
| PHYSICAL TARGET | ENDPOINT | METHOD | REQUEST | RESPONSE | WHAT DOES IT DO? | DEPLOYED |
|--|--|--|--|--|--|--|
| 0.0.0.0.0:80 | /command | HTTP:**POST** | {"command": "start"} | **SUCCESSFUL** HTTP:200 OK **INVALID** {"response": "invalid"} | Backend bootstraps server.jar within a container process | yes |
| 0.0.0.0.0:80 | /command | HTTP:**POST** | {"command": "stop"} | **SUCCESSFUL** HTTP:200 OK **INVALID** {"response": "invalid"} | Backend injects "/stop" command into minecraft server console then terminates self process | yes |
|0.0.0.0.0:80 | /message | HTTP:**POST** | {"message": "**string**"} | **SUCCESSFUL** {"response": "message_sent"} **INVALID** {"response":"invalid"} | Backend injects "/say ${message:String}" into minecraft server console to enable automated messages | no |