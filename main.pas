uses
    combinations;

const
    generalTotalityLength = 4; // max: 12 (for the integer type)
    amountOfSampling = 2;
    n = 100;
    
var
    generalTotality: array of integer;
    combinations: array [,] of integer;
    combinationsLength: integer;
    numberOfRandomCombination: integer;
    sum: integer;
    i, j: integer;
    
begin
    setLength(generalTotality, generalTotalityLength);
    
    for i := 0 to generalTotalityLength - 1 do
        generalTotality[i] := i + 1;
    
    combinations := getCombinations(generalTotality, generalTotalityLength, amountOfSampling);
    combinationsLength := length(combinations);
    writeln('comb_length: ', combinationsLength / amountOfSampling);
    for i := 0 to n - 1 do
    begin
        sum := 0;
        numberOfRandomCombination := random(combinationsLength div amountOfSampling);
        
        for j := 0 to generalTotalityLength - 1 do
            sum += generalTotality[j];
            
        for j := 0 to amountOfSampling - 1 do
            sum += combinations[numberOfRandomCombination, j];
        writeln(i + 1, ': ', sum);
    end;
end.