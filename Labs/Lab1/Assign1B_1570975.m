%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 1B
% Name: Darius Fang
% CCID: dfang1
% U of A ID: 1570975
%
% Acknowledgements: 
% I collaborated with David Huang
%
% Description: 
% This program will show some basic input
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



disp('ENCMP100 Final Mark Calculator');%initial description
disp('Please enter the following information');

A(1)=input('Assignment #1:');%asks input for each line creats a vector
A(2)=input('Assignment #2:');
A(3)=input('Assignment #3:');
A(4)=input('Assignment #4:');
A(5)=input('Assignment #5:');
A(6)=input('Mid term Exam:');
A(7)=input('Final Exam:');%vector is 1x7

Final=(A(1)+A(2)+A(3)+A(4)+A(5))/20+A(6)/4+A(7)/2;
%calculates final percent 25, 25, 50
disp('Your calculated final mark for ENCMP100 is :')%displays mark
disp(double(Final));


