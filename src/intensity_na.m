% file name: intensity_na.m
% author: UCHIYAMA Katsu
% date: 2022-07-19
% desctiption: Intensity of Sodium ion

function I_na = intensity_na(voltage, gate_m, gate_h)

    conductance_na = 120.0; % [mS/cm2]
    equilibrium_voltage_na = 50.0; % [mV]

    I_na = conductance_na * gate_m^3 * gate_h * (voltage - equilibrium_voltage_na);

end
