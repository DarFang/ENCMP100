work_time = [7.5 8 8 8 6.5; 11 8.5 2.5 2.5 8; 8 8 11 11.5 8];
work_time_size = size(work_time);
counts = zeros(1, 3);
for i = 1:work_time_size(1)
    for j = 1:work_time_size(2)
        if work_time(i, j) < 8
            counts(1) = counts(1) + 1;
        elseif work_time(i, j) == 8
            counts(2) = counts(2) + 1;
        else      % work_time(i, j) > 8
            counts(3) = counts(3) + 1;
        end
    end
end
if sum(counts) == work_time_size(1)*work_time_size(2)
    fprintf('All employees and days are accounted for');
else
    fprintf('Some employees and days are not accounted for');
end
fprintf('\n<8: %d\n=8: %d\n>8: %d\n', counts);