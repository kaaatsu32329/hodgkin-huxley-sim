% file name: diff_membrane_potential.m
% author: UCHIYAMA Katsu
% date: 2022-07-19
% description: Membrane potential is `膜電位`

function dV_dt = diff_membrane_potential(voltage, gate_m, gate_h, gate_n, I_inj)

    capacitance = 1.0; % [μF/cm^2]

    dV_dt = (I_inj -intensity_na(voltage, gate_m, gate_h) - intensity_k(voltage, gate_n) - intensity_leak(voltage)) / capacitance;

end
