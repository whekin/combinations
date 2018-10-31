program combinations;
//ToDo: задается 4 числа, программа выводит все сочетания из двух элементов
uses factorial; // fact

const
    generalTotalityLength: integer = 4;
var
    generalTotality: array [0..generalTotalityLength - 1] of integer;
    quantity: integer;
begin
    quantity := fact(generalTotalityLength)
                div (fact(2) * fact(generalTotalityLength - 2));
    for var i := 0 to generalTotalityLength - 1 do
        read(generalTotality[i]);
    
    for var i := 0 to generalTotalityLength - 2 do
    begin
        for var j := i to generalTotalityLength - 1 do
            writeln(generalTotality[i], generalTotality[j]);
    end;
end.