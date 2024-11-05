# Jafa-Command-Assistant
This is a Minetest mod to assist anyone with commands in game. It adds commands such as /day, /admin and /fly to make your Minetest experience easier.
## Possible uses
1. If you are a server admin, you will find this tool useful as it allows you to control some of the most used player permissions, announce to all players without your nametag to stand out in chat and also control who has admin controls on your server.

2. If you are just playing with friends, the commands such as /fly, /tp and /day might be useful for letting people fly, shortening the teleport command and setting the time to day without extensive knowledge of commands.

3. If you are playing singleplayer then the /fly or /admin command will be useful to allow you to have full control of your world.

4. If you are a teacher at a school using Minetest with pupils to easily control permissions and what they can do.
## Commands
1. /admin \<Target\> | \<Me\> - This command allows you to grant players every privilege in the base game including the 'announce' privilege from this mod.

2. /day - This command will instantly set the in game time to 12000 or midday.

3. /fly \<Target\> | \<Me\> - This command will grant the 'fly' privilege to any player allowing them to fly.

4. /info \<Target\> - This will post the ip address of the target to the command callers chat only.

5. /mute \<Target\> | \<Me\> - This will mute players in chat, stopping them from posting chat or using the '/shout' command that comes with this mod.

6. /noadmin \<Target\> | \<Me\> - This will remove all privileges from the target excluding 'interact' and 'shout' as these are the default privileges.

7. /nofly \<Target\> | \<Me\> - This will remove the 'fly' privilege from the target removing their ability to fly.

8. /shout \<Message\> - This will post the specified message in chat in the format '[ANNOUNCEMENT] \<message\>'.

9. /stop \<Reason\> - This will shutdown the server and give the reason specified in this format 'Access denied. Reason:  - This server has been forcably closed by: \<command callers name\> -  For the reason: \<specified reason\>'

10. /tp \<X\>,\<Y\>,\<Z\> | \<to_name\> | \<name\> \<X\>,\<Y\>,\<Z\> | \<name\> \<to_name\> - This will teleport to a player, coordinates, a player to coordinates or a player to a player.

11. /unmute \<Target\> | \<Me\> - This will unmute the target allowing them to type in chat again, however, they will not be allowed to use the '/shout' command as the privilege 'announce' has not been granted.

12. /nobuild \<Target\> | \<Me\> - This will stop the target from building or breaking in the world.

13. /build \<Target\> | \<Me\> - This will allow the target to build and break in the world.

14. /ver - This will display the JCA version information in chat.

15. /stat - This will show the status of the server. This includes the game version, game type, server uptime, max lag, currently online clients and JCA version.

16. /b \<Target\> | \<$list\> - This will ban the target's ip from the server or list the banned players.
## Privileges
1. announce - this privilege will allow people to use the '/shout' command. Please see above.
## How to install
1. Download the release that you want.
2. Unzip the downloaded file.
3. Go into your unzipped file and locate the directory with 'README.md' and 'jafa_command_assistant' in it.
4. Go to your Minetest directory and locate the 'mods' folder.
5. Then, move the 'jafa_command_assistant' folder into the 'mods' folder.
6. Now, launch the game, click select mods and enable the 'jafa command assistant' mod.
7. Finally, start your game and enjoy!
## Final notes
Thank you for downloading this mod, I hope that it proves useful and the issues page on github can be used to report any issues. This mod is now in a stable state but is still being maintained and developed.
### License
Copyright (C) 2024 Jafacakes10 <https://github.com/Jafacakes10/>

Latest release: V 3.1.0

Latest readme change: 05/11/2024 - @Jafacakes10
