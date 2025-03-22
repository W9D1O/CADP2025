{El siguiente programa intenta resolver un enunciado. Sin embargo, el código posee 5 errores. Indicar en
qué línea se encuentra cada error y en qué consiste el error.
Enunciado: Realice un programa que lea datos de 130 programadores Java de una empresa. De cada
programador se lee el número de legajo y el salario actual. El programa debe imprimir el total del dinero
destinado por mes al pago de salarios, y el salario del empleado mayor legajo.
}

program programadores;

procedure leerDatos(var legajo: integer; salario : real); {5 ambas variables deberian estar pasadas por referencia}
begin
writeln(‘Ingrese el nro de legajo y el salario”);
read(legajo);
read(salario);
end;

procedure actualizarMaximo(nuevoLegajo:integer; nuevoSalario:real; var maxLegajo:integer);
var
 maxSalario : real;
 begin
 if (nuevoLegajo > maxLegajo) then begin {3 max legajo no esta inicializado}
 maxLegajo:= nuevoLegajo;
 maxSalario := nuevoSalario
 end;
 end;

 
 var
 legajo, maxLegajo, i : integer;
 salario, maxSalario : real; 
 begin
 sumaSalarios := 0; {1 sumaSalarios no esta definido}
 for i := 1 to 130 do begin
 leerDatos(salario, legajo); {2 las variables esta agregadas en forma invertida y no corresponden con su tipo de datos}
 actualizarMaximo(legajo, salario, maxLegajo);
 sumaSalarios := sumaSalarios + salario;
 end;
 writeln(‘En todo el mes se gastan ‘, sumaSalarios, ‘ pesos’);
 writeln(‘El salario del empleado más nuevo es ‘,maxSalario); {4 la variable maxSalario no esta inicializada}
 end.
