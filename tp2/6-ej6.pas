program ej5;

procedure par_mas_alto;

var
  n,mayor:integer;

begin
  mayor:= -1;
  writeln('Ingrese un numero: ');
  readln(n);
  while n >= 0 do begin
    if (n mod 2 = 0) and (mayor < n) then
      mayor:= n;
    writeln('Ingrese un numero: ');
    readln(n);
  end;
  writeln('el valor par mas alto fue: ',mayor);
end;

begin
  par_mas_alto;
  end.
