program ej7;


type
  {Centros de Investigacion de Universidades Nacionales = ciun}
  ciun = record
    nom:string;
    uni:string;
    cant_inv:integer;
    cant_bec:integer;
  end;
{Lee los datos de los centros}
procedure lectura(var datos:ciun);

begin
  writeln('Ingrese cantidad de investigadores: ');
  readln(datos.cant_inv);
  if datos.cant_inv > 0 then begin
    writeln('Ingrese cantidad de becarios: ');
    readln(datos.cant_bec);
    writeln('Ingrese nombre del centro (El nombre debe ingresarse por sus siglas): ');
    readln(datos.nom);
    writeln('Ingrese Universidad a la que pertenece: ');
    readln(datos.uni);
    end;
end;

{Se queda con el nombre de la universidad con mayor cantidad de investigadores}
procedure uni_mayor(cant_inv:integer;var a_inv:integer;uni:string;var nom:string);
begin
  if cant_inv > a_inv then begin
    a_inv:= cant_inv;
    nom:= uni;
    end;
end;
{Se queda con los dos centros que tiene menos cantidades de becarios}
procedure bec_menores(cant:integer;var b1,b2:integer;centro:string;var c1,c2:string);
begin
  if cant < b1 then begin
    b2:=b1;
    c2:=c1;
    b1:= cant;
    c1:=centro;
    end
    else if cant < b2 then begin
      b2:= cant;
      c2:= centro;
      end;
end;
var
 a_uni,c1,c2,nom_mayor:string;
  a_inv,bec_m1,bec_m2,cant_inv,cant_cen:integer;
  d:ciun;
begin
  cant_inv:= 0;
  cant_cen:= 0;
  bec_m1:= -MAXINT;
  bec_m2:= -MAXINT;
  lectura(d);
  while d.cant_inv <> 0 do begin
    a_uni:= d.nom;
    while(a_uni = d.nom) and (d.cant_inv <> 0) do begin
      cant_cen:= cant_cen + 1;
      cant_inv:= cant_inv + d.cant_inv;
      bec_menores(d.cant_bec,bec_m1,bec_m2,d.nom,c1,c2);
      lectura(d);
      end;
    writeln('La cantidad de centros para la universidad ',d.uni,' es de: ',cant_cen);
    cant_cen:= 0; {Se resetea la variable para la proxime iteracion}
    uni_mayor(cant_inv,a_inv,d.uni,nom_mayor);
    cant_inv:= 0; {Se resetea la varilable para la proxima iteracion}
    end;
    writeln('La universidad con mayor cantidad de investigadore fue: ',nom_mayor);
    writeln('Los centros con menores cantidades de becarios fueron: ',bec_m1,' ',bec_m2);

end.


