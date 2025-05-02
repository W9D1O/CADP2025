program ej5;

uses ej4;

procedure cargarVector(var v:vector;var dimL:integer);

var
  n:integer;
begin
  writeln('Ingrese un valor: ');
  readln(n);
  while(n <> 0) and (dimL <= 100) do begin
    dimL:= dimL + 1;
    v[dimL]:= n;
    writeln('Ingrese un valor: ');
    readln(n);
    end;
end;


var
  v:vector;
  dimL:integer;
  min,max:integer;
begin
  dimL:= 0;
  cargarVector(v,dimL);
  max:=elemento_max(v,dimL);
  min:=elemento_min(v,dimL);
  intercambio(v,min,max,diml);
  writeln('El elemento maximo',v[min], ' que se encontraba en la posicion: ',max);
  writeln('Fue intercambiado por el elemento minimo, ',v[max],' que se encontraba en la posicion ',min)

end.
