
program ej5;

var
    a,x:real;
    cont:integer;
begin
    writeln('Ingrese un numero: ');
    readln(a);
    x:= a;
    cont:= 0;
    while (a <> x * 2) and (cont < 10) do begin
        writeln('Ingrese un numero: ');
        readln(a);
        cont:= cont + 1;
        end;
    writeln(cont);
end.
