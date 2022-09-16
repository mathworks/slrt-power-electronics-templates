%--------------------------------------------------------------------------
% HDL Workflow Script
% This script was generated using the following parameter values:
%     Filename  : 'hdlworkflow.m'
%     Overwrite : true
%     Comments  : true
%     Headers   : true
%     DUT       : 'slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper'
% To view changes after modifying the workflow, run the following command:
% >> hWC.export('DUT','slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper');
%--------------------------------------------------------------------------

%% Load the Model
load_system('slrt_induction_2level_inverter');

%% Restore the Model to default HDL parameters
%hdlrestoreparams('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper');

%% Model HDL Parameters
%% Set Model 'slrt_induction_2level_inverter' HDL parameters
hdlset_param('slrt_induction_2level_inverter', 'CriticalPathEstimation', 'on');
hdlset_param('slrt_induction_2level_inverter', 'FloatingPointTargetConfiguration', hdlcoder.createFloatingPointTargetConfig('NativeFloatingPoint'));
hdlset_param('slrt_induction_2level_inverter', 'HDLSubsystem', 'slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper');
hdlset_param('slrt_induction_2level_inverter', 'ReferenceDesign', 'Speedgoat IO334-325k');
hdlset_param('slrt_induction_2level_inverter', 'ReferenceDesignParameter', {'PCIe_Link_Width','X4','RearPlugin','-21','AuroraMode','None','AuroraByteswap','true'});
hdlset_param('slrt_induction_2level_inverter', 'ScalarizePorts', 'DUTLevel');
hdlset_param('slrt_induction_2level_inverter', 'SynthesisTool', 'Xilinx Vivado');
hdlset_param('slrt_induction_2level_inverter', 'SynthesisToolChipFamily', 'Kintex7');
hdlset_param('slrt_induction_2level_inverter', 'SynthesisToolDeviceName', 'xc7k325t');
hdlset_param('slrt_induction_2level_inverter', 'SynthesisToolPackageName', 'fbg676');
hdlset_param('slrt_induction_2level_inverter', 'SynthesisToolSpeedValue', '-2');
hdlset_param('slrt_induction_2level_inverter', 'TargetDirectory', 'hdl_prj\hdlsrc');
hdlset_param('slrt_induction_2level_inverter', 'TargetFrequency', 200);
hdlset_param('slrt_induction_2level_inverter', 'TargetPlatform', 'Speedgoat IO334-325k');
hdlset_param('slrt_induction_2level_inverter', 'Workflow', 'Simulink Real-Time FPGA I/O');

