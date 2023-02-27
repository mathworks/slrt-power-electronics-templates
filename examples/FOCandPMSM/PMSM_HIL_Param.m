% Description   :   Set Parameters for HIL workflow
% File name     :   PMSM_HIL_Param.m

% Copyright 2022 The MathWorks, Inc.

% Model rate on the FPGA
T_fpga = 1e-6;      % Sample time for motor and inverter equations
f_fpga = 1/T_fpga;

% Base frequency of the FPGA
f_base = 100e6;     % 100e6 => 10ns sample time for inverter pwm capture
% f_base = 2e6;     % uncomment for faster simulation, make sure this is commented during HDL codegen
T_base = 1/f_base;  % Sample time for PWM capture

% Set parameters for embedded controller (FOC)
embedded_sim_codegen_data;

% Base rate for desktop simulation
% T_base = 1e-6; 

oversampling = T_fpga/ T_base;

% Switching frequency
f_sw = PWM_frequency;
Tsw = 1/f_sw;

% Sample time of the controller
Tsc = T_cpu; 

% Sample time of the Simscape model
Ts = T_fpga; 

% Initial reference speed of FOC
SpeedRef = 1;