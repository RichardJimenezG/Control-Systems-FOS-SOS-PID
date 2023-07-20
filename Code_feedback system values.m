%Here is included the values for all resistors available in the laboratory
resistor_available = [10, 22, 33, 100, 220, 330, 470, 680, 1000, 2200, 4700, 10000, 22000, 47000, 100000, 1000000];
valid_combinations = [];

% For loop to test the values
for i = 1:length(resistor_available)
    for j = 1:length(resistor_available)
        R1 = resistor_values(i);
        R2 = resistor_values(j);
        
        %It checks the conditions for Underdamped system
        if (R2/(2*sqrt(R1/R2)) < 1) && (4*R1 > R2)
            valid_combinations = [valid_combinations; R1, R2];
        end
    end
end
% Prints the results
disp('Valid combinations (R1, R2):');
disp(valid_combinations);