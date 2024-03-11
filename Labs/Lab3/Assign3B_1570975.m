%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 3B
% Name: Darius Fang
% CCID: dfang1
% UofA ID: 1570975
%
% Acknowledgements: 
% 
%
% Description: 
% This program calculates savings for college education.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

program= input('Select a program: 1. Arts: 2. Science; 3. Engineering: ');
balance=zeros(216);%array for balance
monthCont=40;%added balance each month tarts at 50 in loop
balance(1)=2000;%intital balance
monInterest=1+0.0625/12;%Monthly interest of RESP, balance+balance*6.25%/12
AnInterest=1.07;%cost + cost*7%, Annual Interest for tuition
totalcost=0;

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
        totalcost=cost+totalcost;%counting cost from year 19-22 cost of tuition
    end
end
fprintf('The cost of a 4-year college tuition fee is $%.2f\n',totalcost);

while balance(216)<totalcost
    monthCont=monthCont+10;%Adds $10 every time it loops
    for i=2:216%start does not change, 2 to 216 changes 
        balance(i)=balance(i-1)*monInterest+monthCont;%Counting savings for 216 months
    end
end
fprintf('You will need to save $%.2f each month to reach the goal\n',monthCont);