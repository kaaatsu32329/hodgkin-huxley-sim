% file name: beta_m.m
% author: UCHIYAMA Katsu
% date: 2022-07-19

function beta = beta_m(voltage)

    beta = 4 * exp((-voltage - 65) / 18);

end
