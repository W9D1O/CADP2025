1. Responda las preguntas en relación al siguiente programa:
program Ejercicio3;
procedure suma(num1: integer; var num2:integer);
begin
num2 := num1 + num2;
num1 := 0;
end;
var
i, x : integer;
begin
read(x); { leo la variable x }
for i:= 1 to 5 do
suma(i,x);
write(x); { imprimo las variable x }
end.

{
a)Imprime 25.
b)imprime 10.
c)Da error.
}
