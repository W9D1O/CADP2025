program ej8;

procedure par_impar(n:longint;var sump,cant_i:integer);

var
  dig:integer;
begin
  while n <> 0 do begin
    dig:= n mod 10;
    n:= n div 10;
    if dig mod 2 = 0 then
      sump:= sump + dig {Si es par va a sumar el digito}
    else
      cant_i:= cant_i + 1; {En caso contradio suma uno a la cantidad de digito impar}
  end;
end;

var
  n:longint;
  sum,cant:integer;
begin
  sum:= 0;
  cant:= 0;
  writeln('Ingrese un numero: ');
  readln(n);
  while n <> 123456 do begin
    par_impar(n,sum,cant);
    writeln('Los digitos pares suman una cantidad de: ',sum);
    writeln('La cantidad de digitos impares es de: ',cant);
    sum:=0;
    cant:= 0;
    writeln('Ingrese un numero: ');
    readln(n);
  end;
end.
