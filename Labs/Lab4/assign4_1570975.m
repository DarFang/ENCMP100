%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 4
% Name: Darius Fang
% CCID: dfang1
% U of A ID: 1570975
%
% Acknowledgements: 
% I used the template, but wrote my own code
%
% Description:
% This program calculates medal standings for Vancouver Olympics.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [] = assign4_1570975()
clc;clear %clear Workspace
load('olympics.mat');%Load the file
results = zeros(size(countries,1),4);%create an emty result matrix

for i=1:length(countries)
     %Computes each country medals and returns results| Sub-Function 1
     results(i,:) = compute_medals(gold,silver,bronze,countries(i,:));
end

print_country_results(countries,results);%Displays results| Sub-Function 2

print_best_countries(countries,results,1);%Country with most medals| Sub-Function 3A

print_best_countries(countries,results,2);%Country with most Gold medals| Sub-Function 3B

print_best_countries(countries,results,3);%List of Countries with 20 or more medals| Sub-Function 3C

end

function results = compute_medals(gold,silver,bronze,country)
    results=zeros(1,4);%retunes result of one country with medals
    for index= 1:3%index of results
        number=0;
        switch index
            case 1%gold medals
                medal=gold;
            case 2%silver medals
                medal=silver;
            case 3%bronze medals
                medal= bronze;
        end
        
        for i=1:length(medal)
            if country==medal(i,:)%country code==country code??
                number=number+1;%Add one
            end
        end
        
        results(index) = number;%Determes final result for each 
    end
    results(4)=sum(results);%Total count for medals
end

function print_country_results(countries,results)
    fprintf('Country Gold Silver Bronze Total\n')%Top header
    for i=1:length(countries)
        if countries(i,:)~='XXX'
            fprintf('%7s %4d %6d %6d %5d \n',countries(i,:), results(i,:));%Displays each result
        end
    end
end

function print_best_countries(countries,results,selection) 
    switch selection%3 cases
        case 1%Most metals, 4 is total metals
            MostMedals=results(1,4);%First country
            index=1;%Tells you which country
            for i=2:length(countries)
                if results(i,4)>MostMedals & countries(i,:)~='XXX'%Current country has more metals
                    MostMedals=results(i,4);
                    index=i;
                end
            end
            
            fprintf('Countries with the most medals: %s\n',countries(index,:));
        case 2%Most gold metals (Look at line 67-76 for details, 1 is total gold metals
            MostGold=results(1,1);
            index=1;
            for i=2:length(countries)
                if results(i,1)>MostGold & countries(i,:)~='XXX'
                    MostGold=results(i,1);
                    index=i;
                end
            end
            
            fprintf('Countries with the most gold medals: %s\n',countries(index,:));
        case 3%Countries with at least 20 medals
            fprintf('Countries with at least 20 medals: ');
            for i=1:length(countries)
                if results(i,4)>=20 & countries(i,:)~='XXX'%Total metals>=20?
                fprintf('%s ',countries(i,:));% list it
                end
            end
            
    end
end


