# Bossac udoo
> Upload tool used by Platformio to upload binaries to the Udoo Quad and its family.

The `bossac` binary is used to upload the compiled sketch to **Arduino Due** on the **Udoo 
Quad (Dual)**.

This version is patched to trigger an erase/reset on the Arduino side.
It achieves this by sending an auth-token and op-code on the control serial lines. 
For more details you can take a look at [`drivers/misc/udoo_ard.c`][udoo-ard] in the Udoo Linux Kernel.
The original modification can be found at the [Udoo bossac][udoo-bossac] repo.


[udoo-ard]: https://github.com/UDOOboard/linux_kernel/blob/3.14-1.0.x-udoo/drivers/misc/udoo_ard.c
[udoo-bossac]: https://github.com/UDOOboard/bossac
