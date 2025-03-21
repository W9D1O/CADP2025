program alcance4a;
var
  a,b:integer;
procedure uno;
begin
  a:=1;
  writeln(a);
end;

begin
  a:=1;
  b:=2;
  uno; {Imprime uno}
  writeln(b,a); {Imprime 21}
  end.


program alcance4b;

procedure uno;

begin
  a:= 1;
  writeln(a); {A diferencia de alcance4a acá no tenemos variables globales por lo que el programa se rompe al no encontrar a "a"}
end;
var a,b:integer {variables locales de la funcion principal}
begin
  a:= 1;
  b:=2;
  uno; {Se rompe en la llamada a la funcion}
  writeln(b,a);
  end.
