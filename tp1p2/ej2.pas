program ej2;

var
    i,n,myr:integer;

begin
    myr:= -32768;
    for i := 0 to 9 do begin
        writeln('Ingrese un valor: ');
        readln(n);
        if n > myr then
            myr:= n;
    end;
    writeln('El valor mas alto leido fue: ',myr);
end.

