# ** Power Electronics Templates for Simulink Real-Time** 

[![View <Simulink Real-Time Power Electronics templates> on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/####Simulink-Real-Time-Power-Electronics-templates)  
<!-- Add this icon to the README if this repo also appears on File Exchange via the "Connect to GitHub" feature --> 

This package contains models of power electronics components for hardware-in-the-loop testing with Simulink&reg; Real-Time&trade;. The templates are generated with HDL Coder&trade; and are ready to run on the Speedgoat IO334 FPGA I/O module with IO334-21 plug-in.

The following templates are included:
- Permanent magnet synchronous motor (PMSM) with 2-level inverter
- Permanent magnet synchronous motor (PMSM) with NPC inverter
- Induction motor with 2-level inverter

The templates are designed to be customizable and extendable, HDL Coder is required for design customizations: 
- All HDL compatible source blocks used to synthesize bitstream files are included for reference, which can be found in the lib directory;
- Scripts for setting up "HDL workflow advisor" are included for each template.   


## Getting Started 
1. Open the project file slrt\_power\_electronics\_templates.prj
2. Explore templates directory for the desired template

## Examples
To learn how to use power electronics template to do permanent magnet synchronous machine field-oriented control and use App Designer application to control simulation, see [Examples](/examples/FOCandPMSM). 

### MathWorks Products (http://www.mathworks.com)

Requires MATLAB&reg; release R2022b or newer
- [Simulink&reg; Real-Time&trade;](https://www.mathworks.com/products/simulink-real-time.html)

For design customizations, the following products are also required:
- [HDL Coder&trade;](https://www.mathworks.com/products/hdl-coder.html)
- [Motor Control Blockset&reg;](https://www.mathworks.com/products/motor-control.html) for PMSM and induction motor HDL compatible models

Before proceeding, ensure that the below products are installed:  
* [Speedgoat I/O Blockset](https://www.speedgoat.com/help/slrt/page/help_home)
* [Speedgoat HDL Coder Integration Packages](https://www.speedgoat.com/help/slrt/page/help_home)


## Community Support
[MATLAB Central](https://www.mathworks.com/matlabcentral)

Copyright 2022 The MathWorks, Inc.


