program alcanceYFunciones;
var
suma, cant : integer; {Variablesj globales, no necesitan pasarse por parametro}
function calcularPromedio : real
var
prom : real;
begin
if (cant = 0) then {a)En pascal, se llama al nombre de la funcion para hacer su retorno. 
                    En calcularPromedio no se esta llamando al nombre de la funcion. Se deberia eliminar la variable prom y
                    en su lugar en el if/else agregar calcularPromedio}
prom := -1
else
prom := suma / cant;
end;
begin { programa principal }
readln(suma);
readln(cant);
if (calcularPromedio <> -1) then begin {b) Si agregamos una variable de tipo real podemos asginar calcularPromedio a la variable
                                        para hacer la llamada solo una vez}
cant := 0;
writeln(‘El promedio es: ’ , calcularPromedio)
{c-1) Sin realizar modificaciones el programa se rompe.
c-2)Agregando el retorno a la funcion,que es el nombre de la misma "calcularPromedio",el resultado que imprime es 8.
Esto se repiter si se agregar una variable ára hacer solo una vez el llamado a la funcion}
end;
else
writeln(‘Dividir por cero no parece ser una buena idea’);
end.


