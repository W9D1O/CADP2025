program anidamientos;
procedure leer;
var
letra : char;
function analizarLetra : boolean
begin
if (letra >= ‘a’) and (letra <= ‘z’) then
analizarLetra := true;
else
if (letra >= ‘A’) and (letra <= ‘Z’) then
analizarletra := false;
{b-1) analizarLetra no contempla los valores numericos ni los signos especiales por lo que va a generar un resultado incorrecto.
 b-2) AL no tener definido que hacer con los valores numericos y los signos especiales va a generar un resultado al azar
 (Suele dar falso en estos casos,pero puede dar verdadero)
 b-3)Podriamos agregar un condicional en leer para chequear si si leyo y caracter alfabetico y en caso contrario
 volver a leer hasta que se ingrese un caracter correcto}
end; { fin de la funcion analizarLetra }
begin
readln(letra);
if (analizarLetra) then
writeln(‘Se trata de una minúscula’)
else
writeln(‘Se trata de una mayúscula’);
end; { fin del procedure leer}
var
ok : boolean;
begin { programa principal }
leer;
ok := analizarLetra; {a-1)La funcion analizarLetra esta declarada dentro de leer, por lo que la funcion principal
                      no va a encontrarla al realizar la llamada.
                      a-2)Para resolver este problema podemos declarar la funcion analizar letra fuera de leer}
if ok then
writeln(‘Gracias, vuelva prontosss’);
end.
