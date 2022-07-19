% file name: diff_gate.m
% author: UCHIYAMA Katsu
% date: 2022-07-19

function diff = diff_gate(alpha, beta, gate)

    diff = alpha * (1.0 - gate) - beta * gate;

end