% Set SubSystem HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper', 'AXI4SlaveIDWidth', '14');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper', 'DistributedPipelining', 'on');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper', 'FlattenHierarchy', 'on');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper', 'ProcessorFPGASynchronization', 'Free running');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_RC_or_TTL', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_RC_or_TTL', 'IOInterfaceMapping', 'x"100"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_PWM_DutyCycle', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_PWM_DutyCycle', 'IOInterfaceMapping', 'x"110"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_PWM_Period', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_PWM_Period', 'IOInterfaceMapping', 'x"104"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_PWM_Enable', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_PWM_Enable', 'IOInterfaceMapping', 'x"108"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/TTL_S1', 'IOInterface', 'TTL IO3xx-21 [0:55]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/TTL_S1', 'IOInterfaceMapping', '[0]');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/TTL_S2', 'IOInterface', 'TTL IO3xx-21 [0:55]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/TTL_S2', 'IOInterfaceMapping', '[1]');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/TTL_S3', 'IOInterface', 'TTL IO3xx-21 [0:55]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/TTL_S3', 'IOInterfaceMapping', '[2]');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/TTL_S4', 'IOInterface', 'TTL IO3xx-21 [0:55]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/TTL_S4', 'IOInterfaceMapping', '[3]');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/TTL_S5', 'IOInterface', 'TTL IO3xx-21 [0:55]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/TTL_S5', 'IOInterfaceMapping', '[4]');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/TTL_S6', 'IOInterface', 'TTL IO3xx-21 [0:55]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/TTL_S6', 'IOInterfaceMapping', '[5]');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_V_dc', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_V_dc', 'IOInterfaceMapping', 'x"10C"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Fault', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Fault', 'IOInterfaceMapping', 'x"128"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_LdTrq//Spd', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_LdTrq//Spd', 'IOInterfaceMapping', 'x"12C"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Motor_Config', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Motor_Config', 'IOInterfaceMapping', 'x"140"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Encoder_Config', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Encoder_Config', 'IOInterfaceMapping', 'x"190"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Resolver_Config', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Resolver_Config', 'IOInterfaceMapping', 'x"1C0"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/ADC_Resolver_Input', 'IOInterface', 'IO334 AI Data [0:15]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/ADC_Resolver_Input', 'IOInterfaceMapping', 'Channel 01');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Iabc_DAC_gain', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Iabc_DAC_gain', 'IOInterfaceMapping', 'x"130"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Iabc_DAC_bias', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Iabc_DAC_bias', 'IOInterfaceMapping', 'x"134"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_DAC_reset', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_DAC_reset', 'IOInterfaceMapping', 'x"138"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_CounterValue_AD_Trigger', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_CounterValue_AD_Trigger', 'IOInterfaceMapping', 'x"13C"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/ADC_Resolver_Valid', 'IOInterface', 'IO334 AI Valid [0:7]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/ADC_Resolver_Valid', 'IOInterfaceMapping', 'Channel 01 to 02');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Resolver_DAC_gain', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Resolver_DAC_gain', 'IOInterfaceMapping', 'x"1B4"');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Resolver_DAC_bias', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Resolver_DAC_bias', 'IOInterfaceMapping', 'x"1B8"');

% Set SubSystem HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PWM Generator', 'AdaptivePipelining', 'on');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PWM Generator', 'BalanceDelays', 'on');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PWM Generator', 'ClockRatePipelining', 'on');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PWM Generator', 'DistributedPipelining', 'on');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PWM Generator', 'FlattenHierarchy', 'on');

% Set SubSystem HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter', 'ProcessorFPGASynchronization', 'Free running');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter/Gates', 'IOInterface', 'No Interface Specified');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter/Gates', 'IOInterfaceMapping', '');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter/Iout', 'IOInterface', 'No Interface Specified');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter/Iout', 'IOInterfaceMapping', '');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter/DV', 'IOInterface', 'No Interface Specified');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter/DV', 'IOInterfaceMapping', '');

