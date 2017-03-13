clear all;

flux = 0;
Q = 1;
k = 8.987*10^9;

x = 0.5;
for y = 0.5:-0.01:-0.5
    for z = 0.5:-0.01:-0.5
        E = k*Q*0.5/sqrt(x^2+y^2+z^2)^3;    % take angel into account
        flux = flux + E/10000;     % E*dA
    end
end

x = -0.5;
for y = 0.5:-0.01:-0.5
    for z = 0.5:-0.01:-0.5
        E = k*Q*0.5/sqrt(x^2+y^2+z^2)^3;    % take angel into account
        flux = flux + E/10000;     % E*dA
    end
end

y = 0.5;
for x = 0.5:-0.01:-0.5
    for z = 0.5:-0.01:-0.5
        E = k*Q*0.5/sqrt(x^2+y^2+z^2)^3;    % take angel into account
        flux = flux + E/10000;     % E*dA
    end
end

y = -0.5;
for x = 0.5:-0.01:-0.5
    for z = 0.5:-0.01:-0.5
        E = k*Q*0.5/sqrt(x^2+y^2+z^2)^3;    % take angel into account
        flux = flux + E/10000;     % E*dA
    end
end

z = 0.5;
for x = 0.5:-0.01:-0.5
    for y = 0.5:-0.01:-0.5
        E = k*Q*0.5/sqrt(x^2+y^2+z^2)^3;    % take angel into account
        flux = flux + E/10000;     % E*dA
    end
end

z = -0.5;
for x = 0.5:-0.01:-0.5
    for y = 0.5:-0.01:-0.5
        E = k*Q*0.5/sqrt(x^2+y^2+z^2)^3;    % take angel into account
        flux = flux + E/10000;     % E*dA
    end
end

fprintf ('(1) The total flux is %d (Volt?m).\n', flux);