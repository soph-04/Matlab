%% Lab 8: Symbolic Computing
%
% Sophie Furtado
% 251250533
%
%% Exercise 1

clc; clear; close all;
syms x y; 

% Function f(x, y)
f = exp(x^2 + y^2);

%%% Differentiation
% First order derivative
df_dx = diff(f, x);
df_dy = diff(f, y);

% Second order derivative
df_dxdy = diff(df_dx, y);
df_dydx = diff(df_dy, x);

% Print results
fprintf('First derivative wrt x:\n'); disp(df_dx);
fprintf('First derivative wrt y:\n'); disp(df_dy);
fprintf('Second derivative wrt x then y:\n'); disp(df_dxdy);
fprintf('Second derivative wrt y then x:\n'); disp(df_dydx);

% Derivatives at x=2 and y=3 using eval
x_val = 2;
y_val = 3;
df_dx_val = eval(subs(df_dx, [x, y], [x_val, y_val]));
df_dy_val = eval(subs(df_dy, [x, y], [x_val, y_val]));
df_dxdy_val = eval(subs(df_dxdy, [x, y], [x_val, y_val]));
df_dydx_val = eval(subs(df_dydx, [x, y], [x_val, y_val]));

% Print results
fprintf('df/dx at (2,3): %f\n', df_dx_val);
fprintf('df/dy at (2,3): %f\n', df_dy_val);
fprintf('d^2f/dxdy at (2,3): %f\n', df_dxdy_val);
fprintf('d^2f/dydx at (2,3): %f\n', df_dydx_val);

%%% Integration
% Indefinite integrals
int_f_x = int(f, x);
int_f_y = int(f, y);
int_f_xy = int(int_f_x, y);
int_f_yx = int(int_f_y, x);

% Print results
fprintf('Indefinite integral wrt x:\n'); disp(int_f_x);
fprintf('Indefinite integral wrt y:\n'); disp(int_f_y);
fprintf('Indefinite integral wrt x then y:\n'); disp(int_f_xy);
fprintf('Indefinite integral wrt y then x:\n'); disp(int_f_yx);

% Definite integrals at xmin=-2, xmax=2, ymin=-3 and ymax=3
xmin = -2; 
xmax = 2;
ymin = -3; 
ymax = 3;
int_f_x_def = int(f, x, xmin, xmax);
int_f_y_def = int(f, y, ymin, ymax);
int_f_xy_def = int(int_f_x_def, y, ymin, ymax);
int_f_yx_def = int(int_f_y_def, x, xmin, xmax);

%Print results
fprintf('Definite integral wrt x from -2 to 2:\n'); disp(int_f_x_def);
fprintf('Definite integral wrt y from -3 to 3:\n'); disp(int_f_y_def);
fprintf('Definite integral wrt x then y:\n'); disp(int_f_xy_def);
fprintf('Definite integral wrt y then x:\n'); disp(int_f_yx_def);

% Plot f(x, y)
[X, Y] = meshgrid(xmin:0.1:xmax, ymin:0.1:ymax);
Z = exp(X.^2 + Y.^2);
figure;
surf(X, Y, Z);
set(gcf, 'Position', [100, 100, 600, 400]);
title('f=exp(x^2+y^2)');
print('2Dfct.png', '-dpng');

% Generate integral value
F = @(X,Y) exp(X.^2 + Y.^2);
fprintf('The value of the integral using integral2: %f\n', integral2(F, xmin, xmax, ymin, ymax));

