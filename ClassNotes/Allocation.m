%preacllocation example
% thsi shows the timing differences pre-allocating a vector and not

clear all;
disp('Noo pre-Allication')
tic
for n=1:10e6
    x(n)=sqrt(n);
end
toc %tic starts stopwatc, tock stops it

disp('Pre-allocation:');
tic
y=zeros(1,10e6);
for n=1:10e6
    y(n)=sqrt(n);
end
toc
%vectorized speed
disp('Vectorized')
tic
y=sqrt(1:10e6)
toc