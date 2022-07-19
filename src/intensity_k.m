% file name: intensity_k.m
% author: UCHIYAMA Katsu
% date: 2022-07-19
% desctiption: Intensity of Postassium ion

function I_k = intensity_k(voltage, gate_n)

    conductance_k = 36.0; % [mS/cm2]
    equilibrium_voltage_k = -77.0; % [mV]

    I_k = conductance_k * gate_n^4 * (voltage - equilibrium_voltage_k);

end
