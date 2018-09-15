%% Low level I/O
% specify the file name and delimiter
file = 'Housing.csv';
delimiter = ',';

% connecting the file with fopen
fid = fopen(file);

% define the format of each column
spec = '%f%f%f%f%s%f%f%f%f%f%f%f%f%f%f%f%f';

% read the data by 'textscan' function
raw = textscan(fid, spec, 'Delimiter', delimiter, 'HeaderLines', 1);
