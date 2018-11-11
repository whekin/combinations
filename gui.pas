uses graphABC, parseTest;
var
    data: array [,] of integer;
    dataLen, width, height, titleMarginTop, padding, marginLeft, marginTop, iterationCount, x, y: integer;
    title, iterationCountText: string;
    
procedure render;
begin
    dataLen := length(data) div 2;
    titleMarginTop := 20;
    padding := 25;
    marginLeft := 25;
    marginTop := titleMarginTop + 80;
    
    title := 'Результаты эксперимента';
    iterationCountText := 'Количество итераций: ' + iterationCount;
    
    Font.Size := 18;
    textOut(marginLeft - 5, titleMarginTop, title);
    
    Font.Size := 13;
    textOut(marginLeft - 5, titleMarginTop + 35, iterationCountText);
    
    Font.Size := 15;
    
    width := textWidth('10');
    height := textHeight('10');
    
    for var i := 0 to dataLen - 1 do
    begin
        Font.Color := RGB(22, 27, 32);
        for var j := 0 to 1 do
        begin
            textOut(i * (width + padding) + marginLeft, j * (height + padding) + marginTop, data[i, j]);
            Font.Color := RGB(33, 150, 243);
        end;
    end;
    
    Font.Color := RGB(22, 27, 32);
    
    for var i := 1 to dataLen - 1 do
    begin
        x := marginLeft + i * (width + padding) - padding div 2;
        line(
            x,
            marginTop - 5,
            x,
            marginTop + 2 * height + padding + 5);
    end;
    
    y := marginTop + height + padding div 2;
    
    line(
        marginLeft - 5,
        y,
        marginLeft + (dataLen - 1) * (width + padding) + width + 5,
        y);
end;

procedure update;
begin
    clearWindow();
    textOut(marginLeft, 20, 'Calculating...');
    data := parse(iterationCount);
    clearWindow;
    render();
end;

procedure handleKeyDown(key: integer);
begin
    update();
end;

begin
    setWindowCaption('Эксперимент');
    
    iterationCount := 100;
    data := parse(iterationCount);
    render();
    
    read(iterationCount);
    update();
    
    onKeyDown := handleKeyDown;
end.