%% Lab 3: Arrays and More Numerical Types
%
% Sophie Furtado
% 251250533
%

%% Exercise 1: Simple Array Calculations

%% 1D Arrays - Vectors
v = [1 4 7 10 13];
w = [1; 4; 7; 10; 13];
v(1:3);
v(1, end);
v(:);

%% 2D Arrays - Matrices
A = [1 2 3; 4 5 6; 7 8 9];
A(2,1);
A(3,3) = 0;
A(2,:);
A(:,2:3);
A(:,2) = [];
A;
A(1:2,1:2);
A(end:-1:1,end);

%% Linear arrays
x = 0:0.1:5;
theta = linspace(0, 2*pi, numel(x));
sin(theta);

%% Identity matrices
eye(3);
eye(3,3);

%% Exercise 2: Matrix Inverse

A = magic(3);
B = inv(A);
A * B;
B * A;
C = [1 2 3; 4 5 6; 7 8 9];
B * C;
A \ C;
C * B;
C / A;
