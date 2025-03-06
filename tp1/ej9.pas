program ej9;

var
    resul,num:integer;
    c:char;

begin
    resul:= 0;
    writeln('Ingrese operador "+" o "-".');
    readln(c);
    if(c <> '+') and (c <> '-')then begin
        writeln('Error: El caracter ingresado no corresponde a un operador "',c,'".');
        num:= 0;
        end
    else begin
        writeln('Ingrese un valor: ');
        readln(num);
    end;
    while num <> 0 do begin
        if(c = '+')then
           resul:= resul + num
        else
            resul:= resul - num;
        writeln('Ingrese un valor: ');
        readln(num);
       end; 
    if(c = '+') and (c = '-')then
    writeln('El resultado de la operacion es: ',resul);
end.
