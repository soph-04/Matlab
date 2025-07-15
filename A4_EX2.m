%% Assignment 4

%% Exercise 2
clc; clear;

%% Part a
% Function that returns the indices of non-positive elements of x in ind 
% and the geometric mean of positive elements of x.
function [ind, gm] = myGeomean(x)
    ind = find(x <= 0);
    x_pos = x(x > 0);
    gm = (prod(x_pos))^(1 / length(x_pos));
end

%% Part b
% Function that d returns the indices of non-positive elements of x in ind 
% and the harmonic mean of positive elements of x
function [ind, hm] = myHarmmean(x)
    ind = find(x <= 0);
    x_pos = x(x > 0);
    hm = length(x_pos) / sum(1 ./ x_pos);
end

% Verify part a - myGeomean using 2 examples
fprintf('Verify myGeomean\n');

x1 = [1 -1 2.3 4 -3 6.5];
[ind1, gm1] = myGeomean(x1);
fprintf('x1 = [%s]\n', num2str(x1));
fprintf('Non-positive indices: [%s]\n', num2str(ind1));
fprintf('Geometric mean (custom): %.4f\n', gm1);
fprintf('Geometric mean (builtin): %.4f\n\n', geomean(x1(x1 > 0)));

x2 = [2 -4 5.5 1.1 -2 3];
[ind2, gm2] = myGeomean(x2);
fprintf('x2 = [%s]\n', num2str(x2));
fprintf('Non-positive indices: [%s]\n', num2str(ind2));
fprintf('Geometric mean (custom): %.4f\n', gm2);
fprintf('Geometric mean (builtin): %.4f\n\n', geomean(x2(x2 > 0)));

% Verify part b - myharmmean using 2 examples
fprintf('Verify myHarmmean\n');

[ind3, hm1] = myHarmmean(x1);
fprintf('x1 = [%s]\n', num2str(x1));
fprintf('Non-positive indices: [%s]\n', num2str(ind3));
fprintf('Harmonic mean (custom): %.4f\n', hm1);
fprintf('Harmonic mean (builtin): %.4f\n\n', harmmean(x1(x1 > 0)));

[ind4, hm2] = myHarmmean(x2);
fprintf('x2 = [%s]\n', num2str(x2));
fprintf('Non-positive indices: [%s]\n', num2str(ind4));
fprintf('Harmonic mean (custom): %.4f\n', hm2);
fprintf('Harmonic mean (builtin): %.4f\n', harmmean(x2(x2 > 0)));



