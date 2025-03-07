program ej3;

type
    nota = 1..10;
var
    nom:string[65];
    nt:nota;
    apro,sie:integer;

begin
    sie := 0;
    apro := 0;
    repeat
        writeln('Ingrese Apellido y Nombre del alumno: ');
        readln(nom);
        writeln('Ingrese la nota obtenida en EPA: ');
        readln(nt);
        if nt > 7 then
            apro:= apro + 1;
        if nt = 7 then
            sie:= sie + 1;
    until (nom = 'Zidane Zinedine') or (nom = 'zidane zinedine');
    writeln('La cantidad de alumnos aprobados fue de: ',apro);
    writeln('La cantidad de alumnos que obtuvieron una nota igual a sietwe fue de: ',sie);
end.
