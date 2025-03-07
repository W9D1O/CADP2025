
program ej2a;

var
    i,n,o,myr:integer;

begin
    myr:= -32768;
    for i := 0 to 9 do begin
        writeln('Ingrese un valor: ');
        readln(n);
        if n > myr then begin
            myr:= n;
            o:= i;
            end;
    end;
    writeln('El valor mas alto leido fue: ',myr);
    writeln('En la posicion de lectura: ',o);
end.

