unit factorial;
interface
function fact(number: integer): integer;

implementation
function fact(number: integer): integer;
begin
    if number = 1 then
        fact := 1
    else
        fact := number * fact(number - 1);
end;

end.