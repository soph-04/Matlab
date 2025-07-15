%% Lab 2: Loops and Functions

%% Exercise 1: Loops and Functions
%
%% Array Reversal Testing

% (1) Test a reverse_array with a 1D numerical vector
num_vector = [1, 2, 3, 4, 5];
reversed_num_vector = reverse_array(num_vector);
disp('Original Numerical Vector:');
disp(num_vector);
disp('Reversed Numerical Vector:');
disp(reversed_num_vector);

% (2) Test a reverse_array with a 1D string
string_vector = 'Hello, World!';
reversed_string_vector = char(reverse_array(abs(string_vector)));
disp('Original String:');
disp(string_vector);
disp('Reversed String:');
disp(reversed_string_vector);

% (3) Test a reverse_array with a 2D matrix (should throw an error)
matrix_input = [1, 2; 3, 4];
try
    reverse_array(matrix_input);
catch ME
    disp('Error with 2D matrix input:');
    disp(ME.message);
end

% `min(size(x)) == 1` ensures that one of the dimensions of x is 1, making 
% it a 1D array.`numel(size(x)) < 3` ensures that x doesnt have more than 
% two dimensions. These conditions ensure that the input x is a 1D array.
