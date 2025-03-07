
program ej1a;

var
    n,i,suma,myr:integer;

begin
    suma := 0;
    myr:= 0;
    for i := 0 to 9 do begin
       writeln('Ingrese un valor: ');
       readln(n);
       if n > 5 then
          myr:= myr + 1;  
       suma := suma + n;
    end;
    writeln('La suma de los numeros leidos es de: ',suma);
    writeln('De los numeros leidos, la catidad mayor a 5 fue: ',myr);
end.
