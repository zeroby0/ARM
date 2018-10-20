# Course files for ARM-2018 course

All my assignments and other files related to ARM-2018 course. The [assignments folder](https://github.com/zeroby0/ARM/tree/master/assignments) contains a uVision IDE project which can be loaded. Add or remove individual source files from source set and build / debug. Instructions to get started at the [end](#setting-up-a-new-keil-mdk-ide-project).

## TOC
- [Assignment 1](#assignment-1)
- [How to setup KEIL](#setting-up-a-new-keil-mdk-ide-project)


## Assignment 1

##### [Fibonacci](./assignments/src/1/fibonacci/fibonacci.s)
Implement Fibonacci  series using Cortex M4
##### [Largest](./assignments/src/1/largest/largest.s)
Given three number find the largest of the three using Cortex M4
##### [GCD](./assignments/src/1/GCD/GCD.s)
Here is C program to find GCD of two numbers, Re-Write this for CORTEX –M4
``` c
while (a != b)

 {

    if (a > b)

            a = a – b;

       else

            b = b – a;

}
```

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