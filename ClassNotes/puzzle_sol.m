% puzzle_sol.m
% This is a program to solve a puzzle

close all; clear all; clc;

% generate square puzzle by calling the m-file puzzle.m. It will be loaded as matrix Puz.
puzzle2;
N = size(Puz,1);

% get pieces
% Top left piece:
P(:,:,1) = Puz(1:N/2,1:N/2);
% Bottom left piece: 
P(:,:,2) = Puz(N/2+1:N,1:N/2);
% Top right piece:
P(:,:,3) = Puz(1:N/2,N/2+1:N);
% Bottom right piece:
P(:,:,4) = Puz(N/2+1:N,N/2+1:N);

% prompt user for re-ordering
disp('Reorder pieces: ');
disp('Enter piece number a integer between 1 to 4');
ordering(1) = input('Top Left Piece: ');
ordering(2) = input('Bottom Left Piece: ');
ordering(3) = input('Top Right Piece: ');
ordering(4) = input('Bottom Right Piece: ');

% Shift puzzle pieces and show intermediate result:
PI = [P(:,:,ordering(1)) P(:,:,ordering(3)); P(:,:,ordering(2)) P(:,:,ordering(4))];
imagesc(PI); colormap(gray); axis off; 

% rotate the pieces according to the user-defined shifts, assemble final
% image and render it:
disp('Enter counter-clockwise rotations of 0, 90, 180, or 270 degrees'); 
angles(1) = input('Top Left: ');
angles(2) = input('Bottom Left: ');
angles(3) = input('Top Right: ');
angles(4) = input('Bottom Right: ');

% Rotate pieces
% Top Left
PF1 = rot90(PI(1:N/2,1:N/2),angles(1)/90);
% Bottom Left:
PF2 = rot90(PI(N/2+1:N,1:N/2),angles(2)/90);
% Top Right:
PF3 = rot90(PI(1:N/2,N/2+1:N),angles(3)/90);
% Bottom Right: 
PF4 = rot90(PI(N/2+1:N,N/2+1:N),angles(4)/90);

%
PF = [PF1 PF3; PF2 PF4];
figure; imagesc(PF); colormap(gray); 







