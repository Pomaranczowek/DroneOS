# DroneOS

A simple OS for Drones for OpenComputers mod.



## Installation
***Tested on OpenOS***

To flash the OS on an EEPROM, just run this

```bash
wget -f https://raw.githubusercontent.com/Pomaranczowek/DroneOS/main/installer.lua /tmp/installer.lua && /tmp/installer.lua
```
and that's it!
Requires Wireless Network Card for both drone and computer.
**WARNING: THE INSTALLER WILL FLASH THE BIOS TO THE INSERTED EEPROM WITHOUT WARNINGS, SO MAKE SURE TO REPLACE THE EEPROM BEFORE RUNNING.**
*Note: there is no read-only detection.*

## Usage
The drone will open the port 1234 by default, you can change this by forking the project and changing the port in droneos.lua yourself.

After you power on the drone, run `lua` on your computer then use this command:
```lua
component.modem.broadcast(1234, "<command>")
```
*Note: if you are using a different port that 1234, change `1234` in that script to the port the drone is using, otherwise nothing will happen.*

**The following commands are available:**
```txt
up
down
left
right
forward
backward
```
There is currently no program to control the drone a different way, you have to rely on the lua application.
