%% Assignment 1: Exercise 1
%% Part a
%
% Define matrix M
M = [3 4 -5 1;
     1 2  1 4;
     7 2 -1 5;
     10 -3 2 1];
% Define vector v
v = [2; 1; 3; 4];

% v' * M 
vTM = v' * M;
fprintf('v'' * M = \n');
disp(vTM);

% M * v
Mv = M * v;
fprintf('M * v = \n');
disp(Mv);

% M * M'
MMt = M * M';
fprintf('M * M'' = \n');
disp(MMt);

% M' * M
MtM = M' * M;
fprintf('M'' * M = \n');
disp(MtM);

% v' * M * v
vTMv = v' * M * v;
fprintf('v'' * M * v = \n');
disp(vTMv);

%% Part b
%
% Function that replaces all elements in the input 'matrix' that satisfy
% -5 <= x <= 5 with 1.
function modified = replaceBetween(matrix)
    % Copy the original matrix
    modified = matrix; 
    % Create a mask
    mask = (matrix >= -5) & (matrix <= 5); 
    % Replace elements that match the condition with 1
    modified(mask) = 1;              
end
%%% Testing Part b
% Example 1
A = [-6, -5,  0, 10;
      7,  2,  8, -3;
      5, -4, 12,  4];
fprintf('Original A:\n');
disp(A);
modified_A = replaceBetween(A);
fprintf('Modified A:\n');
disp(modified_A);

% Example 2
B = [-7, -5,  6,  0,  2;
      8,  9, -2, 11,  3;
     10, -4, -6,  5, 12;
     13,  7, -3, 14, -1;
     15, 16, -8, 17,  4];
fprintf('Original B:\n');
disp(B);
modified_B = replaceBetween(B);
fprintf('Modified B :\n');
disp(modified_B);

%% Part c
%
% Function that replaces all even integers in the input 'matrix' with 1.
function modified = replaceEven(matrix)
    % Copy original matrix
    modified = matrix;   
    % Create mask for even integers
    mask = mod(matrix, 2) == 0; 
    % Replace even intergers with 1
    modified(mask) = 1;        
end
%%% Testing Part c
% Example 1
C = [2,  3,  4,  5;
     6,  7,  8,  9;
    10, 11, 12, 13];
fprintf('Original C:\n');
disp(C);
modified_C = replaceEven(C);
fprintf('Modified C:\n');
disp(modified_C);

% Example 2
D = [2,  3,  4,  5,  6;
     7,  8,  9, 10, 11;
    12, 13, 14, 15, 16;
    17, 18, 19, 20, 21;
    22, 23, 24, 25, 26];
fprintf('Original D:\n');
disp(D);
modified_D = replaceEven(D);
fprintf('Modified D:\n');
disp(modified_D);
