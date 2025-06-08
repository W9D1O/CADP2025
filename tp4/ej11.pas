program ej11;

const
  CANT_FOTOS = 200;
type
  FOTOS = record
    titulo:string;
    autor:string;
    cant_mg:integer;
    cant_clic:integer;
    cant_comen:integer;
    end; 
  arr = array[1..CANT_FOTOS]of FOTOS;

{Guarda la cantidad mayor de "Me gusta" y el titulo de la foto con mayor "ME GUSTA"}
procedure mas_vista(clics:integer;var mc:integer;var tmv:string;titu:string);
begin
  if clics > mc then begin
    mc:= clics;
    tmv:=titu; // tmv = TITULO MAS VISTO
    end;
end;
{Lectura del array }
procedure leer_datos(var f:arr);

var
  i:integer;
begin
  for i:= 1 to CANT_FOTOS do begin
  writeln('Ingrese titulo de la foto: ');
  readln(f[i].titulo);
  writeln('Ingrese autor de la foto: ');
  readln(f[i].autor);
  writeln('Ingrese cantidad de "Me Gusta" de la f[i].to: ');
  readln(f[i].cant_mg);
  writeln('Ingrese cantidad de "Clics"(VISTAS) de la f[i].to: ');
  readln(f[i].cant_clic);
  writeln('Ingrese cantidad de comentarios que recibio la f[i].to: ');
  readln(f[i].cant_comen);
end;

end;

procedure procesar(v:arr);

var
  cmg,mc,i:integer;
  tmv:string;

begin
  mc:= -1;
  cmg:=0;
  for i:= 1 to CANT_FOTOS do begin
    mas_vista(v[i].cant_clic,mc,tmv,v[i].titulo);
    if (v[i].autor = 'Art Vandelay') or (v[i].autor = 'ART VANDELAY') or (v[i].autor = 'art vandelay')then
      cmg:= cmg + 1;
    writeln('La cantidad de comentarios para la foto cuyo tutulo es: ',v[i].titulo);
    writeln('es de: ',v[i].cant_comen);
  end;
  writeln('El titulo ade la foto mas vista es: ',tmv);
  writeln('La cantidad de Me Gusta que recibieron las fotos de Art Vandelay fueron: ',cmg);
end;


var
  v:arr;

begin
  //LECTURA DEL ARRAY
  leer_datos(v);
  procesar(v);
  end.




























