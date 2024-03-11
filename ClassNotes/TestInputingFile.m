
load objweights.mat
y= round(variables);%from the file generated
x= 1:length(y);
plot(x,y,'r*')
xlabel('object #')
ylabel('Weight')
title('Practice Plot')