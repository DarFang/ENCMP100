table = [14  7  5;  % Canada
          10 13  7;  % Germany
          9  15 13;  % United States
          9   8  6;  % Norway
          6   6  2]; % South Korea

value = sum(table(1,1:2));
total = sum(table(1,:));
dim = size(table);
for i = 1:dim(1)
    if sum(table(i,1:2)) > value
        value = sum(table(i,:));
        total = sum(table(i,:));
    end
end
disp(total);