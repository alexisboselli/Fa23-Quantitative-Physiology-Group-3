function dydt = parallelODEs_finalproject(t, G, X , I ,D)

%define constants- average of data
p1 = 0;
p2 = 0.0107;
p3 = 0.0000058;
p4 = 0.0042;
p5 = 80.24;
p6 = 0.262;
Gb = 75;
Ib = 7;
a = 2;
b = 0.1;

%defining initial conditions for G, I, and X
G = Gb;
I = Ib;
X = 0;

% Define the differential equations
dGdt = -(p1+X)*G + p1*Gb + D;
dXdt =  -p2*X + p3 (I-Ib);
dIdt =  p4*(G-p5)*t - p6(I-Ib);
dDdt = a*exp(-b*t);
end