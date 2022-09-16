%% Subcycle Averaging Two-Level Inverter Library
%
% <html>
% <h2>Introduction</h2>
% <p>
% This library contains the HDL compatible Simulink model for two-level
% inverter. To improve the accuracy of the simulation result, the subcycle
% averaging techniqu is applied to the input PWM signals, in which PWM signals 
% are averaged over one simulation step. This model can be used to validate 
% design in normal mode simulation and to synthesize for FPGA accelerated
% real-time simulation.
% </p>
% <h2>Open Subcycle Averaging Two-Level Inverter Library</h2>
% <p><a href="matlab:open_system('slrt2levelinverterlib.slx');">Subcycle averaging two-Level inverter library</a></p>
% <img src="images/slrt2levelinverterlib.jpg" alt="2level inverter lib screenshot" width="280" height="345">
% <h2>Ports</h2>
% <h3>Input<h3>
% <table>
% <tr>
% <td>Input</td>
% <td>Dimensions</td>
% <td>DataType</td>
% <td>Description</td>     
% </tr>
% <tr>
% <td>Gates</td>
% <td>1x6</td>
% <td>boolean</td>
% <td>Input PWM signals</td>     
% </tr>
% <tr>
% <td>I<sub>out</sub></td>
% <td>1x3</td>
% <td>single</td>
% <td>Power source current</td>     
% </tr>
% <tr>
% <td>V<sub>dc</sub></td>
% <td>1x1</td>
% <td>single</td>
% <td>Power source voltage</td>     
% </tr>
% <tr>
% <td>Fault</td>
% <td>1x1</td>
% <td>uint32</td>
% <td>Fault flag</td>     
% </tr>
% </table>
% <h3>Output</h3>
% <table>
% <tr>
% <td>Output</td>
% <td>Dimensions</td>
% <td>DataType</td>
% <td>Description</td>     
% </tr>
% <tr>
% <td>V<sub>line</sub></td>
% <td>1x3</td>
% <td>single</td>
% <td>Output line voltages</td>     
% </tr>
% <tr>
% <td>V<sub>phase</sub></td>
% <td>1x3</td>
% <td>single</td>
% <td>Output phase voltages</td>     
% </tr>
% <tr>
% <td>I<sub>dc</sub></td>
% <td>1x1</td>
% <td>single</td>
% <td>Output DC currents</td>     
% </tr>
% </table>
% <br>
% <h2>Parameters</h2>
% <table>
% <tr>
% <td>Parameter</td>
% <td>Default value</td>
% <td>Description</td>     
% </tr>
% <tr>
% <td>Switch Resistance (Ohms)</td>
% <td>0.1</td>
% <td>Internal resistance of the switching devices</td>
% </tr>
% <tr>
% <td>Switch Forward Voltage (V)</td>
% <td>0.8</td>
% <td>The forward voltage of the switching device</td>
% </tr>
% <tr>
% <td>Diode Resistance (Ohms)</td>
% <td>0.2</td>
% <td>Diode internal resistance</td>
% </tr>
% <tr>
% <td>Diode Forward Voltage (V)</td>
% <td>0.6</td>
% <td>The forward voltage of the diode device</td>
% </tr>
% <tr>
% <td>Snubber resistance (Ohms)</td>
% <td>100000</td>
% <td>Snubber resistance</td>
% </tr>
% <tr>
% <td>Model Time Step (s)</td>
% <td>1e-6</td>
% <td>Time step at which model running on CPU is sampled</td>
% </tr>
% <tr>
% <td>FPGA Time Step (s)</td>
% <td>5e-9</td>
% <td>Time step at which model running on FPGA is sampled</td>
% </tr>
% </table>
% <br>
% </html>