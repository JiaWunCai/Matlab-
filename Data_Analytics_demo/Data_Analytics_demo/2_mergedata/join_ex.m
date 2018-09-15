%% Import two files
% hard to merge with this loading process
% [Close, Close_date, ~] = xlsread('join_demo.xlsx','Close');
% [Rt, Rt_date, ~] = xlsread('join_demo.xlsx','Rt');

%% Import with dataset array
A = readtable('join_ex.xlsx','Sheet','TableA');
B = readtable('join_ex.xlsx','Sheet','TableB');

%% Transfer date to date number
A.Date = datenum(A.Date, 'yyyy/mm/dd PM HH:MM:SS');
B.Date = datenum(B.Date, 'yyyy/mm/dd PM HH:MM:SS');

%% Merge dataset by date with NaN
New1 = outerjoin(A, B, 'Key','Date','MergeKeys',true);
New1.Date = cellstr(datestr(New1.Date));

%% Merge dataset by date without NaN
New2 = innerjoin(A, B, 'Key','Date');
New2.Date = cellstr(datestr(New2.Date));


