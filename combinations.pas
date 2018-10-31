program combinations;
const
    generalTotalityLength: integer = 4;
    amountOfSampling: integer = 2;
var
    generalTotality: array [0..generalTotalityLength - 1] of integer;
    i, j, k: integer;
begin
    for i := 0 to generalTotalityLength - 1 do
        read(generalTotality[i]);
    
    for i := 0 to generalTotalityLength - 2 do
    begin
        for j := i to generalTotalityLength - amountOfSampling do
        begin
            for k := 0 to amountOfSampling - 2 do
                write(generalTotality[i + k]);
            write(generalTotality[j + amountOfSampling - 1]);
            writeln;
        end;
    end;
end.