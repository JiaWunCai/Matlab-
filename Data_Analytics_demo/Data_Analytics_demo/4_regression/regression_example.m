%% Regression in MATLAB
%% 1. load in the data
load carbig

%% 2. Extract the predictors and response
X = [Horsepower, Displacement];
y = Acceleration;

%% 3. fit the linear regression model by 'fitlm'
mdl = fitlm(X,y);

%% 4. plot the result and R-square of regression model
plot(mdl)
mdl.Rsquared

%% 4. Predict the new car acceleration with known Horsepower: 100, Displacement: 1000
new_y = predict(mdl, [100, 1000]);

