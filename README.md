# Course files for ARM-2018 course

All my assignments and other files related to ARM-2018 course. The [assignments folder](https://github.com/zeroby0/ARM/tree/master/assignments) contains a uVision IDE project which can be loaded. Add or remove individual source files from source set and build / debug. Instructions to get started at the [end](#setting-up-a-new-keil-mdk-ide-project).

## TOC
- [Assignment 1](#assignment-1)
- [Assignment 2](#assignment-2)
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



## Assignment 2

##### [Answer](./assignments/src/2/2.md)

If I build the following code (CODE-1) in KEIL Simulator we get four errors which are shown below.
Why is this error happening. Where as in CODE-2 the program is building without any errors


Research in IF-THEN-ELSE in ARM Assembly and explain the reason for this error.

A Clear writeup not more than a page is expected as the answer to this question.  Points will be awarded based on how clear and well explained the write up is. Perfect and technically correct write up given full 100 points.

```



---------------------------------------------------------------------
CODE-1
---------------------------------------------------------------------
;PRESERVE8
;thumb
area appcode, CODE, READONLY
export __main
ENTRY
__main function
MOV R3, #0x100
MOV R8, #0x200
CMP R8, R3 ; do R8 - R3 & updated N & V flags
ITTTE LT ; or N != V
MOV R3, #0x100
MOV R8, #0x200
MOV R7, #0x200
MOV R6, #0x200
stop B stop ; stop program
endfunc
end


stop B stop ; stop program

*** Using Compiler 'V5.06 update 5 (build 528)', folder: 'C:\Keil_v5\ARM\ARMCC\Bin'
Build target 'Target 1'

assembling if-then-else.s...

if-then-else.s(30): error: A1619E: Specified condition is not consistent with previous IT
if-then-else.s(31): error: A1619E: Specified condition is not consistent with previous IT

if-then-else.s(32): error: A1619E: Specified condition is not consistent with previous IT

if-then-else.s(33): error: A1619E: Specified condition is not consistent with previous IT

".\Objects\asm3.axf" - 4 Error(s), 0 Warning(s).

-----------------------------------------------------------------------------------
CODE-2
-----------------------------------------------------------------------------------

;PRESERVE8
;thumb
area appcode, CODE, READONLY
export __main
ENTRY
__main function

MOV R3, #0x100
MOV R8, #0x200
CMP R8, R3 ; do R8 - R3 & updated N & V flags
ITTTE LT ; or N != V
ADDLT r3, r3,r8
MOVLT r4, #0
MOVLT R0, #1 
SUBGE r3, r3, r3 ; Z != 1 pr N == V
stop B stop ; stop program
endfunc
end


stop B stop ; stop program
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