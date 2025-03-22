program ej6;

{Lee los productos}
procedure leer(var p:real;var c:integer;var t:string);

begin
  writeln('Ingrese valor del producto: ');
  readln(p);
  writeln('Ingrese codigo del producto: ');
  readln(c);
  writeln('Ingrese tipo de producto: ');
  readln(t);
end;

{Calcula los codigos de productos mas baratos}
procedure cod_baratos(c:integer;var cod1,cod2:integer;p:real;var p1,p2:real);

begin
  if p < p1 then begin
    cod2:= cod1;
    cod1:= c;
    p2:= p1;
    p1:= p;
    end
    else
      if p < p2 then begin
        cod2:= c;
        p2:= p;
      end;
end;

{Calcula codigo de productos caros}
procedure cod_caro(c:integer;p:real;var cod:integer;var pc:real);

begin
  if pc < p then begin
    cod:= c;
    pc:= p;
  end;
end;

{Calcula el precio promedio de los productos}
function promedio(acu:real;cant:integer):real;

begin
  promedio:= acu / cant;
end;

var
  i,codigo,cod_b1,cod_b2,codc,cant_p:integer;
  precio,pre_b1,pre_b2,pre_c,acu:real;
  tipo:string[100];
begin
  cant_p:= 0;
  pre_b1:= MAXINT;
  pre_b2:= MAXINT;
  pre_c:= -1;
  acu:= 0;
  for i:= 1 to 3 do begin
    leer(precio,codigo,tipo);
    cod_baratos(codigo, cod_b1,cod_b2,precio,pre_b1,pre_b2);
    if tipo = 'pantalon' then
      cod_caro(codigo,precio,codc,pre_c);
    acu:= acu + precio;
    cant_p:= cant_p + 1;
  end;
  writeln('Los 2 codigo de los productos mas baratos fueron: ',cod_b1,' ',cod_b2);
  writeln('El pantalos mas caro posee el codigo N°: ',codc);
  if cant_p > 0 then
  writeln('El precio promedio de los productos es: ',promedio(acu,cant_p))
  end.

