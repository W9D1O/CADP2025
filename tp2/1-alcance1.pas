program alcance1;
var a,b: integer;
procedure uno;
var b: integer;
begin
b := 3;
writeln(b);
end;
begin
a:= 1;
b:= 2;
uno; {El procedimiento reconoce su variable local y la imprime}
writeln(b, a);{Imprime las variables globales}
end.
