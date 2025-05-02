program ej2-vectores;

const
  cant_datos = 150;

type
  vdatos = array[1..cant_datos]of real;

procedure cargarVector(var v:vdatos;var dimL:integer);

var
  n:real;
begin
  writeln('Ingrese un numero: ');
  readln(n);
  while(n <> 0) and (dimL <= cant_datos) do begin
    dimL:= dimL + 1;
    v[dimL]:= n;
    writeln('Ingrese un numero: ');
    readln(n);
  end;
end;

procedure modificarVectorySumar(var v:vdatos;dimL:integer;n:real;var suma real);

var
  i:integer;
begin
  if dimL = 0 then
    writeln('No se cargo ningun elemento en el array')
  else begin
    for i:= 1 to dimL do begin
      v[i]:= v[i] + n;
      suma:= suma + v[i];
    end;
  end;

end;

var
  datos:vdatos;
  dim:integer;
  num,suma:real;

begin
  dim:=0;
  suma:=0;
  cargarVector(datos,dim);
  writeln('Ingrese un valor a sumar: ');
  readln(num);
  modificarVectorySumar(datos,dim,num,suma);
  writeln('La suma de los valores es: ',suma);
  writeln('Se procesaron: ',dim,' numeros');
end.
