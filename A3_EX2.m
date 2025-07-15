%% Assignment 3
%
% Sophie Furtado
% 251250533

%% Exercise 2

xmin = -2; xmax = 2; ymin = -2; ymax = 2;
npoints = 51;
xs = linspace(xmin, xmax, npoints);
ys = linspace(ymin, ymax, npoints);

[X, Y] = meshgrid(xs, ys);
f1 = X .* cos(Y).^2;
f2 = Y .* exp(X.^2 - 5);

figure;
subplot(1,2,1);
surf(X, Y, f1);
shading interp;
% Set labels to be bold and size 16
title('\bf f_1(x,y) = xcos^2(y)', 'FontSize', 16);
xlabel('\bf x', 'FontSize', 16);
ylabel('\bf y', 'FontSize', 16);
zlabel('\bf z', 'FontSize', 16);
text(0, 0, 0.4, '\bf f_1(x,y) = xcos^2(y)', 'FontSize', 16);

subplot(1,2,2);
surf(X, Y, f2);
shading interp;
% Set labels to be bold and size 16
title('\bf f_2(x,y) = ye^{x^2 - 5}', 'FontSize', 16);
xlabel('\bf x', 'FontSize', 16);
ylabel('\bf y', 'FontSize', 16);
zlabel('\bf z', 'FontSize', 16);
text(0, 0, -1, '\bf f_2(x,y) = ye^{x^2 - 5}', 'FontSize', 16);
