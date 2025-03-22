program ej12;

const
  PRECIO = 320;

{Calcula el rendimeiento esperado según la zona}
function rendimiento(cant_ha,tipo:integer):real;

var
  retorno:real;
begin
  if tipo = 1 then
    retorno:= cant_ha * 6 * precio
  else
    if tipo = 2 then
    retorno:= cant_ha * 2.6 * precio
    else
      retorno:= cant_ha * 1.4 * precio;
    rendimiento:= retorno;
end;

procedure leer_datos(var localidad:string;var cant_ha,tipo:integer);

begin
  writeln('Ingrese localidad: ');
  readln(localidad);
  writeln('Ingrese cantidad de hectarias sembradas');
  readln(cant_ha);
  writeln('Ingrese tipo de siembra (1,2 o 3): ');
  readln(tipo);
  while (tipo < 1) or (tipo > 3) do begin
    writeln('ERROR: Opcion no valida.');
    writeln('Presione (1) para zona fertil, (2) para zona estandar o (3) para zona arida.');
    readln(tipo);
  end;
end;

{Suma la cantidad de campos de tres de febrero con un rendimiento mayor a 10000}
procedure tres_de_febrero(localidad:string;rendi:real;var cant_tres:integer);

begin

  if (localidad = 'tres de febrero') and (rendi > 10000) then
    cant_tres:= cant_tres + 1;
end;

{Guarda la localidad con mayor dendimiento}
procedure mayor(localidad:string;var l_mayor:string;rendi:real;var r_mayor:real);

begin
  if rendi > r_mayor then begin
    r_mayor:= rendi;
    l_mayor:= localidad;
  end;
end;

{Guarla la localidad con menor rendimiento}
procedure menor(localidad:string;var l_menor:string;rendi:real;var r_menor:real);

begin
  if rendi < r_menor then begin
    r_menor:= rendi;
    l_menor:= localidad;
  end;
end;

{Calcula el rendimiento promedio}
function promedio(cant_campos:integer;acu:real):real;

begin
  promedio:= acu / cant_campos;
end;

var
  localidad,local_mayor,local_menor:string;
  cant_campos,cant_ha,tipo,cant_tres:integer;
  acu,rendi,rendi_mayor,rendi_menor,prom:real;

  begin
    repeat
      cant_tres:= 0;
      rendi_mayor:= -1;
      rendi_menor:= 9999999;
      cant_campos:= 0; 
      acu:= 0;
      leer_datos(localidad,cant_ha,tipo);
      rendi:= rendimiento(cant_ha,tipo);
      tres_de_febrero(localidad,rendi,cant_tres);
      mayor(localidad,local_mayor,rendi ,rendi_mayor);
      menor(localidad,local_menor,rendi,rendi_menor);
      cant_campos:= cant_campos + 1;
      acu:= acu + rendi;
      until (cant_ha = 900) and (localidad = 'saladillo');
      prom:= promedio(cant_campos,acu);
      writeln('Catidad de campos de la localidad Tres de Frebrero con rendiemiento mayor a 10000: ',cant_tres);
      writeln('La localidad con mayor dendimento fue: ',rendi_mayor:4:2);
      writeln('La localidad con menor rendimiento fue: ',rendi_menor:4:2);
      writeln('El rendimiento promedio es: ',prom:4:2);
    end.
