Program ej3;

const
  fin = 200;
  Dfin = 31;
type
  viajes = 1..fin;
  dias = 1..Dfin;
  TViaje = record
    dia:dias;
    monto:real;
    distancia:real;
  end;
  arr = array[viajes]of TViaje;
  Contador = array[dias]of integer;

procedure cargar_vector(var v:arr;var dl:viajes);

begin
  writeln('Ingrese la cantidad de kilometros recorrido durante el viaje: ');
  readln(v[dl].distancia);
  if v[dl].distancia <> 0 then begin
    writeln('Cual fue el dia de viaje(1..31): ');
    readln(v[dl].dia);
    writeln('Cual fue el monto transportado: ');
    readln(v[dl].monto);
  end;
  while(v[dl].distancia <> 0) and (dl < 200) do begin
    dl:= dl + 1;
    writeln('Ingrese la cantidad de kilometros recorrido durante el viaje: ');
    readln(v[dl].distancia);
    if v[dl].distancia <> 0 then begin
      writeln('Cual fue el dia de viaje(1..31): ');
      readln(v[dl].dia);
      writeln('Cual fue el monto transportado: ');
      readln(v[dl].monto);
    end;
  end;
end;

function promedio(acu:real;dl:integer):real;

begin
  promedio:= acu / dl;
end;

{Si mm es menor que la recaudacion que se esta procesando
se queda con la posicion del array Tviajes para que
parartir de esa posicion se pueda informar:
  la adistancia arecorrida y el dia}
procedure menor_recaudacion(var mm:real;monto:real;var posi:integer;i:integer);
begin
  if(monto > mm)then begin
    mm:=monto;
    posi:= i;
  end;
end;

//Se inizializa para servir como contador de viajes diarios
procedure init_cont(var c:contador);
var
  i:dias;
begin
  for i:= 1 to Dfin do
    c[i]:= 0;
end;

procedure eli_cien(var v:arr;dl:integer);
var
  i,j:viajes;
begin
  for i:= 1 to dl do begin
    if(v[i].distancia = 100)then
      for j:= i to dl do
        v[j]:= v[j + 1];
      dl:= dl - 1;
  end;

end;

procedure procesar(v:arr;dl:integer);
var
  i:viajes;
  c:contador;
  acu,mm:real;
  posi:integer;
  j:dias;
begin
  init_cont(c);
  acu:= 0;
  mm:= MAXINT;
  for i:= 1 to dl do begin
    acu:= acu + v[i].monto;
    menor_recaudacion(mm,v[i].monto,posi,i);
    c[v[i].dia]:= c[v[i].dia] + 1;
  end;
  writeln('El comto proamedio transportado fue de: ',promedio(acu,dl):0:2);
  writeln('El dia que se transporto la menor recaudacion fue: ',v[posi].dia);
  writeln('La distancia recurrida ese dia fue: ',v[posi].distancia,' kilometros.');
  {Creo que tenia que usar un corte de control e ingresar todo ordenado por dias
  pero me da paja hacerlo ahora}
  for j:= 1 to Dfin do
    writeln('El dia ',j,' se hicieron: ',c[j],' viajes');
end;

var
  v:arr;
  dl:viajes;
begin
  dl:= 0;
  cargar_vector(v,dl);
  procesar(v,dl);
  eli_cien(v,dl);
  end.
