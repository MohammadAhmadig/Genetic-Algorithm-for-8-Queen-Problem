
population_size = 100;
group_size = 5;
parent_size = 2;
population = zeros(population_size,8);
for i = 1:population_size
    population(i,:) = randperm(8,8);
end

Index_flag = 0;
for generation = 1:10000
    % termination condition
    if Index_flag ~= 0
        goal=population(Index_flag,:)
        generation
        % chess figure 
        chess=zeros(8,8);
        for i = 1:8
            for j = 1:8
                if(mod(i+j , 2) == 0)
                    chess(j,i) = 3;
                end
            end
            chess(goal(i),i) = 7;
        end
        imagesc(chess);
        break
    end
    
    parents = Parent_Selection(population , population_size);
    children = Crossover(parents);
    % 80% mutation probability
    if (rand()) >= 0.2
        children = Mutation(children);
    end
    population = Survival_Selection(population, children);
    
    Index_flag = Termination(population);
end
