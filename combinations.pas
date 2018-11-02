unit combinations;

function calcCombinations(
    const universe: array of integer;
    universeLength: integer;
    sampleSize: integer): array [,] of integer;
var 
    combinationsSet: array [,] of integer;
    nth: integer;

begin        
    for var i := 0 to universeLength - 2 do
        for var j := i to universeLength - sampleSize do
        begin
            setLength(combinationsSet, nth + 1, sampleSize);
            
            for var k := 0 to sampleSize - 2 do
                combinationsSet[nth, k] := universe[i + k];
            combinationsSet[nth, sampleSize - 1] := universe[j + sampleSize - 1];
            nth += 1;
        end;
        
    calcCombinations := combinationsSet;
end;

end.