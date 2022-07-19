% file name: beta_h.m
% author: UCHIYAMA Katsu
% date: 2022-07-19

function beta = beta_m(voltage)

    beta = 1 / (exp((-35 - voltage) / 10) + 1);

end
