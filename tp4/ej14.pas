program ej14;

const
  MAX_P = 1000;
type
  roles = 1..5;
  Proyectos = 1..MAX_P;
  desarrollador = record
    pais:string;
    cod_proy:integer;
    nom_proy:string;
    rol:roles;
    horas:integer;
  end;
  TRoles = array[roles]of real;
  TArqui = array[Proyectos]of integer;
  TMontos = array[Proyectos]of real;
procedure cargar_vector(var vh:TRoles);
begin
  vh[1]:=35.2;
  vh[2]:=27.45;
  vh[3]:=31.03;
  vh[4]:=44.28;
  vh[5]:=39.87;
end;

procedure init_vec(var v:TArqui);
var
  i:Proyectos;
begin
  for i:= 1 to MAX_P do
    v[i]:= 0;
end;

procedure init_montos(var m:TMontos);
var
  i:Proyectos;
begin
  for i:= 1 to MAX_P do
    m[i]:= 0;
end;
procedure leer_datos(var datos:Desarrollador);
begin
  writeln('Ingrese pais de origen del desarrollador: ');
  readln(datos.pais);
  writeln('Ingrese el codigo de proyecto donde esta trabajando el desarrollador: ');
  readln(datos.cod_proy);
  if(datos.cod_proy <> -1)then begin
  writeln('Ingrese el nombre del proyecto en el que participo: ');
  readln(datos.nom_proy);
  writeln('Ingrese el rol ocupado por el desarrollador: ');
  readln(datos.rol);
  writeln('Ingrese las horas trabajadas por el desarrollador: ');
  readln(datos.horas);
end;
end;

procedure sumar_montos(val_hora:real;cant_horas:integer;var acu:real);

begin
  acu:= acu + val_hora*cant_horas;
end;


function cod_menor_monto(m:TMontos):integer;
var
  i:Proyectos;
  mm:real;
  num:integer;
begin
  mm:= MAXINT;
  for i:= 1 to MAX_P do
    if m[i] < mm then
      num:= i;
    cod_menor_monto:= num;
end;

var
  vh:TRoles;
  montoARG:real;
  cantH:integer;
  cont:TArqui;
  t:Desarrollador;
  m:TMontos;
  i:Proyectos;
begin
  montoARG:= 0;
  cantH:=0;
  cargar_vector(vh); // ASIGNA LOS VALORES DE LA HORA SEGÚN ROLES
  init_vec(cont); // INICIALIZA EL VECTOR CONTADOR CON 0
  leer_datos(t);
  while(t.cod_proy <> -1)do begin
    if(t.pais = 'Argentina')then
      montoARG:= montoARG + vh[t.rol];
    if(t.rol = 3)then
      cantH:= cantH + t.horas;
    sumar_montos(vh[t.rol],t.horas,m[t.cod_proy]);
    if(t.rol = 4)then
      cont[t.cod_proy]:= cont[t.cod_proy] + 1;
  end;
  writeln('El monto total invertido aen desarrolladores de procedencia Argentina es de: ',montoARG:0:2);
  writeln('La cantidad de horas trabajadaws pro los Administradores de Bases de Datos es de: ',cantH);
  writeln('El codigo de Proyecto que obtuvo la menor ainversion fue: ',cod_menor_monto(m));
  for i:= 1 to MAX_P do
    writeln('La cantidad de Arquitecto de Software del Proyecto: ',i,' es de: ',cont[i]);
end.
