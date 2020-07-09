# bossac-udoo
> Upload tool used by Platformio to upload binaries to the Udoo Quad.

The BOSSAC binary is used to upload the compiled sketch to Arduino Due on the Udoo 
Quad (Dual).

This version is patched to trigger an erase/reset on the Arduino side.
It achieves this by sending an auth-token and op-code on the control serial lines. 
For more details you can take a look at `drivers/misc/udoo_ard.c` in the Udoo Linux Kernel.
