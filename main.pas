uses combinations;

const
    universeLength = 4; // max: 12 (for the integer type)
    sampleSize = 2;
    iterationCount = 100;
    
var
    universe: array of integer;
    combinationsSet: array [,] of integer;
    combinationsSetLength, numberRandomlyCombination, sum: integer;
    
begin
    setLength(universe, universeLength);
    
    for var i := 0 to universeLength - 1 do
        universe[i] := i + 1;
    
    combinationsSet := calcCombinations(universe, universeLength, sampleSize);
    combinationsSetLength := length(combinationsSet);

    for var i := 0 to iterationCount - 1 do
    begin
        sum := 0;
        numberRandomlyCombination := random(combinationsSetLength div sampleSize);
        
        for var j := 0 to universeLength - 1 do
            sum += universe[j];
            
        for var j := 0 to sampleSize - 1 do
            sum += combinationsSet[numberRandomlyCombination, j];
        writeln(i + 1, ': ', sum);
    end;
end.