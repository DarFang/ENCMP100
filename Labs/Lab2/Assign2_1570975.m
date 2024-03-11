%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Course: ENCMP 100
% Assignment: 2
% Name: Darius Fang
% CCID: dfang1
% U of A ID: 1570975
%
% Acknowledgements: 
% Myself
%
% Description: 
% This program contains four rules which can be used to crack the 
% Secret code to save Maverick the co-op student
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

code=input('Please enter a code to break: ','s');%inputs 6 digits
if length(code)==6%checks the length of the string
   digits=code-'0';%changes the string into an array of integers
   
   if mod(sum(digits),2)==0%divide and return the remainder==0
       r=digits(1)*digits(2)-digits(3);
       
       if r>=1&&r<=7%checks the range
           switch r %determines day
               case 1 %r==1
                   rescue = 'Monday';
               case 2 %r==2
                   rescue = 'Tuesday';
               case 3 %r==3
                   rescue = 'Wednesday';
               case 4 %r==4
                   rescue = 'Thursday';
               case 5 %r==5
                   rescue = 'Friday';
               case 6 %r==6
                   rescue = 'Saturday';
               case 7 %r==7
                   rescue = 'Sunday';
           end
           
           if mod(digits(4),3)==0%divide by 3 and return remainder==0
               r1=digits(5)-digits(6);%digit 5 -6
               
           else %remainder~=0
               r1=digits(6)-digits(5);%digit6-5
               
           end
               
           if r1>=1 && r1<=7 %checks range
               switch r1 %determines rendezvous point
                   case 1%similar to previous switch
                       Rendezvous='bridge';
                   case 2
                       Rendezvous='library';
                   case 3
                       Rendezvous='river crossing';
                   case 4
                       Rendezvous='airport';
                   case 5
                       Rendezvous='bus terminal';
                   case 6
                       Rendezvous='hopspital';
                   case 7
                       Rendezvous='St.Petes Church';
               end
               %final input if everyithing went through
               fprintf('Rescue on %s at the %s.\n',rescue, Rendezvous);
               
           else %if it is out of range
               disp('Decoy message: Invalid rendezvous point.')
           end
           
       else %if it is out of range
           disp('Decoy message: Invalid rescue day.')
       end
     
   else%remainder~=0
       disp('Decoy message: Sum is odd.');
   end
   
else%length~=6
    disp('Decoy message: Not a six digit number');
    
end