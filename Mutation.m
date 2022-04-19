function [ children ] = Mutation( children )
%MUTATION Summary of this function goes here
    r1 = randi([1,8]);
    r2 = randi([1,8]);
    % if r1 == r2 
    while(r1 == r2)
        r2 = randi([1,8]);
    end
    % swap
    children(1,[r1 , r2]) = children(1,[r2 , r1]);
    
    r1 = randi([1,8]);
    r2 = randi([1,8]);
    % if r1 == r2 
    while(r1 == r2)
        r2 = randi([1,8]);
    end
    % swap
    children(2,[r1 , r2]) = children(2,[r2 , r1]);

end
