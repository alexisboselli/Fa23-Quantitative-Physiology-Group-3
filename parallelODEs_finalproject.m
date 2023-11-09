function dydt = parallelODEs_finalproject(t, y, X, I, D)
% y is a vector of state variables [G; X; I; D]

% define constants - average of data
p1 = 0;
p2 = 0.0107;
p3 = 0.0000058;
p4 = 0.0042;
p5 = 80.24;
p6 = 0.262;
Gb = 75;
Ib = 7;
a = 1; % Varies by case between 1-2
b = 1; % varies by casebetween 1-2

% unpack state variables
G = y(1);
X = y(2);
I = y(3);
D = y(4);

% Define the differential equations
dGdt = -(p1 + X) * G + p1 * Gb + D; % change in concentration of glucose in the blood
dXdt = -(p2 * X) + p3 * (I - Ib); % insulin action rate equation
dIdt = p4 * (G - p5) * t - p6 * (I - Ib); % change in plasma concentration
dDdt = a * exp(-b * t); % external energy input by patient

% Pack the derivatives into a column vector
dydt = [dGdt; dXdt; dIdt; dDdt];
end
