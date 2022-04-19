function [ child ] = Crossover( parents )
%CROSSOVER Summary of this function goes here
    
    child = zeros(2,8);
    random = randi([1, 7]);
    %copy parent1 to child1 from index=1 until random index
    child(1,1:random) = parents(1,1:random);
    child(2,1:random) = parents(2,1:random);
    
    counter = random+1;
    for i = random+1:8
        % ismember finds first parameter in second vector
        if ismember(parents(2,i),child(1,1:random)) ~= 1
            child(1,counter) = parents(2,i);
            counter = counter + 1;
        end
    end
    for i = 1:random
        if ismember(parents(2,i),child(1,1:random)) ~= 1
            child(1,counter) = parents(2,i);
            counter = counter + 1;
        end
    end
    
    counter = random+1;
    for i = random+1:8
        if ismember(parents(1,i),child(2,1:random)) ~= 1
            child(2,counter) = parents(1,i);
            counter = counter + 1;
        end
    end
    for i = 1:random
        if ismember(parents(1,i),child(2,1:random)) ~= 1
            child(2,counter) = parents(1,i);
            counter = counter + 1;
        end
    end

end

