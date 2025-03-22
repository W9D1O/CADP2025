3. Encontrar los 6 errores que existen en el siguiente programa. Utilizar los comentarios entre llaves como guía,
indicar en qué línea se encuentra cada error y en qué consiste:

program ejercicio5;
{ suma los números entre a y b, y retorna el resultado en c }
procedure sumar(a, b, c : integer)
var
suma : integer;
begin

for i := a to b do
suma := suma + i; {5 la variable suma no esta inicializada}
 c := c + suma; {6 Los procedimientos no retornan valor, lo hacen las funciones y cuando lo hacen se tiene que llamar al
                nombre de la funcion para almacenar el resultado}
 end;
 
 var
 result : integer;
 begin
 result := 0;
 readln(a); readln(b);{1 las variables a no esta declarada. b no esta declarada}
 sumar(a, b, 0);
 write(‘La suma total es ‘,result);{2 result se inicializa pero no se usa como acumulador}
 { averigua si el resultado final estuvo entre 10 y 30}
 ok := (result >= 10) or (result <= 30); {3 la variable ok no esta declarada}
 if (not ok) then {4 al no encontrarse declarada la variable ok el condicional no es valido}
 write (‘La suma no quedó entre 10 y 30’);
 end.
