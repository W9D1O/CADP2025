program ej5;

type
  auto = Record
    marca:string;
    modelo:string;
    precio:real;
  end;

{Lectura de los datos}
procedure leer(var a:auto);

begin
  writeln('Ingrese manca del vehiculo: ');
  ReadLn(a.marca);
  if (a.marca <> 'zzz') and (a.marca <> 'ZZZ') then begin
  WriteLn('Ingrese modelo del vehiculo: ');
  ReadLn(a.modelo);
  WriteLn('Ingrese precio del vehiculo: ');
  ReadLN(a.precio);
end;

end;

{devuelve la marca y modelos mas caros cada vez que es llamado}
procedure marca_modelo(var marca_c,modelo_c:string;var precio_m:real;a:auto);

begin
  if a.precio > precio_m then begin
    marca_c:= a.marca;
    modelo_c:=a.modelo;
    precio_m:= a.precio;
  end;
end;
{Calcula  promedio}
function promedio(acu:real;cont:integer):real;

begin
  promedio:= acu / cont;
end;


var
  cont:integer;
  a:auto;
  precio,acu:real;
  marca,modelo,aux_mar:string;
begin
  leer(a);
  precio:= -1;
  acu:= 0;
  cont:= 0;
  while(a.marca <> 'zzz') and (a.marca <> 'ZZZ') do begin
    aux_mar:= a.marca;
    while aux_mar = a.marca do begin
      acu:= acu + a.precio; {acumulador para sacar promedio}
      cont:= cont + 1; {Contado para sacar promedio}
      marca_modelo(marca,modelo,precio,a); {Se queda con la marca y el modelo de mayour precio}
      leer(a);
    end;
    WriteLn('El valor promedio de los autos ',aux_mar,' es de: ',promedio(acu,cont):0:2);
    {Se resetean las variables para la proxima iteracion}
    acu:= 0;
    cont:= 0;
  end;
  {Se imprime la marca y modelo mas caron}
  WriteLn('el auto mas caro fue: ',marca,' Modelo: ',modelo);
  end.
