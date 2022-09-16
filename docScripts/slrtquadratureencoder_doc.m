%% Quadrature Encoder Block
%
% <html>
% <h2>Introduction</h2>
% <p>
% This block represents a HDL coder compatible model for quadrature encoder that 
% converts information about the angular position of a shaft into
% electrical pulses. The block produces N pulses on ports A and B per shaft
% revoluation. Pulses A and B are 90 degrees out of phase. The block also
% produces a single index pulse on port Z once per revolution.
% </p>
% <h2>Open Quadrature Encoder Library</h2>
% <p><a href="matlab:open_system('slrtencoderlib.slx');">Quadrature Encoder library</a></p>
% <img src="images/quadratureEncoder.jpg" alt="quadrature encoder lib screenshot" width="460" height="345">
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
% <td>1x3</td>
% <td>single</td>
% <td>Quadration encoder block configuration parameters</td>     
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
% <td>A</td>
% <td>1x1</td>
% <td>boolean</td>
% <td>Port A</td>     
% </tr>
% <tr>
% <td>B</td>
% <td>1x1</td>
% <td>boolean</td>
% <td>Port B</td>     
% </tr>
% <tr>
% <td>Z</td>
% <td>1x1</td>
% <td>boolean</td>
% <td>Pulse port Z</td>     
% </tr>
% </table>
% </html>
