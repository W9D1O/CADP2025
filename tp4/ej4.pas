unit ej4;

interface

const
  dimF = 100;
type
  vector = array[1..dimF] of integer;

function posicion(v:vector;x,dimL:integer):integer;

procedure intercambio(var v:vector;x,y,diml:integer);

function sumarVector(v:vector;dimL:integer):integer;

function promedio(v:vector;dimL:integer):real;

function elemento_max(v:vector;dimL:integer):integer;

function elemento_min(v:vector;dimL:integer):integer;

implementation

function posicion(v:vector;x,dimL:integer):integer;

var
  i,posi:integer;
begin
  posi:= -1;
  for i:= 1 to dimL do
    if v[i] = x then
      posi:= i;
    posicion:=posi;
end;

procedure intercambio(var v:vector;x,y,diml:integer);

var
  aux:integer;
begin
  if(x > 0) and (x <= dimL) and (y >0) and (y <= dimL) and (x <> y) then begin
  aux:=v[x];
  v[x]:= v[y];
  v[y]:=aux;
  end
else begin
  writeln('ERROR: El intercambio no se ha completado.');
  writeln('X o Y estan fuera de rango o son iguales.');
end;

end;

function sumarVector(v:vector;dimL:integer):integer;
var
  i,suma:integer;
begin
  suma := 0;
  for i:= 1 to dimL do
    suma:= suma + v[i];

  sumarVector:= suma;
end;

function promedio(v:vector;dimL:integer):real;
var
  i,acu:integer;
begin
  acu:= 0;
  for i:= 1 to dimf do
   acu:= acu + v[i];
 promedio:= acu / dimL;
end;

function elemento_max(v:vector;dimL:integer):integer;
var
  i,max:integer;
begin
  max := -MAXINT;
  for i := 1 to dimL do
    if v[i] > max then
      max := v[i];
    elemento_max:= max;
end;

function elemento_min(v:vector;dimL:integer):integer;
var
  i,min:integer;
begin
  min:= MAXINT;
  for i := 1 to dimL do
    if v[i] < min then
      min:= v[i];

  elemento_min:= min;

end;

end.
