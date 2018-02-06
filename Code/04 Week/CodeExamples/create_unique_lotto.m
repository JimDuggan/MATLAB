function [nos] = create_unique_lotto(lower, upper, number)

nos = zeros(1,number);
nos(:) = -1;

index = 1;
while index <= number
    num = randi([lower upper],1,1);
    
    if isempty(find(nos == num)) 
        nos(index) = num;
        index = index+1;
    end
end

nos = sort(nos);

end




