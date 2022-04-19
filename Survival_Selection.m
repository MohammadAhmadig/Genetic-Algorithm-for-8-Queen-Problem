function [ result ] = Survival_Selection( population, children )
%SURVIVAL_SELECTION Summary of this function goes here
%   Detailed explanation goes here
    fitness = zeros(1,length(population));
    for i = 1:length(population)
        fitness(i) = fitness_function(population(i,:));
    end
    % increasing sort
    [~ , index] = sort(fitness);
    % the worst vector has the most fitness_function
    population(index(length(index)),:) = children(1,:);
    population(index(length(index)-1),:) = children(2,:);
    result = population;

end

