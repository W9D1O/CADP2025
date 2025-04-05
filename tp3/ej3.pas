program ej3;


const
  fin = 2400;
  UneAlu = 23,435;

type
  escuela = record
    CUE:integer;
    nom:string;
    cant_d:longint;
    cant_a:longint;
    localidad:string;
    end;


procedure leer_datos(var e:escuela);

begin
  writeln('Ingrese Condigo Unico de establecimiento:');
  readln(e.cue);
  writeln('Ingrese nombre del establecimiento: ');
  readln(e.nom);
  writeln('Ingrese la cantidad de docentes: ');
  readln(e.cant_d);
  writeln('Ingrese la cantidad de alumnos: ');
  readln(e.cant_a);
  writeln('Ingrese localidad: ');
  readln(e.localidad);
end;


function doc_alu(doc,alu:integer):real;

begin
  doc_alu:= alu / doc;
end;


{Se queda con los nombres de las dos escuelas y mejor relacion docente-alumno}
procedure mejor_rel(var c1,c2:integer;var m1,m2:real;cue:integer;var n1,n2:string;rel:real;n:string);

begin
  if rel > m1 then begin
    m2:=m1;
    c2:=c1;
    n2:=n1;
    m1:=rel;
    c1:=cue;
    n1:=n;
    end
    else begin
      m2:=rel
      c2:=cue;
      n2:=m;
      end;
end;
{Calcula la cantidad de docentes cada Unealu}

var
  i,cant_esc,cue1,cue2:integer;
  nom1,nom2:string;
  r,esc1,esc2:real
  esc:escuela;
begin
  cant_esc:= 0;
  esc1:=-1;
  esc2:=-1;
  for i:= 1 to fin do begin
    leer_datos(esc); {Lestura de datos}
    rel:=doc_alu(esc.cant_d,esc.cant_a); {Calcula la relacion docente alumno}
    if (rel > UneAlu) and (esc.localidad = 'la plata') then 
      cant_esc:= cant_esc + 1;
    mejor_rel(cue1,cue2,esc1,esc2,esc.cue,nom1,nom2,rel,esc.nom);
    end;
  writeln('Escuelas con relacion > Unesco (La plata)',cant_esc);
  writeln('Mejor relacion: ',cue1,' ',nom1,' ',cue2,' ',nom2);

end.

