% F5 to  quick run code
% Best practice, start new script with close all; clear all; and clc;

close all; 
clear all;
clc;

% ; are not required, just determines if variables are printed to command
% window (; = no print)

% type help ___; to find out what a function does in the command window
% ex. type help clc; and enter

%setting up variables
%everything is automatically a double, dont need to say int or whatever
%Matlab is case sensitive with variables, ex. Var and var
var = 5;
Var = 4

x = 5
val1 = 0.89;
num_attend = 48;

%vectors
x1 = [1 2 3 4]; % spaces or , sep rows
x2 = [1, 2, 3, 4];
x3 = [1;2;3]; %; seperates columns

y1 = linspace(1, 20, 200); %(start, stop, #elements) or start:step sz: stop;
y2 = 0:0.01:2;

Primes = [1,2,3,5,7]
Even_nums = [2;4;6;8;10];
x_axis = linspace(1, 50, 50)
y_axis = 0.5: 0.5: 25;

z1 = zeros(5,1);

%matrix (if less than 10 elements, workspace shows values, if not, just
%shows dimensions)
mat = [1 2; 3 4];
mat1 = [x1;x2]

my_mat = [1 2 3; 1 2 3; 1 2 3]
Matrix1 = [Primes; Primes]

%vectors need to be the same size to do math and inner dimensions need to
%agree for multiplication

%vector operations
z2 = x1 + x2;
z4 = 4 * x1
xt = mat' % ' means transpose

z5 = x1.*x2 % . in front means element wise math instead of matrix math

Primes2 = Primes * 2
vector1 = Primes + Primes2
Primes_col = Primes'
vector2 = Primes_col * Primes
vector3 = Primes./Primes2

% builtin functions. Matlab uses radians by default. some functions inclue
% cos() cosd() sin() tand() etc. sqrt(), abs(), log() (aka ln), log10()

mat_sin = sin(mat) %in radians bc not sind()

log10P = log10(Primes)
SqX = sqrt(x_axis)
trig1 = sin(y_axis) % assume y_axis is in radians

% using our own function
[Bavg Bstd] = stat1(x1)

%saving and loading data. Stor in .at files
%save('filename.mat','var1','var2'); can list any variables you want but if
%you dont list any vars theyll all be saved
%can do an operation in the command window and assign them to a variable
%name, they appear in the workspace but will clear if clear all is at the
%top

load('x.mat'); 
%implement x_axis2 = x_axis*5; save('x.mat','x_axis2');
%check that x_axis 2 is in workspace and x.mat is the current folder fil
%listing. Rerun code, check x_axis2 is not in workspace. Implement load.
%Rerun code and check x_axis2 is in workspace

% importing data files, csvread, importdada, dlmread, textscan...

% Importing Data
Data = importdata('00.txt'); %creates struct
Freq = Data.data(:,1); %pull out first column and store in var
RCS = Data.data(:,2); %pull out second col and stor in var

%plotting
figure; %starts new plotting window. best practice thing
%plot(Primes, Primes2)
%figure;
%plot(y_axis, x_axis)
%figure;
plot(Freq, RCS)

%when graph opens up, use property editor to edit the graph manually
%automatic commands, xlabel(' '); ylabel(' '); title(' '); xlim([x y]);
%plot(x,y,'(color first letter)'); to change color plot(x,y':'); to change
%plot style (; is dotted -- is dashed line * is star points)

plot(Freq,RCS, 'linewidth');
xlabel('boredom');
ylabel('suciness');
title('rate of sauciness based on boredom');
xlim([2 5]);
% hold on command and then plot more stuff doesnt overwrite graphs but
% graphs them on each other
%legend('plot 1', 'plot2'); to add legend