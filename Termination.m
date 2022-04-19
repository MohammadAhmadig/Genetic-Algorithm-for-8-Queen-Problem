function [ Index ] = Termination( population )
%TERMINATION Summary of this function goes here
%   Detailed explanation goes here
    Index = 0;
    for i = 1:length(population)
        if fitness_function(population(i,:)) == 0
            Index = i;
            break;
        end
    end
end
