%% Assignment 3
%
% Sophie Furtado
% 251250533

%% Exercise 1

% Set number of simulations to 30 to verify. 
function test_birthSim()
    n = 30;
    p = birthSim(n);
    
    fprintf('Estimated probability that two or more of %d people share a birthday: %.4f\n', n, p);
end

function p = birthSim(n)
    % Number of simulations
    trials = 10000;
    % Counter for shared birthdays
    count = 0;
    
    for i = 1:trials
        % Random birthdays for n people
        birthdays = randi(365, 1, n);
        % If there's a duplicate
        if length(unique(birthdays)) < n
            count = count + 1;
        end
    end
    % Estimated probability
    p = count / trials;
    fprintf('Estimated probability for n = %d: %.4f\n', n, p);
end

