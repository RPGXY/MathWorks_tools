function add_tx_io(hRD)

% add AXI4 and AXI4-Lite slave interfaces
hRD.addAXI4SlaveInterface( ...
    'InterfaceConnection', 'axi_cpu_interconnect/M09_AXI', ...
    'BaseAddress',         '0x43C10000', ...
    'MasterAddressSpace',  'sys_ps7/Data');

% Reference design interfaces	
hRD.addInternalIOInterface( ...
    'InterfaceID',    'AD9361 DAC Data I0', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'axi_ad9361_dac_data_i0', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'sys_rfifo_0/dma_rdata', ...
    'IsRequired',     false);
	
hRD.addInternalIOInterface( ...
    'InterfaceID',    'AD9361 DAC Data Q0', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'axi_ad9361_dac_data_q0', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'sys_rfifo_1/dma_rdata', ...
    'IsRequired',     false);	

hRD.addInternalIOInterface( ...
    'InterfaceID',    'AD9361 DAC Data I1', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'axi_ad9361_dac_data_i1', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'sys_rfifo_2/dma_rdata', ...
    'IsRequired',     false);
	
hRD.addInternalIOInterface( ...
    'InterfaceID',    'AD9361 DAC Data Q1', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'axi_ad9361_dac_data_q1', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'sys_rfifo_3/dma_rdata', ...
    'IsRequired',     false);	
	
hRD.addInternalIOInterface( ...
    'InterfaceID',    'DUT Data 0 In', ...
    'InterfaceType',  'IN', ...
    'PortName',       'util_dac_unpack_dac_data_00', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_dac_unpack/dac_data_00', ...
    'IsRequired',     false);

hRD.addInternalIOInterface( ...
    'InterfaceID',    'DUT Data 1 In', ...
    'InterfaceType',  'IN', ...
    'PortName',       'util_dac_unpack_dac_data_01', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_dac_unpack/dac_data_01', ...
    'IsRequired',     false);

hRD.addInternalIOInterface( ...
    'InterfaceID',    'DUT Data 2 In', ...
    'InterfaceType',  'IN', ...
    'PortName',       'util_dac_unpack_dac_data_02', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_dac_unpack/dac_data_02', ...
    'IsRequired',     false);

hRD.addInternalIOInterface( ...
    'InterfaceID',    'DUT Data 3 In', ...
    'InterfaceType',  'IN', ...
    'PortName',       'util_dac_unpack_dac_data_03', ...
    'PortWidth',      16, ...
    'InterfaceConnection', 'util_dac_unpack/dac_data_03', ...
    'IsRequired',     false);	

hRD.addInternalIOInterface( ...
    'InterfaceID',    'Load Tx Data', ...
    'InterfaceType',  'OUT', ...
    'PortName',       'util_dac_unpack_dac_valid_00', ...
    'PortWidth',      1, ...
    'InterfaceConnection', 'util_dac_unpack/dac_valid_00', ...
    'IsRequired',     false);	
