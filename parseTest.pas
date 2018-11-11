unit parseTest;

uses test;

function parse(iterationCount: integer): array [,] of integer;

var
    arr: array of integer;
    res: array [,] of integer;
    count: integer = 1;
    len: integer = 1;
begin
    setLength(arr, iterationCount);
    arr := makeTest(iterationCount);
    sort(arr);
    
    for var i := 1 to iterationCount - 1 do
    begin
        if arr[i] = arr[i - 1] then
        begin
            count += 1;
            setLength(res, len, 2);
            res[len - 1, 0] := arr[i];
            res[len - 1, 1] := count;
        end
        else
        begin
            count := 1;
            len += 1;
        end;
        
    end;
    
    for var i := 0 to length(res) div 2 - 1 do
        res[i, 1] := round(res[i, 1] * 100 / iterationCount);
    
    parse := res;
    
end;

end.