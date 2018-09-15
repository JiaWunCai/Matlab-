%% Generating random number in MATLAB
% Uniform distribution
Data1 = rand(10000,1);
figure
histogram(Data1, 50)

% normal distribution
Data2 = randn(10000,1);
figure
histogram(Data2, 50)

