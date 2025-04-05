program ej8;

var
    c:char;
    vf:boolean;
    n:integer;

begin
    n:= 0;
    vf:= true;
    writeln('Ingrese tres vocales (Uno a la vez): ');
    readln(c);
    while n <= 3 do begin
      n:= n + 1;
      if(c <> 'a') or (c <> 'e') or (c <> 'i') or (c <> 'o') or (c <> 'u') then
        vf:= false;
      writeln('Ingrese tres vocales (Uno a la vez): ');
      readln(c);
    end;
    if vf then
        writeln('Los tres caracteres ingresado eran vocales.')
    else
        writeln('Al menos uno de los caracteres ingresados no era vocal');

end.
