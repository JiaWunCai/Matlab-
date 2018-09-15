%% Read the data to MATLAB table array from CSV file
Data = readtable('bank-full.csv');

%% Group statistics
Result = grpstats(Data, {'job';'marital';'y'}, 'mean', 'DataVars', 'balance');