program ej1;

var
    n,i,suma:integer;

begin
    suma := 0;
    for i := 0 to 9 do begin
       writeln('Ingrese un valor: ');
       readln(n);
       suma := suma + n;
    end;
    writeln('La suma de los numeros leidos es de: ',suma);
end.
