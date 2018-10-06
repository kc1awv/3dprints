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


https://www.thingiverse.com/thing:2280529
Bed Center Calibration Tutorial (using parametric crosshairs with square) by 0scar is licensed under the Creative Commons - Attribution - Non-Commercial - Share Alike license.
http://creativecommons.org/licenses/by-nc-sa/3.0/

# Summary

<strong><u>NEW!</u> Parametric design added!</strong> The tutorial is <strong>updated</strong> with a new <strong>parametric OpenSCAD model</strong> which can be used (e.g. using the <a href="https://www.thingiverse.com/apps/customizer/run?thing_id=2280529">Customizer</a> app) to fit your own heat bed/build plate. The parameters of the model are self explanatory; please note that the tolerance is merely used for estatic purposes (rendering glitches), so please do not change that one. The old STL files have been removed and some examples introduced as the old ones did not slice perfectly in Cura (they did go well in Slic3r though...). <strong>Please make your own center calibration STL</strong> by tuning it exactly to your printer setup.

<strong>What! Not in the center?</strong>
I noticed that with large prints part of my skirt or brims sometimes was printed outside the heat bed print area. Apparently, the printer does not have the correct heat bed center in the firmware. 

This thing helps you to find the center of the bed and aids in changing the bed center to the actual bed center. Instructions are provided below for you to change your center.

<strong>Supported firmware</strong>
Note that this works for e.g. Marlin based firmware, e.g. Skynet3D! More firmware types are supported, see <a href="http://reprap.org/wiki/G-code#M206:_Offset_axes">this</a> page.

<strong>Note for unsupported firmware</strong>
For stock Anet boards (or if you cannot or do not want to mess with gcode) you can make this also work by printing spacers or custom end stop mounts.

# Walk-through

## Printer center seems to have an off-set?

With the stock firmware (a customized older version of Repetier) I have not tried to find a solution for my problem, but recently I updated my printer with an auto bed leveling sensor which requires an update of the printer firmware (to Marlin firmware). I updated to the latest Skynet firmware (v2.3.2 fix 2). Again I noticed that the prints are printed off-set of the heated bed center. This can easily be checked by printing the thing I uploaded here. The cross should be exactly in the center of the heated bed; the distance from the outer squares to the edge of the heated bed should be similar/equidistant.



## Fix the off-set!

In my case the bed is off center by 2 mm in both X and Y direction (ignoring the signs here). There are a few solutions to solve this (see <a href="http://reprap.org/wiki/Configuring_Marlin_Bed_Dimensions"> Marlin bed dimensions at reprap.org</a>). As I closed up my main board after the firmware flashing (using a private remix (now publicly available here: <a href="http://www.thingiverse.com/thing:2313577">0scar's modular Anet A8 electronics casing</a>) from <a href="http://www.thingiverse.com/thing:1767285">c_wolsey's Anet A8 Electronics Case</a>; I increased the height of the casing so it can hold a Raspberry Pi, the main board, a 4-channel relay module, an opto-coupler for the auto level sensor and a heatbed Mosfet), I had no quick access (maybe combined with a little laziness and lack of time) to change the firmware configuration file and upload a new version, so I decided to go for the second method: changing the off-set through g-code command and store the new off-set to the printer memory. In my case the center of the bed required an offset of -2 mm for the X direction (just measure in the X direction the distance from the outer squares to the edge of the heated bed and subtract the 2 values and divide them by 2; in my case this led to (8-12)/2 = -2 mm). A similar action needs to be done for the Y-direction; this resulted in 2 mm off-set.

Use a terminal to access the printer to directly send command to the printer (this can be e.g. done in Cura or Pronterface). I used the terminal available in the OctoPrint interface.
Send the code: M206 X-2 Y2. The values specified are added to the endstop position when the axes are referenced, so this tells the printer that the center of the printer is located at the given values with respect to the stored values in the configuration file. To store the new center send code M500.

The first photo shows the before center calibration, the second photo after calibration.

Now your printer has a new center!