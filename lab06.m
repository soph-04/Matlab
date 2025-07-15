%% Lab 6: 2D Plotting
%
% Sophie Furtado
% 251250533
%
%% Exercise 1
%

% Clear workspace and command window
clear;
clc;

% Square root function
x = 0:0.1:4;
figure;
plot(x, sqrt(x));
title('square root');
xlabel('x');
ylabel('sqrt(x)');

% Exponential function
x = -2:0.1:5;
figure;
plot(x, exp(x));
title('exponential function');
xlabel('x');
ylabel('exp(x)');

% Log10 function
x = 0.1:0.1:10;
figure;
plot(x, log10(x));
title('log10 function');
xlabel('x');
ylabel('log10(x)');

% Log2 function
figure;
plot(x, log2(x));
title('log2 function');
xlabel('x');
ylabel('log2(x)');

% Exponential base10 function
x = -1:0.1:2;
figure;
plot(x, 10.^x);
title('exponential base10');
xlabel('x');
ylabel('10^x');

% Exponential base2 function
figure;
plot(x, 2.^x);
title('exponential base2');
xlabel('x');
ylabel('2^x');

% Sine function
x = -2 * pi:pi / 100:2 * pi;
figure;
plot(x, sin(x));
title('sine');
xlabel('x');
ylabel('sin(x)');

% Plot cosine function
figure;
plot(x, cos(x));
title('cosine');
xlabel('x');
ylabel('cos(x)');

% Tangent function
x = -pi / 2 + 0.01:0.01:pi / 2 - 0.01;
figure;
plot(x, tan(x));
title('tangent');
xlabel('x');
ylabel('tan(x)');

% Cotangent function
x1 = -0.8:0.01:-0.01;
x2 = 0.01:0.01:0.8;
x = [x1, x2];
figure;
plot(x, cot(x));
title('cotangent');
xlabel('x');
ylabel('cot(x)');

% Arcsine function
x = -1:0.01:1;
figure;
plot(x, asin(x));
title('arcsine');
xlabel('x');
ylabel('asin(x)');

% Arccosine function
figure;
plot(x, acos(x));
title('arccosine');
xlabel('x');
ylabel('acos(x)');

% Arctangent function
x = -10:0.01:10;
figure;
plot(x, atan(x));
title('arctangent');
xlabel('x');
ylabel('atan(x)');

% Arccotangent function
x1 = -0.8:0.01:-0.01;
x2 = 0.01:0.01:0.8;
x = [x1, x2];
figure;
plot(x, acot(x));
title('arccotangent');
xlabel('x');
ylabel('acot(x)');
