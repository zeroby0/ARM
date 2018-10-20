# Course files for ARM-2018 course

All my assignments and other files related to ARM-2018 course. The [assignments folder](https://github.com/zeroby0/ARM/tree/master/assignments) contains a uVision IDE project which can be loaded. Add or remove individual source files from source set and build / debug. Instructions to get started at the [end](#setting-up-a-new-keil-mdk-ide-project).


## Setting up a new KEIL MDK IDE project
* From Toolbar > Projects > New project
* Select a location, and select your platform in the next window
* ARM > ARM Cortex M4 > ARMCM4 in my case
* In the next window titled `Manage run time environment`, expand `device > startup`. Check the box next to it
* This adds the startup code required for the project
* Click resolve if there are any problems in the `Validation Output` box in bottom left.
* You should see the main IDE interface now. 
* Right click `Target 1` and select `Options for Target 1`
* In the debug tab, select `simulator` instead of the other thing. Click OK.
* If you get error `ULINK/ME Device not found` you didn't do the previous step properly.
* Expand `Target 1` and right click source group.
* `Add new item to source group 1`
* Select your type of file and add it.
* Project > Build Target
* Debug > Start new session
* Run / step