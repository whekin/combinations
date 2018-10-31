program combinations;
const
    generalTotalityLength: integer = 4;
    amountOfSampling: integer = 2;
var
    generalTotality: array [1..generalTotalityLength] of integer;
    i, j, k: integer;
begin
    for i := 1 to generalTotalityLength do
        read(generalTotality[i]);
    
    for i := 1 to generalTotalityLength - 1 do
    begin
        for j := i to generalTotalityLength - amountOfSampling + 1 do
        begin
            for k := 0 to amountOfSampling - 2 do
                write(generalTotality[i + k]);
            write(generalTotality[j + amountOfSampling - 1]);
            writeln;
        end;
    end;
end.