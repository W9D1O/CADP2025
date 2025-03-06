program ej1;

var
    a,b:integer;
begin
    writeln('Ingrese un valor: ');
    readln(a);
    writeln('Ingrese el ultimo valor: ');
    readln(b);
    if a > b then
        writeln('El primer valor ingresado fue el mayor: ',a)
    else
        if a < b then
            writeln('El segundo valor ingresado fue el mayor: 'b)
        else
            writeln('Los valores ingresados son iguales.');
end.
