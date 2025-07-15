%% Lab 9: Basic Statistics 
%
% Sophie Furtado
% 251250533

%% Exercise 1 

% Load dataset 1
data1 = load('lab09dataset1.mat');
x1 = double(data1.x);
y1 = double(data1.y);

% Compute stats
mean_x1 = mean(x1); std_x1 = std(x1);
skew_x1 = skewness(x1); kurt_x1 = kurtosis(x1);
mean_y1 = mean(y1); std_y1 = std(y1);
skew_y1 = skewness(y1); kurt_y1 = kurtosis(y1);

% Create scatter plot
figure;
plot(x1, y1, '*k');
grid on;
xlabel('x values');
ylabel('y values');
xlim([900 980]);
ylim([8 28]);

% Labels using text
text(902, 27, 'lab09dataset1', 'FontSize', 10, 'Color', 'green');
text(902, 24, {
    ['x mean=', num2str(mean_x1)], ...
    ['x std=', num2str(std_x1)], ...
    ['x skewness=', num2str(skew_x1)], ...
    ['x kurtosis=', num2str(kurt_x1)]}, ...
    'FontSize', 10, 'Color', 'red');
text(950, 13, {
    ['y mean=', num2str(mean_y1)], ...
    ['y std=', num2str(std_y1)], ...
    ['y skewness=', num2str(skew_y1)], ...
    ['y kurtosis=', num2str(kurt_y1)]}, ...
    'FontSize', 10, 'Color', 'blue');

% Load dataset 2
data2 = load('lab09dataset2.mat');
x2 = double(data2.x);
y2 = double(data2.y);

% Compute stats
mean_x2 = mean(x2); std_x2 = std(x2);
skew_x2 = skewness(x2); kurt_x2 = kurtosis(x2);

mean_y2 = mean(y2); std_y2 = std(y2);
skew_y2 = skewness(y2); kurt_y2 = kurtosis(y2);

% Create scatter plot
figure;
plot(x2, y2, '*k'); 
grid on;
xlabel('x values');
ylabel('y values');
xlim([min(x2)-5, max(x2)+5]);
ylim([min(y2)-2, max(y2)+2]);

% Labels using text
text(min(x2)+2, max(y2), 'lab09dataset2', 'FontSize', 10, 'Color', 'green');
text(10, 21, {
    ['x mean=', num2str(mean_x2)], ...
    ['x std=', num2str(std_x2)], ...
    ['x skewness=', num2str(skew_x2)], ...
    ['x kurtosis=', num2str(kurt_x2)]}, ...
    'FontSize', 10, 'Color', 'red');
text(12, -15, {
    ['y mean=', num2str(mean_y2)], ...
    ['y std=', num2str(std_y2)], ...
    ['y skewness=', num2str(skew_y2)], ...
    ['y kurtosis=', num2str(kurt_y2)]}, ...
    'FontSize', 10, 'Color', 'blue');

%% Exercise 2 

% Dataset 1 histograms using hist
figure;
subplot(1, 2, 1);
hist(x1, 18);
title('x distribution for lab09dataset1');
xlabel('x');
ylabel('Frequency');

subplot(1, 2, 2);
hist(y1, 18);
title('y distribution for lab09dataset1');
xlabel('y');
ylabel('Frequency');

% Dataset 2 histograms using hist
figure;
subplot(1, 2, 1);
hist(x2, 18);
title('x distribution for lab09dataset2');
xlabel('x');
ylabel('Frequency');

subplot(1, 2, 2);
hist(y2, 18);
title('y distribution for lab09dataset2');
xlabel('y');
ylabel('Frequency');
