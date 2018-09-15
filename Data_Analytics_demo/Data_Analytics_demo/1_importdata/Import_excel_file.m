%% Import data example
file_path = 'Housing.xlsx';

%% Import excel file with 'xlsread'
[num, txt, raw] = xlsread(file_path);

%% Import excel file to table array
Data = readtable(file_path);
