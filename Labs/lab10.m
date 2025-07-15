%% Lab 10: Basic Statistics II
%
% Sophie Furtado
% 251250533

%% Exercise 1 

% Mean
mu = [0 0];
% Covariance matrix
Sigma = [1 0; 0 1];

x1 = -3:0.1:3;
x2 = -3:0.1:3;
[X1, X2] = meshgrid(x1,x2);
F = mvnpdf([X1(:) X2(:)], mu, Sigma);
F = reshape(F,length(x2),length(x1));

% Bivariate Normal Distribution
figure
surf(X1, X2, F);
xlabel('x1'); ylabel('x2'); zlabel('Probability Density');
title('Bivariate Normal Distribution');

% Bivariate Normal Distribution using view(2)
figure
surf(X1, X2, F);
view(2);
xlabel('x1'); ylabel('x2');
title('Bivariate Normal Distribution - view(2)');
colorbar

mu2 = [1 1];
Sigma2 = [0.25 0; 0 1];

F2 = mvnpdf([X1(:) X2(:)], mu2, Sigma2);
F2 = reshape(F2, length(x2), length(x1));

% Bivariate Normal Distribution with new mu and sigma
figure
surf(X1, X2, F2);
xlabel('x1'); ylabel('x2'); zlabel('Probability Density');
title('Another Bivariate Normal Distribution');

% Bivariate Normal Distribution using view(2) with new mu and sigma
figure
surf(X1, X2, F2);
view(2);
xlabel('x1'); ylabel('x2');
title('Another Bivariate Normal Distribution - view(2)');
colorbar

mu3 = [1 -1];
Sigma3 = [1 0.5; 0.5 1];
rng('default')
R = mvnrnd(mu3, Sigma3, 500);

% Plot using Generate Multivariate Normal Random Numbers
figure
scatter(R(:,1), R(:,2), 'filled')
xlabel('x1'); ylabel('x2');
title('Random Samples from Bivariate Normal Distribution');

mu4 = [2 3];
Sigma4 = [1 -1.5; -1.5 3];
R2 = mvnrnd(mu4, Sigma4, 500);

% Plot using Generate Multivariate Normal Random Numbers using new mu and
% sigma
figure
scatter(R2(:,1), R2(:,2), 'filled')
xlabel('x1'); ylabel('x2');
title('Random Samples from Another Bivariate Normal Distribution');

