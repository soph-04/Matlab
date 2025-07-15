%% Assignment 1: Exercise 3
%
% Sophie Furtado
% 251250533
%

%% Search()
% Function that searches for the min and max of f(x) in 2000 steps over the
% range 0.01 ≤ x ≤ 20
function search
    % Define range and step size
    x_start = 0.01;
    x_end = 20;
    step = 0.01;
    % Get number of steps: 2000
    N = floor((x_end - x_start) / step) + 1;
    
    % Initialize
    x_val = x_start;
    f_val = sin(x_val^2) / x_val;
    f_min = f_val;
    x_min = x_val;
    f_max = f_val;
    x_max = x_val;
    
    % Loop over 2000 points
    for k = 1:N
        % Get the current x value
        x_val = x_start + (k - 1) * step;
        % Gte f(x)
        f_val = sin(x_val^2) / x_val;        
        % Update min if current value is lower
        if f_val < f_min
            f_min = f_val;
            x_min = x_val;
        end   
        %Update max if current value is higher
        if f_val > f_max
            f_max = f_val;
            x_max = x_val;
        end
    end    
    % Print results
    fprintf('Minimum value f_min = %f at x = %f\n', f_min, x_min);
    fprintf('Maximum value f_max = %f at x = %f\n', f_max, x_max);
end
