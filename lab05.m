%% Lab 5: Linear System of Equations

%% Exercise 1
%
% Define matrix A and vector b
A = [2 3; 4 -1];
b = [5; 1];

% Solve the linear system A*x = b
solution1 = A\b;

% Display x = solution(1) and y = solution(2)
disp('Solution for Exercise 1:')
disp(solution1)

%% Exercise 2
% 
% Define 3x3 matrix A and vector b
A = [1 2 3; 4 5 6; 7 8 9];
b = [14; 32; 50];

% Solve the system A*x = b 
solution2 = A\b;

% Display the results
disp('Solution for Exercise 2:')
disp(solution2)

% b lies in the column space of A so there are infinitely many solutions.
% Per my understanding, the MATLAB warning indicates that the computed
% solution might not be numerically stable.
% it returns 1 solution that satisfies Ax=b
