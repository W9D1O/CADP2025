program ej8;

var
    c:char;
    vf:boolean;

begin
    vf:= true;
    writeln('Ingrese tres vocales (Uno a la vez): ');
    readln(c);
    if(c <> 'a') or (c <> 'e') or (c <> 'i') or (c <> 'o') or (c <> 'u') then
        vf:= false;
    readln(c);
    if(c <> 'a') or (c <> 'e') or (c <> 'i') or (c <> 'o') or (c <> 'u') then
        vf:= false;
    readln(c);
    if(c <> 'a') or (c <> 'e') or (c <> 'i') or (c <> 'o') or (c <> 'u') then
        vf:= false;
    if vf then
        writeln('Los tres caracteres ingresado eran vocales.')
    else
        writeln('Al menos uno de los caracteres ingresados no eran vocales.');

end.
