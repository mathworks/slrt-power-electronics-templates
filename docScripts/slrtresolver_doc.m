%% Resolver Block
%
% <html>
% <h2>Introduction</h2>
% <p>
% This block represents a HDL coder compatible model for a generic resolver, which measures
% the electrical phase angle of a signal through electromagnatic coupling.
% </p>
% <h2>Assumptions</h2>
% <p>
% This model is based on the equations for the superposition of two ideal
% transformers, both with coupling coefficients that depend on rotor angle.
% Dynamics is omitted. 
% </p>
% <h2>Open Resolver Library</h2>
% <p><a href="matlab:open_system('slrtresolverlib.slx');">Resolver library</a></p>
% <img src="images/resolver.jpg" alt="resolverlib screenshot" width="460" height="345">
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
% <td>RotorAngle</td>
% <td>1x1</td>
% <td>single</td>
% <td>Input rotor angular position</td>     
% </tr>
% <tr>
% <td>Config</td>
% <td>1x6</td>
% <td>single</td>
% <td>Resolver block configuration parameters</td>     
% </tr>
% <tr>
% <td>ADC_Data</td>
% <td>1x1</td>
% <td>uint32</td>
% <td>Rotor (or equivalently primary) voltage from ADC</td>
% </tr>
% <tr>
% <td>ADC_Valid</td>
% <td>1x1</td>
% <td>uint32</td>
% <td>When ADC_Valid port is enabled, data from port ADC_data is sampled</td>
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
% <td>V<sub>x</sub>_DAC</td>
% <td>1x1</td>
% <td>single</td>
% <td>The first secondary voltage</td>     
% </tr>
% <tr>
% <td>V<sub>y</sub>_DAC</td>
% <td>1x1</td>
% <td>single</td>
% <td>The second secondary voltage</td>     
% </tr>
% </table>
% </html>