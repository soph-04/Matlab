%% Lab 4: Vectors and Matrices
%
% Sophie Furtado
% 251250533
%
%% Exercise 1: Simple Matrix Calculations
%
format compact

fprintf('A: a 4 by 4 matrix of random numbers\n');
A = rand(4,4)

fprintf('B: the transpose of A\n');
B = A'

fprintf('C1: A * B (Matrix multiplication)\n');
C1 = A * B
fprintf('C2: A .* B (Element-wise multiplication)\n');
C2 = A .* B

%% Exercise 2: Matrix Construction and Vector Products
%
%<sprintf('\L')>
%% Exercise 2: Matrix Construction and Vector Products
%

% 1
E = eye(4)

% 2
q = [4 7; 8 3]
E(2:3, 3:4) = q
fprintf('E after inserting q at (2,3)\n');
E

% 3
E(1:2, 1:2) = q'
fprintf('E after inserting transpose of q at (1,1)\n');
E

% 4
a = E(2, 1:3)
fprintf('Row vector a (first 3 elements of the 2nd row)\n');
a

% 5
b = E(1:3, 3)
fprintf('Column vector b (first 3 elements of the 3rd column)\n');
b

% 6
inner_product = a * b
fprintf('Inner product of a and b (a * b)\n');
dot_product = dot(a, b)
fprintf('Using MATLAB dot function: dot(a, b)\n');
dot_product

% 7
outer_product = b * a
fprintf('Outer product of b and a (b * a)\n');
outer_product
