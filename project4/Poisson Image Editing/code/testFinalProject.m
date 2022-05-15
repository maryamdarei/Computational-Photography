%
% Test code
%
source="/Users/azadehbaghdadi/Desktop/3rd Semester/Computational photography/project4/Data/redb2.jpeg";
target='/Users/azadehbaghdadi/Desktop/3rd Semester/Computational photography/project4/Data/river1.jpeg';
result='result1.jpg';
I1 = imread(source);            % SOURCE IMAGE
I2 = imread(target);        % DESTINATION IMAGE
PIE_Gui(I1,I2,result,1,0);
