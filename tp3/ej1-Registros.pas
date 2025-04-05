program ej1-Registros;
type
str20 = string[20];
alumno = record
codigo : integer;
nombre : str20;
promedio : real;
end;

procedure leer(var alu : alumno);
begin
writeln('Ingrese el código del alumno');
read(alu.codigo);
if (alu.codigo <> 0) then begin
writeln('Ingrese el nombre del alumno'); read(alu.nombre);
writeln('Ingrese el promedio del alumno'); read(alu.promedio);
end;
end;

procedure mayor_prom(var p1:real;ap:real;var n1:str20;nom:str20);

begin
  if ap > p1 then begin
    n1:= nom;
    p1:=ap;
  end;
end;

{ declaración de variables del programa principal }
var
a : alumno;
cant_alu:integer;
nom:str20;
m_prom:real
{ cuerpo del programa principal }
begin
  cant_alu:=0;
  a_prom:= 0;
  leer(a);
  while(a.codigo <> 0) do begin
    cant_alu:= cant:=cant_alu + 1;
    mayor_prom( m_prom,a.promedio,nom,a.nombre);
    leer(a);
  end;
  writeln('La cantidad de alumnos leidos fue de: ',cant_alu);
  writeln('El alumnos con mejor promedion fue: ',nom);
end.

