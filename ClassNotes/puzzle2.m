% puzzle2.m

% This creates a puzzle consisting of 4 pieces of an image that are
% scrambled into random positions and rotated at random discrete angles.

close all; clear all; 

% load image, get size, and see original image
load mandrill;
[Nx,Ny] = size(X);
%figure; imagesc(X); colormap(gray);

% truncate image so it is square
N = min([Nx,Ny]);
Xt = X(1:N,1:N);
figure; imagesc(Xt); colormap(gray); axis off; title('Original Image');

% We will cut into 4 square puzzle pieces which can be rotated at 90 degree
% angles

% The pieces are ordered as 
% P1 P3
% P2 P4

% In what we do next this ordering can be put in vector form for convenience as ...
% [top_left bottom_left top_right bottom_right], in this case [P1 P2 P3
% P4]. 

% Let 1,2,3,4 correspond to piece labels. A scrambled image 
% P4 P1
% P2 P3
% Could thus be represented as [4 2 1 3]. 

% randomly scramble the pieces by randomly permuting their order. 
P_perms = perms([1:4]);             % this will generate all the permutations of [1 2 3 4] into a matrix with n! rows.
num_perms = factorial(4);           % this is the number of permutations and should be the number of rows of P_perms
k = randi(num_perms,1);             % generate a random integer between 1 and num_perms
puzzle_order = P_perms(k,:);        % select a puzzle order from the possible permutations using random integer k

% if we define
s_x = [0 0 1 1];    % 0 is for no shift, 1 is for a shift to the rightmost quadrant. Note this will be a shift in the column index.
s_y = [0 1 0 1];    % 0 is for no shift, 1 is for shift to the bottom-most quadrant. Note this will be a shift in the row index.

% then puzzle pieces could be defined by:
% P1 = Xt(1+s_y(1)*N/2:N/2+s_y(1)*N/2,1+s_x(1)*N/2:N/2+s_x(1)*N/2);
% P2 = Xt(1+s_y(2)*N/2:N/2+s_y(2)*N/2,1+s_x(2)*N/2:N/2+s_x(2)*N/2);
% P3 = Xt(1+s_y(3)*N/2:N/2+s_y(3)*N/2,1+s_x(3)*N/2:N/2+s_x(3)*N/2);
% P4 = Xt(1+s_y(4)*N/2:N/2+s_y(4)*N/2,1+s_x(4)*N/2:N/2+s_x(4)*N/2);

% i.e. the s_x ans s_y act as shift operations to select or not select
% given quadrants of the image.

% Then to reorder the image pieces we assign different sectors of the
% puzzle to P1, P2, etc.

% To do this first create new shift operations to select different parts of the image
% based on the randomized puzzle order vector. 
sxr = s_x(puzzle_order);
syr = s_y(puzzle_order);

% So if puzzle_order is [4 2 1 3] then sxr = [1 0 0 1] and syr = [1 1 0 0].

% intermediate puzzle result without rotations:
P1s = Xt(1+syr(1)*N/2:N/2+syr(1)*N/2,1+sxr(1)*N/2:N/2+sxr(1)*N/2);  % this image sector will be placed in the (1,1) position of the scrambled puzzle image
P2s = Xt(1+syr(2)*N/2:N/2+syr(2)*N/2,1+sxr(2)*N/2:N/2+sxr(2)*N/2);  
P3s = Xt(1+syr(3)*N/2:N/2+syr(3)*N/2,1+sxr(3)*N/2:N/2+sxr(3)*N/2);
P4s = Xt(1+syr(4)*N/2:N/2+syr(4)*N/2,1+sxr(4)*N/2:N/2+sxr(4)*N/2);

Puz_i = [P1s P3s; P2s P4s];

% If puzzle_order = [4 2 1 3] then Puz_i should be equal to [P4 P1; P2 P3].

% Next generate random rotations of the image:
% Possible rotations are 0, 90, 180, and 270 degrees. 
rotvec = randi(4,[1,4])-1; % vector of random discrete rotations: one element for each piece P1 P2 P3 and P4.

% generate rotations
P1r = rot90(P1s,rotvec(1)); 
P2r = rot90(P2s,rotvec(2));
P3r = rot90(P3s,rotvec(3));
P4r = rot90(P4s,rotvec(4));

% Plot the image
Puz = [P1r P3r; P2r P4r];
figure; imagesc(Puz); colormap(gray); axis off; title('Puzzle');

