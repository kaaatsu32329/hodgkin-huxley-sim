% file name: alpha_m.m
% author: UCHIYAMA Katsu
% date: 2022-07-19

function alpha = alpha_m(voltage)

    alpha = 0.1 * (-40 - voltage) / (exp((-40 - voltage) / 10) - 1);

end
