clc; clear;

% initial conditions
initial_G_value = 75; % Replace with the actual initial value for G
initial_X_value = 7; % Replace with the actual initial value for X
initial_I_value = 0; % Replace with the actual initial value for I
initial_D_value = 20; % Replace with the actual initial value for D

in = [initial_G_value; initial_X_value; initial_I_value; initial_D_value];
tspan = [0, 200];

[t, Y] = ode45(@parallelODEs_finalproject, tspan, in);

% Extracting columns from the solution matrix
G_values = Y(:, 1); % Column 1 corresponds to 'G'
I_values = Y(:, 3); % Column 3 corresponds to 'I'

% Plotting 'G' against 't'
figure;
subplot(2, 1, 1);
plot(t, G_values, 'LineWidth', 2);
title('Glucose Concentration (G) vs Time');
xlabel('Time (t)');
ylabel('Glucose Concentration (G)');

% Plotting 'I' against 't'
subplot(2, 1, 2);
plot(t, I_values, 'LineWidth', 2);
title('Insulin Concentration (I) vs Time');
xlabel('Time (t)');
ylabel('Insulin Concentration (I)');

