S = 50 * 746; % nominal power
Vs = 460; % Stator voltage
f = 50; % Supply frequency
Rr = 0.18795;
Rs = 0.19595;
Llr = 0.00076091;
Lls = 0.0006628;
Lm = 0.048519;
P = 4; % Number of Poles
Tr = (Llr + Lm) / Rr; % Time constant
J = 0.64614;
F = 0.075675;
Ls = Lls + Lm;
Lr = Llr + Lm;
