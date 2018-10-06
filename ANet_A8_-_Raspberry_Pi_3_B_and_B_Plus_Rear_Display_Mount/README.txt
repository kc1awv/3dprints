                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


https://www.thingiverse.com/thing:2878186
ANet A8 - Raspberry Pi 3 B and B Plus Rear Display Mount by benebrady is licensed under the Creative Commons - Attribution license.
http://creativecommons.org/licenses/by/3.0/

# Summary

Many thanks to the previous creators of the parts used in this project.  
I recently acquired an Anet A8 and I wanted to add a Raspberry Pi 3 B or 3 B Plus to my printer. I found a mount that would allow the Raspberry Pi to be mounted on the gantry behind the rear display. The original creator didn't have a Raspberry Pi 3 to use as a guide but they did a great job nonetheless. There were a couple of minor issues but for the most part it worked well for my Raspberry Pi 3 B. I have both the Pi 3 B and the new Pi 3 B+ along with the new Raspberry Pi v2.1 camera, which also proved to be 'problematic' as the form factor has apparently changed and the available mounts here on Thingiverse no longer fit the current iteration of the device due to changes made in the spacing of the mounting holes on the PCB of the camera.
I was finally able to find a remix of a part here on Thingiverse that addresses the issue of the camera. 
There were some minor issues with the Raspberry Pi mounting that I felt I needed to 
address in order for my implementation to be successful:
1. It was difficult to know when the Raspberry Pi was powered up and was communicating to the network as there wasn't any way to view the LED indicators on the back of the Pi. 
2. The Raspberry Pi 3 B+ would not fit into the case because the heat sink on the processor was too tall.
3. I wanted a way to mount a cooling fan on the top of the case to cool the Pi
4. The Raspberry Pi 3 B+ now has an additional header for the Power Over Ethernet "hat" (PoE) and I wanted a way to expose that connection for possible future use. (Unfortunately, the PoE hat will require an additional rework due to it's size, and I'll address that in a future modification.)
I have included the files from all of the original Thingiverse creations in order that you will have one complete file to download with all of the requisite parts without having to download each of the respective items and sort out which ones will work and which will not.

UPDATE:
I have reworked the top and  bottom of the case so that it can now be printed without supports being turned on. I have also moved the USB and Ethernet port partitions to the top half of the case to ensure their stability when installing the Pi and I have modified the audio connector access to make it round instead of having a large rectangular opening. 

UPDATE: I have corrected the front camera mount to fix the problem with the incorrect number of prongs on the mount and I have included the spacers I have used to mount the case to the back of the display. I used M3 x 35 mm screws to attach the case to the Anet frame 

# Print Settings

Printer: Anet A8
Rafts: No
Supports: Doesn't Matter
Resolution: .2 mm layer height
Infill: 30 % infill

Notes: 
The top of the case should be printed with the screw mounts pointing upward with the flat side of the case toward the print bed. 
The bottom of the case should be printed with the walls of the case pointing upward with the flat part of the case toward the bed with supports being optional, I have printed it with supports turned off and it printed just fine.

# How I Designed This

I imported the original STL files into Autocad 123D Design and made the modifications as required. This was my first attempt at using 123D Design.
Extreme props to:
nixfu
TrunkFullaAmps
NJLaPrell
and Bksba