program ej2;

type
  meses = 1..12;
  dias = 1..31;
  fecha = record
    anio:integer;
    mes:meses;
    dia:dias;
  end;

procedure leer_datps(var f:fecha);

begin
  writeln('Ingrese anio de casamiento: ');
  readln(f.anio);
  writeln('Ingrese mes de casamiento(1..12): ');
  readln(f.mes);
  writeln('Ingrese dia del casamiento(1..31.): ');
  readln(f.dia);
end;

var
  f:fecha;
  c_verano,c_diez:integer;
begin
  c_diez:= 0;
  c_verano:= 0;
  leer_datos(f);
  while f.anio <> 2020 do begin
    if f.dia < 11 then
      c_diez:= c_diez + 1;
    if f.mes < 4 then
      c_verano:= c_verano + 1;
  leer_datos(f);
  end;

  end.

