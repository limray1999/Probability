%% ECE-6303 Probability & Stochastic Process
%% HW#7 Problem 4 c.)
%% Guanze Pen, Qct, 2021

clear all
close all

% Dimension of vector
N = 1000;

%% Generate samples according to f_Y(y)

for n = 1:N
    u = rand;                               % Generate a sample uniformly in (-1,1)
    p = [1 0 -3 u*4-2];                     % Solve for inverse function
    sol = roots(p);
    y(n) = sol(find(-1<=sol &  sol<=1));    % Find the roots in (-1,1);
end

cdfplot(y)
hy = cdfplot(y)
[hy,stats] = cdfplot(y)    % Find empirical CDF
set(hy,{'LineWidth'},{2})
hold on

%% Generate samples according to f_X|Y(x|y)

for n = 1:N
    u = rand;                               % Generate a 
    x(n) = sqrt(u*(1-(y(n)^2)));            % Solve for inverse function
end

cdfplot(x)
hx = cdfplot(x)
[hx,stats] = cdfplot(x)   % Find empirical CDF
legend('Empirical CDF of y','Empirical CDF of x|y','FontSize',14)
set(hx,{'LineWidth'},{2})
