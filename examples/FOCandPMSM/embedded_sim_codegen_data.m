% Model         :   PMSM Field Oriented Control
% Description   :   Set Parameters for PMSM Field Oriented Control
% File name     :   mcb_pmsm_foc_qep_f28379d_data.m

% Copyright 2022 The MathWorks, Inc.

%% Set PWM Switching frequency
PWM_frequency 	= 20e3;             %Hz     // converter s/w freq
T_pwm           = 1/PWM_frequency;  %s      // PWM switching time period

%% Set Sample Times
T_cpu          	= T_pwm;            %sec    // Sample time for control system
Ts_simulink     = T_pwm/2;          %sec    // Simulation time step for model simulation
Ts_motor        = T_pwm/2;          %Sec    // Simulation time step for pmsm
Ts_inverter     = T_pwm/2;          %sec    // Simulation time step for inverter
Ts_speed        = 10*T_cpu;            %Sec    // Sample time for speed controller

%% Set data type for controller & code-gen
% dataType = fixdt(1,32,17);        % Fixed point code-generation
dataType = 'single';                % Floating point code-generation

%% System Parameters
% Motor parameters
pmsm = mcb_SetPMSMMotorParameters('Teknic2310P');
% pmsm = mcb_SetPMSMMotorParameters('Maxon_EC_Speedgoat');
% pmsm.model  = 'PMSM';   %           // Manufacturer Model Number
% pmsm.sn     = '0';      %           // Manufacturer Model Number
% pmsm.p = 6;             %           // Pole Pairs for the motor
% pmsm.Rs = 0.013;        %Ohm        // Stator Resistor
% pmsm.Ld = 2e-4;         %H          // D-axis inductance value
% pmsm.Lq = 2e-4     ;    %H          // Q-axis inductance value
% pmsm.Ke = 0.03;         %Bemf Const	// Vpk_LL/krpm
% pmsm.J = 0.2;           %Kg-m2      // Inertia in SI units
% pmsm.B = 70.095e-6;     %Kg-m2/s    // Friction Co-efficient
% pmsm.I_rated= 300;      %A      	// Rated current (phase-peak)
% pmsm.QEPSlits = 1024;   %           // QEP Encoder Slits
% pmsm.N_base = 500;      %rpm        // Base speed
% pmsm.N_max  = 3000;     %rpm        // Max speed
% pmsm.FluxPM     = (pmsm.Ke)/(sqrt(3)*2*pi*1000*pmsm.p/60); %PM flux computed from Ke
% pmsm.FluxPM = 0.03;
% pmsm.T_rated    = (3/2)*pmsm.p*pmsm.FluxPM*pmsm.I_rated;   %Get T_rated from I_rated

pmsm.PositionOffset = 0;% Per-Unit position offset

%% Target & Inverter Parameters
target = mcb_SetProcessorDetails('F28379D',PWM_frequency);

% inverter = mcb_SetInverterParameters('BoostXL-DRV8305');
inverter = mcb_SetInverterParameters('BoostXL-DRV8305');
% inverter.model         = 'PMSM';        % 		// Manufacturer Model Number
% inverter.sn            = 'INV_XXXX';    % 		// Manufacturer Serial Number
% inverter.V_dc          = 48;       		%V      // DC Link Voltage of the Inverter
% inverter.I_trip        = 400;       	%Amps   // Max current for trip
% inverter.Rds_on        = 1e-3;     		%Ohms   // Rds ON for BoostXL-DRV8305
% inverter.Rshunt        = 0.001;    		%Ohms   // Rshunt for BoostXL-DRV8305
% inverter.CtSensAOffset = 2257;        	%Counts // ADC Offset for phase-A
% inverter.CtSensBOffset = 2181;        	%Counts // ADC Offset for phase-B
% inverter.ADCGain       = 1;             %       // ADC Gain factor scaled by SPI
% inverter.EnableLogic   = 1;    			% 		// Active high for DRV8305 enable pin (EN_GATE)
% inverter.invertingAmp  = 1;   			% 		// Non inverting current measurement amplifier
% inverter.ISenseVref    = 3.3;			%V 		// Voltage ref of inverter current sense circuit
% inverter.ISenseVoltPerAmp = 1/600; 		%V/Amps // Current sense voltage output per 1 A current (Rshunt * iSense op-amp gain)
% inverter.ISenseMax     = inverter.ISenseVref/(2*inverter.ISenseVoltPerAmp); %Amps // Maximum Peak-Neutral current that can be measured by inverter current sense
% inverter.R_board        = inverter.Rds_on + inverter.Rshunt/3;  %Ohms


% Enable automatic calibration of ADC offset for current measurement
inverter.ADCOffsetCalibEnable = 1;  % Enable: 1, Disable:0

% If automatic ADC offset calibration is disabled, uncomment and update the
% offset values below manually
% inverter.CtSensAOffset = 2295;      % ADC Offset for phase current A
% inverter.CtSensBOffset = 2286;      % ADC Offset for phase current B

% Update inverter.ISenseMax based for the chosen motor and target
inverter = mcb_updateInverterParameters(pmsm,inverter,target);
inverter.ADCOffset = 1.65;          %volt   // Current sense output for 0A current

% Max and min ADC counts for current sense offsets
inverter.CtSensOffsetMax = 2500;    % Maximum permitted ADC counts for current sense offset
inverter.CtSensOffsetMin = 1500;    % Minimum permitted ADC counts for current sense offset

%% Derive Characteristics
pmsm.N_base = mcb_getBaseSpeed(pmsm,inverter); %rpm // Base speed of motor at given Vdc

% mcb_getCharacteristics(pmsm,inverter);

%% PU System details // Set base values for pu conversion

PU_System = mcb_SetPUSystem(pmsm,inverter);

%% Controller design // Get ballpark values!

PI_params = mcb.internal.SetControllerParameters(pmsm,inverter,PU_System,T_pwm,T_cpu,Ts_speed);

%Updating delays for simulation
PI_params.delay_Currents    = int32(T_cpu/Ts_simulink);
PI_params.delay_Position    = int32(T_cpu/Ts_simulink);
PI_params.delay_Speed       = int32(Ts_speed/Ts_simulink);
PI_params.delay_Speed1      = (PI_params.delay_IIR + 0.5*T_cpu)/Ts_speed;

% mcb_getControlAnalysis(pmsm,inverter,PU_System,PI_params,Ts,Ts_speed);

%% Displaying model variables
disp(pmsm);
disp(inverter);
disp(target);
disp(PU_System);
