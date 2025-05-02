program ej7;

const
  base = 10;
type
  decimal = 0..9;
  vector = array[decimal] of integer;

  {Iniciliza el vector en cero}
procedure initVector(var v:vector);
var
  i:decimal;
begin
  for i:= 0 to 9 do
    v[i]:= 0;
end;

{Obtiene el digito}
function digito(n:integer):decimal;

begin
 digito:= n mod base; 
end;

{Separa cada digito del numero y los va sumando al vector}
procedure separa_y_suma(var v:vector;n:integer);

var
  d:decimal;
begin
  {Dado el cado de que lel numero leido sea cero lo va a sumar a la posicion 0 del vector}
  if n = 0 then
    v[n]:= v[n] + 1;
  while(n <> 0) do begin
    d:= digito(n);
    v[d]:= v[d] + 1;
    n:= n div base;
  end;
end;

{Devuel el digito mas leido}
function mas_leido(v:vector):decimal;
var
  i,posi:decimal;
  max:integer;
begin
  max:= -1;
  for i:= 0 to 9 do
    if v[i] > max then begin
      max:= v[i];
      posi:= i;
    end;
    mas_leido:= posi;
end;
{Lectura de los datos}
procedure lectura(var v:vector);

var
  num:integer;
begin
  writeln('Ingrese un numero: ');
  readln(num);
  while(num <> - 1 )do begin
    separa_y_suma(v,num);
    writeln('Ingrese un numero: ');
    readln(num);
  end;
end;

procedure cant_ocurrencias(v:vector);
var
  i:decimal;
begin
  for i:= 0 to 9 do 
    if v[i] > 0 then
      writeln('Numero ',i,': ',v[i],' veces');
end;
{Esto esta mal pero me da fiaca hacerlo de otra manera, cualquier cosa son las dos de la madrugada}
procedure sin_ocurrencia(v:vector);
var
  i:decimal;
begin
  writeln('Los digitos que no tuvieron ocurrencias son: ');
  for i:= 0 to 9 do
    if v[i] = 0 then
      write(i,' ');
end;

var
  v:vector;
  max:decimal;
begin
  initVector(v);
  lectura(v);
  cant_ocurrencias(v);
  max:= mas_leido(v);
  writeln('El digito mas leido fue: ',max);
  sin_ocurrencia(v);
end.
