program ej4;

var
    a,x:real;

begin
    writeln('Ingrese un numero: ');
    readln(a);
    x:= a;
    while a <> x * 2 do begin
        writeln('Ingrese un numero: ');
        readln(a);
        end;
end.
