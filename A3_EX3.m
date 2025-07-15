%% Assignment 3
%
% Sophie Furtado
% 251250533

%% Exercise 3

function expsin()
    % Test single plots
    disp('Testing expsinplot with tau = -3, omega = 5');
    expsinplot(-3, 5);
    
    disp('Testing expsinplot with tau = 1, omega = 10');
    expsinplot(1, 10);

    % Test multiple figures
    taus = [-5, -2, 10];
    omegas = [20, 10, 5];
    
    disp('Testing expsinplots...');
    expsinplots(taus, omegas);
    
    disp('Testing expsinsubplot...');
    expsinsubplot(taus, omegas);
end

% Single plot function
function expsinplot(tau, omega)
    t = linspace(0, 10, 1001);
    y = 10 * exp(-t ./ tau) .* sin(omega * t);
    
    figure;
    plot(t, y, 'r-', 'LineWidth', 1.5);
    grid on;
    
    % Title with expression and parameters
    title(['$$y(t) = 10e^{-t/' num2str(tau) '} \cdot \sin(' num2str(omega) 't)$$'], ...
        'Interpreter', 'latex', 'FontSize', 14);
    
    xlabel('Time (t)', 'FontSize', 14);
    ylabel('y(t)', 'FontSize', 14);
end

% Multiple individual plots
function expsinplots(taus, omegas)
    M = length(taus);
    for i = 1:M
        expsinplot(taus(i), omegas(i));
    end
end

% Multiple subplots in one
function expsinsubplot(taus, omegas)
    M = length(taus);
    figure;
    for i = 1:M
        subplot(M, 1, i);
        t = linspace(0, 10, 1001);
        y = 10 * exp(-t ./ taus(i)) .* sin(omegas(i) * t);
        plot(t, y, 'r-', 'LineWidth', 1.5);
        grid on;
        
        title(['$$y(t) = 10e^{-t/' num2str(taus(i)) '} \cdot \sin(' num2str(omegas(i)) 't)$$'], ...
            'Interpreter', 'latex', 'FontSize', 14);
        xlabel('Time (t)', 'FontSize', 14);
        ylabel('y(t)', 'FontSize', 14);
    end
end
