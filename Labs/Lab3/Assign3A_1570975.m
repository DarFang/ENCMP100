%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 3A
% Name: Darius Fang
% CCID: dfang1
% UofA ID: 1570975 
%
% Acknowledgements: 
% Collabed with David Huang
%
% Description: 
% This program calculates savings for college education.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

program= input('Select a program: 1. Arts: 2. Science; 3. Engineering: ');
balance=zeros(216);%array for balance
monthCont=200;%added balance each month
balance(1)=2000;%intital balance
monInterest=1+0.0625/12;%Monthly interest of RESP, balance+balance*6.25%/12
AnInterest=1.07;%cost + cost*7%, Annual Interest for tuition
totalcost=0;

for i=2:228
    balance(i)=balance(i-1)*monInterest+monthCont;%Counting savings for 216 months
end
fprintf('At the end of 18 years you will have saved $%.2f\n',balance(216));

switch program
    case 1%choose 1
        cost = 5550;
    case 2%choose 2
        cost = 6100;
    case 3%choose 3
        cost = 6550;
end
    
for i=2:22
    cost=cost*AnInterest;%Annual interest for 22 years
    if i>18
        totalcost=cost+totalcost;%counting cost from year 19 to 22
    end
end
costy=ones(19)*totalcost;%Get a vector of plot
fprintf('The cost of a 4-year college tuition fee is $%.2f\n',totalcost);

plot(0:18,balance(1:12:228),0:18,costy)%plot 18 points of savings and line of the required cost

if balance(216)>=costy%Saved enough
    fprintf('Congradulations!!! You have saved enough.\n')
else%Did not save enough
    fprintf('The saving is $%.2f short\n',totalcost-balance(216));
end