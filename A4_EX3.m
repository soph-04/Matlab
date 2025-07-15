%% Assignment 4

%% Exercise 3

% myrand function that simulates p(x) and returns an n × 1 column vector x, 
% where n is the number ofsamples drawn from ¯p(x), and x is the collection 
% of the n samples
function x = myrand(n)
    u = rand(n, 1);
    x = zeros(n, 1);
    for i = 1:n
        if u(i) < 0.25
            x(i) = sqrt(2 * u(i) / 3);
        elseif u(i) < 0.75
            x(i) = 0.25 + (u(i) - 0.25);
        else
            x(i) = 1 - sqrt(2 * (1 - u(i)));
        end
    end
end

% Verify function on n=10000 and plot histogram of x
x = myrand(10000);
histogram(x, 50);
title('Histogram of samples from \bar{p}(x)');
xlabel('x'); ylabel('Frequency');