% Set Inport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter/Fault_Word', 'IOInterface', 'No Interface Specified');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter/Fault_Word', 'IOInterfaceMapping', '');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter/Vll_abc', 'IOInterface', 'No Interface Specified');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter/Vll_abc', 'IOInterfaceMapping', '');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter/Vph_abc', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter/Vph_abc', 'IOInterfaceMapping', 'x"100"');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter/I_DC', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Subsystem/Subcycle Averaging 2-Level Inverter/I_DC', 'IOInterfaceMapping', 'x"100"');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_I_DC', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_I_DC', 'IOInterfaceMapping', 'x"184"');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Ia', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Ia', 'IOInterfaceMapping', 'x"188"');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Ib', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Ib', 'IOInterfaceMapping', 'x"18C"');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Ic', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Ic', 'IOInterfaceMapping', 'x"1A4"');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Motor_Spd', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Motor_Spd', 'IOInterfaceMapping', 'x"1A8"');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Motor_Angle', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Motor_Angle', 'IOInterfaceMapping', 'x"1AC"');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Motor_ElecAngle', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Motor_ElecAngle', 'IOInterfaceMapping', 'x"1B0"');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Motor_Trq', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Motor_Trq', 'IOInterfaceMapping', 'x"124"');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Enc_A', 'IOInterface', 'TTL IO3xx-21 [0:55]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Enc_A', 'IOInterfaceMapping', '[8]');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Enc_B', 'IOInterface', 'TTL IO3xx-21 [0:55]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Enc_B', 'IOInterfaceMapping', '[9]');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Enc_Z', 'IOInterface', 'TTL IO3xx-21 [0:55]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Enc_Z', 'IOInterfaceMapping', '[10]');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/DAC_Ia', 'IOInterface', 'IO334 AO Data [0:15]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/DAC_Ia', 'IOInterfaceMapping', 'Channel 01');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/DAC_Ib', 'IOInterface', 'IO334 AO Data [0:15]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/DAC_Ib', 'IOInterfaceMapping', 'Channel 02');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/DAC_Ic', 'IOInterface', 'IO334 AO Data [0:15]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/DAC_Ic', 'IOInterfaceMapping', 'Channel 03');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/TTL_DAC_trigger', 'IOInterface', 'TTL IO3xx-21 [0:55]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/TTL_DAC_trigger', 'IOInterfaceMapping', '[11]');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Null_DAC_trigger', 'IOInterface', 'IO334 AO Trigger [0:1]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/Null_DAC_trigger', 'IOInterfaceMapping', 'Channel 01 to 08');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/DAC_Resolver_Vx', 'IOInterface', 'IO334 AO Data [0:15]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/DAC_Resolver_Vx', 'IOInterfaceMapping', 'Channel 04');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/DAC_Resolver_Vy', 'IOInterface', 'IO334 AO Data [0:15]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/DAC_Resolver_Vy', 'IOInterfaceMapping', 'Channel 05');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/ADC_trigger_1_2', 'IOInterface', 'IO334 AI Trigger [0:7]');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/ADC_trigger_1_2', 'IOInterfaceMapping', 'Channel 01 to 02');

% Set Outport HDL parameters
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Streaming_Out', 'IOInterface', 'PCIe Interface');
hdlset_param('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper/PCIe_Streaming_Out', 'IOInterfaceMapping', 'x"800"');


%% Workflow Configuration Settings
% Construct the Workflow Configuration Object with default settings
hWC = hdlcoder.WorkflowConfig('SynthesisTool','Xilinx Vivado','TargetWorkflow','Simulink Real-Time FPGA I/O');

% Specify the top level project directory
hWC.ProjectFolder = 'hdl_prj';
hWC.ReferenceDesignToolVersion = '2020.1';
hWC.IgnoreToolVersionMismatch = false;

% Set Workflow tasks to run
hWC.RunTaskGenerateRTLCodeAndIPCore = true;
hWC.RunTaskCreateProject = true;
hWC.RunTaskBuildFPGABitstream = true;
hWC.RunTaskGenerateSimulinkRealTimeInterface = true;

% Set properties related to 'RunTaskGenerateRTLCodeAndIPCore' Task
hWC.IPCoreRepository = '';
hWC.GenerateIPCoreReport = true;

% Set properties related to 'RunTaskCreateProject' Task
hWC.Objective = hdlcoder.Objective.None;
hWC.AdditionalProjectCreationTclFiles = '';
hWC.EnableIPCaching = true;

% Set properties related to 'RunTaskBuildFPGABitstream' Task
hWC.RunExternalBuild = false;
hWC.EnableDesignCheckpoint = false;
hWC.TclFileForSynthesisBuild = hdlcoder.BuildOption.Default;
hWC.CustomBuildTclFile = '';
hWC.DefaultCheckpointFile = 'Default';
hWC.RoutedDesignCheckpointFilePath = '';
hWC.MaxNumOfCoresForBuild = '';

% Validate the Workflow Configuration Object
hWC.validate;

%% Run the workflow
hdlcoder.runWorkflow('slrt_induction_2level_inverter/Induction Motor and 2-Level Inverter HDL Wrapper', hWC);
