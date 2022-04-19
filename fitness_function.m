function [ fitness ] = fitness_function( vector )
%FITNESS_FUNCTION Summary of this function goes here
%   Detailed explanation goes here
    counter=0;
    for i = 1 : 8
        for j = 1 : 8
            if(i ~= j)
                if( (vector(j) == (vector(i)+(j-i))) || (vector(j) == (vector(i)-(j-i))) )
                    counter = counter + 1;
                end
            end
        end
    end
    fitness = counter;
                
end

