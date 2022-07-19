% file name: beta_n.m
% author: UCHIYAMA Katsu
% date: 2022-07-19

function beta = beta_n(voltage)

    beta = 0.125 * exp((-65 - voltage) / 80);

end
