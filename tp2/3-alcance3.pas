program alcance3;
var a: integer;
procedure uno;
var b: integer;
begin
b:= 2; {Asigna el valor 2 a la variable local}
writeln(b);
end;
begin
a:= 1; {Asigna 1 a la vareiable global}
uno; {Inmprime b, que es la variable local del procedimiento}
writeln(a, b); {Se rompe porque no encuentra la variable b}
end.
