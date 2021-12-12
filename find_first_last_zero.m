function [first_index , last_index ] = find_first_last_zero(seq)
    % to calculate first and last of non-zero elements
    %for exp x = [0 0 1 2 3 0 0] 
    %first = 3 , last = 5

n = length(seq);
last_index = n;
first_index = 1;

while last_index > 1 
    if seq(last_index) == 0
        last_index = last_index - 1;
    else
        break 
    end
end
while first_index < n 
    if seq(first_index) == 0
        first_index = first_index + 1;
    else
        break 
    end
end
end
