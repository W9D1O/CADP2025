program ej10;

const
  MAX = 300;
  //POR_AUM = 15; {El avamor representa el porcentaje de aumento que recibira el empleado}
type
  vector = array[1..MAX]of real;


procedure cargar_vector(var v:vector;var dimL:integer);
var
  salario:real;
begin
  writeln('Ingrese el salario del empleado: ');
  readln(salario);
  while(salario <> 0) and (dimL <= MAX)do begin
    dimL:= dimL + 1;
    v[i]:= salario;
    writeln('Ingrese el salario del empleado: ');
    readln(salario);
  end;
end;

function calcular_aumento(valor,pro_aum:real):real;
begin
  calcular_aumento:= valor * pro_aum / 100;
end;
{Agrega el aumento y acumula los sueldos}
procedure agregar_aumento(x:real;var v:vector;dimL:integer;var acu:real);
var
  i:integer;
begin
  for i:= 1 to dimL do begin
    v[i]:= v[i] + calcular_aumento(v[i],x);
    acu:= acu + v[i];
  end;
end;

procedure promedio(acu:real;dimL:integer);

begin
  writeln(acu / dimL:0:2);
end;


var
  v:vector;
  dimL:integer;,
  acu,aumento:real;
begin
  acu:= 0;
  dimL:= 0;
  cargar_vector(v,dimL);
  writeln('Ingrese el porcentaje de aumnto: ');
  readln(aumento);
  agregar_aumento(aumento,v,dimL,acu);
  promedio(acu,dimL);
end;
