program ej2;

procedure mul(var a,b,c:longint);

begin
  c:= a*b*c;
end;

procedure sum(var a,b,c:longint);

begin
  c:= a + b + c;
end;

procedure leer_numeros(var a,b:longint);

begin
  writeln('Ingrese un numero: ');
  readln(a);
  writeln('Ingrese otro numero: ');
  readln(b);
end;

var
  x,y,suma,producto:longint;
  i:byte;
begin
  suma:= 0;
  producto:= 1;
 for i:= 1 to 2 do begin
   leer_numeros(x,y);
    sum(x,y,suma);
    mul(x,y,producto);
 end;
  writeln('Suma: ',suma);
  writeln('Multiplicacion: ',producto);
end.
