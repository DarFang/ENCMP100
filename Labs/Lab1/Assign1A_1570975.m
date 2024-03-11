%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 1A
% Name: Darius Fang
% CCID: dfang1
% U of A ID: 1570975
%
% Acknowledgements: 
% I collaborated with David Huang
%
% Description: 
% This program will show some basic matrix manipulations.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

A=[15,99;3,-2];%Matrix A
B=[2,3;-4,11];%Matrix B
row2 = A(2,:);%Row 2 of Matrix A
col1 = B(:,1);%Column 1 of Matrix B
SumAB=A+B;%Adds both Matrices together
multAB=A.*B;%Muliplies the array
multMatrixAB=A*B;%Muliplies Matrix of A to B
multMatrixBA=B*A;%Muliplies Matrix of B to A

disp('Maxtrix A:');%displays stuff
disp(A);%displays called variable

disp('Maxtrix B:');
disp(B);

disp('Row 2 in matrix A');
disp(A(2,:));%built in function that add all columns in Matrix A
%note that you don't need an actual variable

disp('Column 1 in matrix B');
disp(col1);

disp('Sum of matrix A');
disp(sumA);

disp('Adding matrices A and B');
disp(SumAB);

disp('Array multiplication of A and B');
disp(multAB);

disp('Matrix multiplication of A and B');
disp(multMatrixAB);

disp('Matrix multiplication of B and A');
disp(multMatrixBA);