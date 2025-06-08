program ej13;

const
  LUGARES = 100;
  ANIO_I = 1975;
  ANIO_F = 2025;
type
  IPCC = record
    prom_a:real;
    anio:integer;
  end;
  arr = array[1..LUGARES]of IPCC;

procedure carga(var v:arr);
var
  i,j:integer;
begin
  for i:= ANIO_I to ANIO_F do 
    for j:= 1 to LUGARES do begin
      writeln('El anio que esta siendo procesado es: ',i);
      writeln('   Elemento ( ',j,' de: ',LUGARES,')');
      writeln('Ingrese el promedio: ');
      readln(v[j].prom_a);
      v[j].anio:= i;

    end;
end;

function prom_mundial(acu:real):real;

begin
  prom_mundial:= acu / LUGARES;
end;

procedure prom_mayor(anio:integer;prom:real;var mn:integer;mp:real);

begin
 if (prom > mp) then begin
   mn:= anio;
   mp:= prom;
 end;

end;

procedure procesar(v:arr;var anio_mp,apnm:integer;var prom_m,mt:real;acu:real);
var
  i,j:integer;
begin
  for i:= ANIO_I to ANIO_F do begin
    for j:= 1 to LUGARES do begin
      acu:= acu + v[j].prom_a;
      prom_mayor(i,v[j].prom_a,anio_mp,prom_m);
    end;
    prom_mayor(i,prom_mundial(acu),apnm,mt);
    acu:= 0;
  end;
end;

var
  v:arr;
  anio_mp,apnm:integer;
  prom_m,mt,acu:real;
begin
  mt:= 0;
  prom_m:=0;
  acu:= 0;
  carga(v)
  procesar(v,anio_mp,apnm,prom_m,mt,acu);
  writeln('el anio con mayor temperatura a nivel mundial fue: ',apnm);
  writeln('El anio con mayor temperatura detectada fue: ',anio_mp);
  end.
