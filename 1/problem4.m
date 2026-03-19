% --- MATLAB Script to Load and Plot LTspice Data ---

% Define the filename
filename = 'Problem3.txt';

% Load the data using readmatrix.
% 'NumHeaderLines', 1 tells it to skip the first line 
data = readmatrix(filename, 'NumHeaderLines', 1);

% Extract the columns into variables 
time = data(:, 1);     % First column is 'time' 
voltage = data(:, 2);  % Second column is 'V(n003)' 
current = data(:, 3);  % Third column is 'I(R1)' 

% --- Plotting the Data ---
% This creates two separate plots in one figure window.

figure; % Create a new figure window

% First plot: Voltage vs. Time
subplot(2, 1, 1); % (2 rows, 1 column, plot 1)
plot(time, voltage, 'LineWidth', 1.5);
title('Voltage vs. Time');
xlabel('Time (s)');
ylabel('Voltage V(n003) (V)');
grid on;

% Second plot: Current vs. Time
subplot(2, 1, 2); % (2 rows, 1 column, plot 2)
plot(time, current, 'r', 'LineWidth', 1.5); % 'r' makes the plot red
title('Current vs. Time');
xlabel('Time (s)');
ylabel('Current I(R1) (A)');
grid on;
