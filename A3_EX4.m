%% Assignment 3

%% Exercise 4

syms x y;

% Part a
f = x^2*y + exp(-x*y);
disp('Symbolic function f:');
disp(f);

% Evaluate f at x=1, y=2
f_val = subs(f, [x, y], [1, 2]);
fprintf('f(1,2) = %.4f\n', double(f_val));

% Part b
fx = diff(f, x);
fy = diff(f, y);
disp('Partial derivative fx:');
disp(fx);
disp('Partial derivative fy:');
disp(fy);

% Gradient at x=1, y=2
grad = [subs(fx, [x, y], [1, 2]); subs(fy, [x, y], [1, 2])];
disp('Gradient at (1,2):');
disp(double(grad));

% Part c
fxx = diff(fx, x);
fxy = diff(fx, y);
fyx = diff(fy, x);
fyy = diff(fy, y);

disp('fxx:'); disp(fxx);
disp('fxy:'); disp(fxy);
disp('fyx:'); disp(fyx);
disp('fyy:'); disp(fyy);

% Hessian matrix at x=1, y=2
Hessian = [subs(fxx, [x, y], [1, 2]), subs(fxy, [x, y], [1, 2]); ...
           subs(fyx, [x, y], [1, 2]), subs(fyy, [x, y], [1, 2])];
disp('Hessian at (1,2):');
disp(double(Hessian));
