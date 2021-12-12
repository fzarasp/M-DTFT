function [output , time_index] =  convolution(input1 , input2 , index1 , index2)
n = max(index1(2) , index2(2));
input1 = [zeros(1 , index1(1) - 1 ) input1 zeros(1 , n - index1(2) )];
input2 = [zeros(1 , index2(1) - 1 ) input2 zeros(1 , n - index2(2) )];
output = conv(input1 , input2);
[f , l] = find_first_last_zero(output);
time_index = [f l];
% inp1 = input1;
% inp2 = input2;
output = output(time_index(1) : time_index(2));
end