% puzzle_jumpstart.m

% header here

close all; clear all; 

% generate square puzzle by calling the m-file puzzle.m. It will be loaded as matrix Puz.
puzzle2;
N = size(Puz,1);

% dialog box for piece reordering
% Note: you are not responsible for understanding this portion of the code,
% but may use it if you wish.
prompt = {'Top Left:','Bottom Left:', 'Top Right:', 'Bottom Right:'};
dlg_title = 'Reordering';
num_lines = 1;
def = {'1','2','3','4'};
values = inputdlg(prompt,dlg_title,num_lines,def);
ordering = [str2num(values{1}) str2num(values{2}) str2num(values{3}) str2num(values{4})]; % create a vector of puzzle piece ordering. We must convert strings in the
% cell array to numerical values


% Shift puzzle pieces and show intermediate result:
% Enter your code here
P(:,:,1)=Puz(1:N/2, 1:N/2);
P(:,:,2)=Puz(N/2+1:N, 1:N/2);
P(:,:,3)=Puz(1:N/2, N/2+1:N);
P(:,:,4)=Puz(N/2+1:N, N/2+1:N);
P1=[P(:,:,ordering(1)),P(:,:,ordering(3));P(:,:,ordering(2)),P(:,:,ordering(4))];
imagesc(P1);


% dialog box for piece rotations
% Note: you are not responsible for understanding this portion of the code,
% but may use it if you wish.
prompt = {'Top Left Rotation:','Bottom Left Rotation:', 'Top Right Rotation:', 'Bottom Right Rotation:'};
dlg_title = 'Rotations: Multiples of 90 degrees, Counterclockwise';
num_lines = 1;
def = {'0','90','180','270'};
values = inputdlg(prompt,dlg_title,num_lines,def);
angles = [str2num(values{1}) str2num(values{2}) str2num(values{3}) str2num(values{4})]; 
P1 = [rot90(P1(1:N/2, 1:N/2),angles(1)/90),rot90(P1(1:N/2, N/2+1:N),angles(3)/90);
    rot90(P1(N/2+1:N, 1:N/2),angles(2)/90) rot90(P1(N/2+1:N, N/2+1:N),angles(4)/90)];
imagesc(P1)
% rotate the pieces according to the user-defined shifts, assemble final
% image and render it:

% Enter your code here





