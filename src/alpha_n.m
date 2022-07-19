% file name: alpha_n.m
% author: UCHIYAMA Katsu
% date: 2022-07-19

function alpha = alpha_n(voltage)

    alpha = 0.01 * (-55 - voltage) / (exp((-55 - voltage) / 10) - 1);

end