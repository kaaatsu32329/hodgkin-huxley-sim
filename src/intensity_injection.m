% file name: intensity_injection.m
% author: UCHIYAMA Katsu
% date: 2022-07-20

function I_inj = intensity_injection(t, count, step, dt)

    y = sin((t + count * dt * step) / 5);

    if y > 0
        I_inj = 30;
    else
        I_inj = 0;
    end

    %{
    if count > 0 & count < 2000
        I_inj = 50;
    else
        I_inj = 15;
    end
    %}

end
