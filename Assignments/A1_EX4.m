%% Assignment 1: Exercise 4

%% y = mysclosest(x, t)
% Algorithm that accepts vector x and target number t and returns the
% closest value in x to t
function y = myclosest(x, t)
    % Initialize with first element
    y = x(1);
    bestDiff = abs(x(1) - t);
    % Loop over remaining elements
    for i = 2:length(x)
        currentDiff = abs(x(i) - t);
        if currentDiff < bestDiff
            bestDiff = currentDiff;
            y = x(i);
        end
    end
end
% Verify function
x = [10 2 -3 2 35 5 -100];
t = 7;
y = myclosest(x, t);
fprintf('For x = [10 2 -3 2 35 5 -100] and t = %d, the closest value is %d\n', t, y);
