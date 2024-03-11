%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 1C
% Name: Darius Fang
% CCID: dfang1
% U of A ID: 1570975
%
% Acknowledgements: 
% Textbook, and assignment
%
% Description: 
% This program will show how to plot using vectors as x,y, and y1
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

vi=input('Enter the initial velocity of the ball: ');%initial velocity
hi=input('Enter the initial height of the ball: ');%initial height

x=0:1:10;%x variable a vector
h= -9.81/2*x.^2+vi*x+hi; %finding variables for height create a vector
%note that exponent has to be '.^'
v= -9.81*x+vi;%finding variables for velocity create a vector

plot(x,h,'-b',x,v,':og');%{-b is solid blue, :og is dotted circle green
%first is x set, second is y set, custom
title('Plot of height and velocity vs time');%makes a title
xlabel ('Time (s)');%x axis label
ylabel('Height (m) and Velocity(m/s');%y axis label
grid on;
legend('Height', 'Velocity');%('1',etc.) make it infinite