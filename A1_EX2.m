%% Assignment 1: Exercise 2

%% Part a
%
% Function that returns an nxn matrix with distinct positve integers
% randomly chosen between 1 and n^2
function A = randomMatrix(n)
    A = reshape(randperm(n^2), n, n);
end

%% Part b
%
% Function that takes a single matrix input and returns the numerical input
% 1 if magic and 0 if not
function output = isMagic(M)
    [n, m] = size(M);
    % Check if M is a square matrix
    if n ~= m
        output = 0;
        return;
    end
    % Check if M contains exactly the integers 1 through n^2.
    if ~isequal(sort(M(:)), (1:n^2)')
        output = 0;
        return;
    end
    % Find the magic constant.
    magicConstant = sum(M(1,:));
    % Check rows
    if any(sum(M, 2) ~= magicConstant)
        output = 0;
        return;
    end
    % Check columns
    if any(sum(M, 1) ~= magicConstant)
        output = 0;
        return;
    end
    % Check diagonal
    if sum(diag(M)) ~= magicConstant
        output = 0;
        return;
    end
    % Check secondary diagonal
    if sum(diag(flipud(M))) ~= magicConstant
        output = 0;
        return;
    end
    output = 1;
end

%% Part c
%
% Program validation
n = 3;

% Using MATLAB's built-in magic(n)
fprintf('Testing built-in magic(n) square:\n');
M_builtin = magic(n);
disp(M_builtin);
fprintf('isMagic(M_builtin) = %d\n\n', isMagic(M_builtin));

% Using randomMatrix(n)
fprintf('Testing randomMatrix(n):\n');
M_random = randomMatrix(n);
disp(M_random);
fprintf('isMagic(M_random) = %d\n', isMagic(M_random));
