%% Quadrature Encoder Configuration Block
%
% <html>
% <h2>Introduction</h2>
% <p>
% This block is used to configure the quadrature encoder block. 
% </p>
% <h2>Open Quadrature Encoder Library</h2>
% <p><a href="matlab:open_system('slrtencoderlib.slx');">Quadrature Encoder library</a></p>
% <img src="images/quadratureEncoder.jpg" alt="quadrature encoder lib screenshot" width="460" height="345">
% <h2>Ports</h2>
% <h3>Output</h3>
% <table>
% <tr>
% <td>Output</td>
% <td>Dimensions</td>
% <td>DataType</td>
% <td>Description</td>     
% </tr>
% <tr>
% <td>config</td>
% <td>1x3</td>
% <td>single</td>
% <td>This port should be connected to the config input port of quadration encoder block</td>     
% </tr>
% </table>
% <h2>Parameters</h2>
% <table>
% <tr>
% <td>Parameter</td>
% <td>Default value</td>
% <td>Description</td>     
% </tr>
% <tr>
% <td>Pulses per revolution</td>
% <td>2000</td>
% <td>The number of pulses on ports A and B per shaft revolution</td>
% </tr>
% <tr>
% <td>Index pulse offset relative to shaft initial angle (deg)</td>
% <td>0</td>
% <td>Offset of the index pulse Z relative to the angle of the shaft at the start of the simulation</td>
% </tr>
% </table>
% </html>
