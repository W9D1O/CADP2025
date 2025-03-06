program ej2;

var
    a:real;
    
begin
    writeln('Ingrese un numero: ');
    if a < 0 then
        writeln('El valor absoluto del numero ingresado es: ',a*-1)
    else
        writeln('El valor absoluto del numero ingresado es: ',a);
end.
