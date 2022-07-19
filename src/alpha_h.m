% file name: alpha_h.m
% author: UCHIYAMA Katsu
% date: 2022-07-19

function alpha = alpha_h(voltage)

    alpha = 0.07 * exp((-voltage - 65) / 20);

end
