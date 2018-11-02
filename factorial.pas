unit factorial;

{num не должен быть больше 12, иначе произойдет переполнение integer}
function fact(num: integer): integer;
begin
    if num = 1 then
        fact := 1
    else
        fact := num * fact(num - 1);
end;

end.