program ej3;

const
  fin = 200;

procedure mas_barato(cod:byte;var cb1,cb2:byte;p:real;var pb1,pb2:real);

begin
  if p < pb1 then begin
    pb2:= pb1;
    pb1:= p;
    cb2:= cb1;
    cb1:= cod;
    end
    else
      if p < pb2 then begin
        pb2:= p;
        cb2:= cod;
      end;
end;


function es_par(cod:byte):boolean;

begin
  es_par:= cod mod 2 = 0;
end;


procedure leer_productos(var cod:byte;var p:real;indice:byte);

begin
  cod:= indice;
  writeln('Ingrese el valor del producto: ');
  readln(p);
end;

var
  i,codigo,cod_b1,cod_b2,cant:byte;
  precio,menor_p1,menor_p2:real;
begin
    menor_p1:= 999999;
    menor_p2:= 999999;
    cant:= 0;
    for i:= 1 to fin do begin
      leer_productos(codigo,precio,i);
      mas_barato(codigo,cod_b1,cod_b2,precio,menor_p1,menor_p2);
      if (es_par(codigo)) and (precio > 16) then
        cant:= cant + 1;
    end;
    writeln('Los codigos son: ',cod_b1,' ',cod_b2);
    writeln('La cantidad de productos de mas de 16 pesos son: ',cant);
  end.
