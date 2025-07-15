%% Assignment 4
%
% Sophie Furtado
% 251250533

%% Exercise 1
clc; clear; close all;

%% Part a
xmin = -8; xmax = 8;
ymin = -8; ymax = 8;
zmin = -20; zmax = 20;

% Construct arrays for x and y values using linspace
xs = linspace(xmin, xmax, 201);
ys = linspace(ymin, ymax, 201);
% Generate X and Y using meshgrid
[X, Y] = meshgrid(xs, ys);
R = sqrt(X.^2 + Y.^2);

% Compute Z1 using vectorized calculation
norm_sinc = @(r) sin(pi * r) ./ (pi * r);
Z1 = 10 * norm_sinc(R);
% handle sinc(0)=1
Z1(R == 0) = 10; 

% Compute Z2 using vectorized calculation
Z2 = 18 - (3 * R) + sin(R) + sqrt(200 - (X.^2 + Y.^2)) + 10 * sin(X) + 10 * sin(Y);
Z2 = Z2 / 1000;

% Plot f1
figure;
mesh(X, Y, Z1);
axis([xmin xmax ymin ymax zmin zmax]);
title('$f_1(x, y) = 10 \cdot \mathrm{sinc}(\sqrt{x^2 + y^2})$', ...
    'Interpreter', 'latex', 'FontSize', 14);
xlabel('x', 'Color', 'blue', 'FontSize', 12);
ylabel('y', 'Color', 'green', 'FontSize', 12);
zlabel('z', 'Color', 'red', 'FontSize', 12);

%% Part b
%Numerical integration on f1
fun1 = @(x,y) arrayfun(@(x,y) sinc_safe(x, y), x, y);
num_area1 = integral2(fun1, xmin, xmax, ymin, ymax);
text(0, 0, 10, ['Numerical Area = ', num2str(num_area1, '%.4f')], ...
    'Color', 'magenta', 'FontSize', 12);

% Plot a
figure;
mesh(X, Y, Z2);
axis([xmin xmax ymin ymax zmin zmax]);
title(['$f_2(x, y) = \frac{1}{1000}(18 - 3\sqrt{x^2 + y^2} + \sin(\sqrt{x^2 + y^2}) +' ...
       ' \sqrt{200 - (x^2 + y^2)} + 10\sin(x) + 10\sin(y))$'], ...
    'Interpreter', 'latex', 'FontSize', 14);
xlabel('x', 'Color', 'blue', 'FontSize', 12);
ylabel('y', 'Color', 'green', 'FontSize', 12);
zlabel('z', 'Color', 'red', 'FontSize', 12);

% Numerical integration on f2
fun2 = @(x,y) (18 - (3 * sqrt(x.^2 + y.^2)) + sin(sqrt(x.^2 + y.^2)) + ...
              sqrt(200 - (x.^2 + y.^2)) + 10 * sin(x) + 10 * sin(y)) / 1000;
num_area2 = integral2(fun2, xmin, xmax, ymin, ymax);
text(0, 0, 10, ['Numerical Area = ', num2str(num_area2, '%.4f')], ...
    'Color', 'magenta', 'FontSize', 12);

% helper function for sinc
function val = sinc_safe(x, y)
    r = sqrt(x^2 + y^2);
    if r == 0
        val = 10;
    else
        val = 10 * (sin(pi * r) / (pi * r));
    end
end
