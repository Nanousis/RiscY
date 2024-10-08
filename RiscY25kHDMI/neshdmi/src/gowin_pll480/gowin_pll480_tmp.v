//Copyright (C)2014-2024 Gowin Semiconductor Corporation.
//All rights reserved.
//File Title: Template file for instantiation
//Tool Version: V1.9.10.02
//Part Number: GW5A-LV25MG121NES
//Device: GW5A-25
//Device Version: A
//Created Time: Sat Sep 14 21:42:52 2024

//Change the instance name and port connections to the signal names
//--------Copy here to design--------

    Gowin_PLL480 your_instance_name(
        .lock(lock), //output lock
        .clkout0(clkout0), //output clkout0
        .clkin(clkin) //input clkin
    );

//--------Copy end-------------------
