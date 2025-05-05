
program ej8;

const
  MAX = 400;
  BASE = 10;
  ANIO_ACTUAL = 2025;
type
  digito = 0..9;
  alumno = record
    num_insc:integer;
    dni:longint;
    apellido:string;
    nombre:string;
    anio:integer;
  end;
  vector = array[1..MAX]of alumno;

procedure lectura(var datos:alumno );

begin
  writeln('Ingrese DNI: ');
  readln(datos.dni);
  if(datos.dni <> - 1) then begin
  writeln('Ingrese numero de inscripcion: ');
  readln(datos.num_insc);
  writeln('Ingrese apellid: ');
  readln(datos.apellido);
  writeln('Ingrese nombre: ');
  readln(datos.nombre);
  writeln('Ingrese anio de nacimiento: ');
  readln(datos.anio);
end;

end;

function par(dig:digito):boolean;
begin
  par:= dig mod 2 = 0;
end;

function reducir_digito(num:longint):longint;
begin
  reducir_digito:= num div base;
end;

function extraer_digito(num:longint):digito;
begin
  extraer_digito:= num mod base;
end;

function acu(num:longint):digito;
var
  vf:boolean;
begin
  vf:= true;
  while(vf) and (num <> 0) do begin
    vf:=par(extraer_digito(num));
    num:= reducir_digito(num);
  end;
  if(vf) then
    acu:= 1
  else
    acu:= 0;
end;

function porcentaje(cant_par,dimL:integer):real;

begin
porcentaje:= 100*cant_par / dimL;
end;

function calcular_edad(nacimiento:integer):integer;
begin
  calcular_edad:=ANIO_ACTUAL - nacimiento;
end;

procedure mayores(ape,nom:string;anio:integer;var edad_m1,edad_m2:integer;var ape1,ape2,nom1,nom2:string);
var
  edad:integer;
begin
  edad:= calcular_edad(anio);
  if(edad > edad_m1)then begin
    edad_m2:=edad_m1;
    ape2:=ape1;
    nom2:=nom1;
    edad_m1:= edad;
    ape1:= ape;
    nom1:=nom;
    end
    else if(edad > edad_m2)then begin
      edad_m2:= edad;
      ape2:= ape;
      nom2:= nom;
    end;
end;

procedure cargar_vector(var v:vector;var dimL:integer);
begin
  lectura(v[dimL]);
  while(v[dimL].dni <> -1) and (dimL <= MAX) do begin
    dimL:= dimL + 1;
    lectura(v[dimL]);
    end;
    if (dimL > 1)then
      dimL:= dimL - 1;
end;

procedure imprimir(d:alumno);

begin
  writeln('Nombre ', d.nombre);
  writeln('Apellido ',d.apellido);
  writeln('Anio ',d.anio);
  writeln('DNI ',d.dni);
end;

var
  v:vector;
  nom1,nom2,ape1,ape2:string;
  i,dimL,edad1,edad2,acumulador:integer;
begin
  edad1:= 0;
  edad2:= 0;
  acumulador:= 0;
  dimL:= 1;
  cargar_vector(v,dimL);
  for i:= 1 to dimL do begin
     acumulador:= acumulador + acu(v[i].dni); 
     mayores(v[i].nombre,v[i].apellido,v[i].anio,edad1,edad2,ape1,ape2,nom1,nom2);
     imprimir(v[i]);
   end;
  writeln('Los dos alumnos de mayor edad fueron: ',ape1,' ',nom1,' y ',ape2,' ',nom2); 
  writeln('Il porcentaje de alumnos cuyos DNI tiene solo digitos pares es de: ',porcentaje(acumulador,dimL):0:2);
  end.
