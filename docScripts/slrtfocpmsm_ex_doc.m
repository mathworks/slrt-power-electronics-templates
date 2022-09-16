%% Field-Oriented Control of Permanent magnet synchronous motor
%
% <html>
% <h2>Introduction</h2>
% <p>
% This example implements the Field-Oriented Control (FOC) technique to
% control the speed of a three-phase Permanent Magnet Synchronous Motor
% (PMSM). The template for PMSM running on FPGA is controlled by a FOC
% controller running on CPU. This example also provides an application to
% control real-time simulation, display PMSM output currents, control and
% feedback speeds, and tune parameters in run-time.  
% </p>
% <h2>Run Script to create PMSM and FOC Controller Parameters</h2>
% <p>
% <a href="matlab:eval('PMSM_HIL_Param;')">PMSM_HIL_Param;</a>
% </p>
% <h2>Open and Build Simulink Real-Time Application</h2>
% <p>
% <a href="matlab:open_system('FOCandPMSM');">open_system('FOCandPMSM');</a>
% <br>
% <a href="matlab:eval('slbuild(''FOCandPMSM'');')">slbuild('FOCandPMSM')</a>
% </p>
% <img src="images/FOCandPMSM.jpg" alt="FOC and PMSM screenshot" width="460" height="345">
% <h2>Run Real-Time Simulation by using App Generator App</h2>
% <p>
% <a href="matlab:eval('appForFOC;')">appForFOC;</a>
% </p>
% <img src="images/appScreenshoot.PNG" alt="FOC and PMSM app screenshot" width="460" height="345">
% <br>
% <h2>References</h2>
% <p><i>
% <a href="matlab:web('https://www.mathworks.com/help/mcb/gs/foc-pmsm-using-si-units.html')">
% Field-Oriented Control of PMSM Using SI Units</a>
% </i></p>
% </html>