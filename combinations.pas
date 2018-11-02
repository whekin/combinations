unit combinations;

uses factorial;

function getCombinations(
    const universe: array of integer;
    universeLength: integer;
    sampleSize: integer): array [,] of integer;
var 
    combinationsSet: array [,] of integer;
    nth, numberOfCombinations: integer;

begin
    numberOfCombinations := fact(universeLength)
              div (fact(sampleSize) * fact(universeLength - sampleSize));
              
    setLength(combinationsSet, numberOfCombinations, sampleSize);
    
    for var i := 0 to universeLength - 2 do
        for var j := i to universeLength - sampleSize do
        begin
            for var k := 0 to sampleSize - 2 do
                combinationsSet[nth, k] := universe[i + k];
            combinationsSet[nth, sampleSize - 1] := universe[j + sampleSize - 1];
            nth += 1;
        end;
    
    getCombinations := combinationsSet;
end;

end.