function [ parents ] = Parent_Selection( population , population_size )
%PARENT_SELECTION Summary of this function goes here
%   Detailed explanation goes here
    group_size = 5;
    parent_size = 2;
    
    fitness = zeros(1,group_size);
    % Select 5 Random member & calculate fitness
    random_nums = randperm(population_size,group_size);
    random_group = zeros(group_size,8);
    for i = 1 : group_size
        random_group(i,:)= population(random_nums(i),:);
        fitness(i) = fitness_function(random_group(i,:));
    end
    
    [~ , index] = sort(fitness);
    parents = random_group(index(1:parent_size),:);

end

