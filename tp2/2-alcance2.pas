program alcance2;
var a,b: integer;
procedure uno;
begin
b := 3; {Asigna 3 a la variable global}
writeln(b);
end;
begin
a:= 1;
b:= 2;
uno; {Imprime 3}
writeln(b, a); {Imprime 31}
end.
