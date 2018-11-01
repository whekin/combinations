unit combinations;

interface

uses factorial;

function getCombinations(
    const generalTotality: array of integer;
    generalTotalityLength: integer;
    amountOfSampling: integer): array [,] of integer;

implementation

function getCombinations(
    const generalTotality: array of integer;
    generalTotalityLength: integer;
    amountOfSampling: integer): array [,] of integer;
var 
    outputTotality: array [,] of integer;
    nth, amount, i, j, k: integer;

begin
    amount := fact(generalTotalityLength)
              div (fact(amountOfSampling) * fact(generalTotalityLength - amountOfSampling));
    setLength(outputTotality, amount, amountOfSampling);
    
    for i := 0 to generalTotalityLength - 2 do
    begin
        for j := i to generalTotalityLength - amountOfSampling do
        begin
            for k := 0 to amountOfSampling - 2 do
                totalityOfCombinations[nth, k] := generalTotality[i + k];
            totalityOfCombinations[nth, amountOfSampling - 1] := generalTotality[j + amountOfSampling - 1];
            nth += 1;
        end;
    end;
    
    getCombinations := totalityOfCombinations;
end;

end.