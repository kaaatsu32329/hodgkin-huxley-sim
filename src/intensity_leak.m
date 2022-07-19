% file name: intensity_leak.m
% author: UCHIYAMA Katsu
% date: 2022-07-19

function I_leak = intensity_leak(voltage)

    conductance_leak = 0.3; % [mS/cm2]
    equilibrium_voltage_leak = -54.387; % [mV]

    I_leak = conductance_leak * (voltage - equilibrium_voltage_leak);

end
