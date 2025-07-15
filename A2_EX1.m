%% Assignment 2: Exercise 1
%
% Sophie Furtado
% 251250533
%
%% Load variables
load('A2.mat');

%% Part a
% Plot xtr and ytr
figure;
scatter(xtr, ytr, 'bo', 'filled');
title('Training Data');
xlabel('x');
ylabel('y');

% Plot xte and yte
figure;
scatter(xte, yte, 'bo', 'filled');
title('Test Data');
xlabel('x');
ylabel('y');

%% Part b
% Polyfit for linear regression to xtr and ytr
order = 1;
coeffs_linear = polyfit(xtr, ytr, order);

disp('Linear Regression Coefficients:');
disp(coeffs_linear);

% Get predictions for the training set
x_range = linspace(min(xtr), max(xtr), 100); % Smooth x values
y_pred_linear = polyval(coeffs_linear, x_range);

% Report training error
y_tr_pred = polyval(coeffs_linear, xtr);
training_error = mean((y_tr_pred - ytr).^2);

disp(['Training Error (Order 1): ', num2str(training_error)]);

%% Part c
% Plot training data with regression line
figure;
scatter(xtr, ytr, 'bo', 'filled');
hold on;
plot(x_range, y_pred_linear, 'r', 'LineWidth', 2);
hold off;
title(['Polynomial of Order 1, Training Error = ', num2str(training_error)]);
xlabel('x');
ylabel('y');

% Evaluate test data
y_te_pred = polyval(coeffs_linear, xte);
test_error = mean((y_te_pred - yte).^2);
disp(['Test Error (Order 1): ', num2str(test_error)]);

% Plot test data with regression line
figure;
scatter(xte, yte, 'bo', 'filled');
hold on;
plot(x_range, y_pred_linear, 'r', 'LineWidth', 2);
hold off;
title(['Test Data with Order 1 Regression, Test Error = ', num2str(test_error)]);
xlabel('x');
ylabel('y');

%% Part d
% Calculate weights using normal equation
X = [ones(size(xtr)), xtr];
w_linear = (X' * X) \ (X' * ytr);
disp('Linear Regression Weights using Normal Equation:');
disp(w_linear);
% same as 1b

%% Part e
% 3rd-order polynomial regression using polyfit
order = 3;
coeffs_poly3 = polyfit(xtr, ytr, order);

disp('Polynomial Regression Coefficients (Order 3):');
disp(coeffs_poly3);

% get predictions
y_pred_poly3 = polyval(coeffs_poly3, x_range);
y_tr_pred_poly3 = polyval(coeffs_poly3, xtr);
training_error_poly3 = mean((y_tr_pred_poly3 - ytr).^2);
disp(['Training Error (Order 3): ', num2str(training_error_poly3)]);

% Plot training data with 3rd-order regression
figure;
scatter(xtr, ytr, 'bo', 'filled');
hold on;
plot(x_range, y_pred_poly3, 'r', 'LineWidth', 2);
hold off;
title(['Polynomial of Order 3, Training Error = ', num2str(training_error_poly3)]);
xlabel('x');
ylabel('y');

% Evaluate on test data
y_te_pred_poly3 = polyval(coeffs_poly3, xte);
test_error_poly3 = mean((y_te_pred_poly3 - yte).^2);
disp(['Test Error (Order 3): ', num2str(test_error_poly3)]);

% Plot test data with 3rd-order regression
figure;
scatter(xte, yte, 'bo', 'filled');
hold on;
plot(x_range, y_pred_poly3, 'r', 'LineWidth', 2);
hold off;
title(['Test Data with Order 3 Regression, Test Error = ', num2str(test_error_poly3)]);
xlabel('x');
ylabel('y');

%% Part f
% Compute weights using normal equation for order 3
X_poly3 = [ones(size(xtr)), xtr, xtr.^2, xtr.^3];
w_poly3 = (X_poly3' * X_poly3) \ (X_poly3' * ytr);
disp('Polynomial Regression Weights using Normal Equation (Order 3):');
disp(w_poly3);
% same as 1e
