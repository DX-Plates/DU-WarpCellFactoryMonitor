# DU-WarpCellFactoryMonitor
LUA Script for monitoring Pure Ingot stock in a Factory. 

![Ore Status Dashboard](/ContainerMonitor.PNG)

With Optional Timers Configured:
![Ore Status Dashboard with Optional Timer](/ContainerMonitorWithTimer.PNG)

# Setup
You'll need 2 programming boards, one for each monitor screen.

You will need a container for each resource type you want to monitor. Because of the DU API you can't get any information from a can other than weight of all contents, so we need to divide up the cans. 

Link each can to the board that will monitor it, as you link them make sure you rename the slot in the programming board to the resource type (example: iron, carbon, silicon). You can see the names of the resources in the script itself, use lower case.

Link each board to a screen, I used Medium Screens. Name that slot on the board screen.

Once everything is linked, and all the slots are named, we need to setup the monitor scripts. Under the `unit` slot add 3 Filters. One for tick, which is set to `screen`, one for stop and one for start.  Put that start and stop scripts into the start and stop filters. This will turn the screens on and off with the board. Then put the main script into the tick filter. 

Optional Portion: To use the timers use the scripts that have WithTimers on the end. You will need to update the usedPerHour variable for each resource to match your factories useage. 

Apply your changes.

Activate the board.
