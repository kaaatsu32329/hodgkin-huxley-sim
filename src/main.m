% file name: main.m
% author: UCHIYAMA Katsu
% date: 2022-07-18

clear; close all; grid on;

dt = 0.05;
t_span = 0:dt:200;

voltage = t_span * 0.0;

i_na = t_span * 0.0;
i_k = t_span * 0.0;
i_leak = t_span * 0.0;

m = t_span * 0.0;
h = t_span * 0.0;
n = t_span * 0.0;

i_injection = t_span * 0.0;

step = 3;

voltage(1) = -65;
m(1) = 0.05;
h(1) = 0.6;
n(1) = 0.32;

for i = 2:length(t_span)
    voltage(i) = voltage(i - 1) + diff_membrane_potential(voltage(i - 1), m(i - 1), h(i - 1), n(i - 1), intensity_injection(t_span(i - 1), i, step, dt)) * dt;
    m(i) = m(i - 1) + diff_gate(alpha_m(voltage(i - 1)), beta_m(voltage(i - 1)), m(i - 1)) * dt;
    h(i) = h(i - 1) + diff_gate(alpha_h(voltage(i - 1)), beta_h(voltage(i - 1)), h(i - 1)) * dt;
    n(i) = n(i - 1) + diff_gate(alpha_n(voltage(i - 1)), beta_n(voltage(i - 1)), n(i - 1)) * dt;
    i_injection(i) = intensity_injection(t_span(i - 1), i, step, dt);
    i_na(i) = intensity_na(voltage(i - 1), m(i - 1), h(i - 1));
    i_k(i) = intensity_k(voltage(i - 1), n(i - 1));
    i_leak(i) = intensity_leak(voltage(i - 1));
end

% Plotting
title('Hodgikin-Huxley Model');
xlabel('time [ms]');

subplot(4, 1, 1);
plot(t_span, voltage, 'linewidth', 2);
ylabel('Voltage [mV]');

subplot(4, 1, 2);
hold on;
plot(t_span, i_na, 'linewidth', 2);
plot(t_span, i_k, 'linewidth', 2);
plot(t_span, i_leak, 'linewidth', 2);
legend('Na', 'K', 'Leak');
hold off;
ylabel('Current [mA]');

subplot(4, 1, 3);
hold on;
plot(t_span, m, 'linewidth', 2);
plot(t_span, h, 'linewidth', 2);
plot(t_span, n, 'linewidth', 2);
legend('m', 'h', 'n');
hold off;
ylabel('Gate value');

subplot(4, 1, 4);
plot(t_span, i_injection, 'linewidth', 2);
ylabel('Injected [μA/cm^2]');
ylim([0 55]);
