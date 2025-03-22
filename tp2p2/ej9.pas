program ej9;

{Guarda los 2 apellidos con numero de inscripcion mas chico}
procedure chico(insc:integer;var num1,num2:integer;ape:string;var apec1,apec2:string);

begin
  if insc < num1 then begin  {chequea si insc es menor a num1 en caso contrario si insc es menor a num2}
    num2:= num1;
    apec2:=apec1;
    num1:=insc;
    apec1:=ape;
    end
    else
      if insc < num2 then begin
        num2:= insc;
        apec2:= ape;
      end;
end;

{Guarda los nombre con numero de inscripcion mas grande}
procedure grande(insc:integer;var num1,num2:integer;nom:string;var nom1,nom2:string);

begin
  if insc > num1 then begin  {Chequea si insc es mayor a num1 caso contrario si es mayor a num2}
    num2:= num1;
    nom2:= nom1;
    num1:= insc;
    nom1:= nom;
    end
    else
      if insc > num2 then begin
        num2:= insc;
        nom2:= nom;
      end;
end;

function par(insc:integer):boolean;

var
  vf:boolean;

begin
  vf:= false;
  if insc mod 2 = 0 then {Todo numero dividido entre 2 con resultado 0 es par}
    vf:= true;
  par:= vf;
end;

{Calcula el porcentaje par del total}
function porcentaje(total,cant_par:integer):real;

begin
  porcentaje:= cant_par * 100 / total;
end;

{Lectura de los datos}
procedure leer_datos(var insc:integer;var ape,nom:string);

begin
  writeln('Ingrese numero de inscripcion: ');
  readln(insc);
  writeln('Ingrese apellido: ');
  readln(ape);
  writeln('Ingrese nombre: ');
  readln(nom);
end;

var
  insc,num_c1,num_c2,num_g1,num_g2,cant_par,total:integer;
  ape,ape_c1,ape_c2,nom,nom_g1,nom_g2:string;
begin
  cant_par:= 0;
  total:= 0;
  num_c1:= MAXINT;
  num_c2:= MAXINT;
  num_g1:= -MAXINT;
  num_g2:= -MAXINT;
  repeat
    leer_datos(insc,ape,nom);
    chico(insc, num_c1,num_c2,ape,ape_c1,ape_c2);
    grande(insc,num_g1,num_g2,nom,nom_g1,nom_g2);
    if par(insc) then
      cant_par:= cant_par + 1;
    total:= total + 1;
    until insc = 1200;
    writeln('Apellidos con numero de insccripcion mas chico: ',ape_c1,' y ',ape_c2);
    writeln('Nombres con numero de insccripcion mas grande: ',nom_g1,' y ',nom_g2);
    writeln('El porcentaje de alumnos con numero de inscripcio par es de: ',porcentaje(total,cant_par):4:2);
  end.
