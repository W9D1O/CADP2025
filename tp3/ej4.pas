program ej4;

const
  PMINUTOS = 3.4;
  PMB = 1.3;
  T_CLI = 9300;
type

  Linea = Record
  num:integer;
  min:integer;
  megas:integer;
end;

  Clientes = Record
  codigo:integer;
  cant_li:integer;
end;

{Lectura de los datos de la alinea}
procedure leer_lineas(var l:Linea);

begin
  writeln('Ingrese numero de celular: ');
  readln(l.num);
  writeln('Ingrese cantidad de minutos consumidos: ');
  readln(l.min);
  writeln('Ingrese cantidad de Megas consumidos: ');
  readln(l.megas);

end;
{se leen los datos de el cliente y se devuelve los minutos y megas consumidos}
procedure leen_clientes(var min,megas:integer);

var
  i:integer;
  l:linea
  c:Clientes;
begin
  {Se resetean las variables para cada nuevo cliente}
  min:= 0;
  megas:= 0;
  writeln('Ingrese codigo de cliente: ');
  readln(c.codigo);
  writeln('Ingrese cantidad de lineas vinculadas al cliente: ');
  readln(c.cant_li);
  for i:= 1 to c.cant_li do begin
    leer_lineas(l);
    min:= min + l.min;
    megas:= l.megas;
  end;
end;

var
  min,megas,i:integer;
  abono:real; 

begin
  {Se itear hasta el total de clientes }
  for i:= 1 to T_CLI do begin
    abono:= 0; {Se resetea para cada nuevo acliente que va a ser leido}
    leen_clientes(min,megas);
    abono:= PMB * megas + PMINUTOS * min;
    writeln('El monto a abonar es: ',0:2); {Se imprime el monto total a abonar}
  end;
  end.
