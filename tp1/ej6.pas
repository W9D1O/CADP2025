program ej6;


var
    prom,prom_d:real;
    leg,cant_alu,p_myr_s,dest:integer;


begin
    cant_alu:= 0;
    p_myr_s:= 0;
    dest:= 0;
    prom_d:= 0;
    writeln('Ingrese numero de legajo. Sin "/numero": ');
    readln(leg);
    while leg <> -1 do begin
        cant_alu:= cant_alu + 1;
        writeln('Ingrese promedio del alumno: ');
        readln(prom);
        if prom >= 6.5 then
            p_myr_s:= p_myr_s + 1;
        if (prom >= 8.5) and (leg >= 2500) then
            dest:= dest + 1;
    writeln('Ingrese numero de legajo. Sin "/numero": ');
    readln(leg);
    end;
    if cant_alu > 0 then
        prom_d:= dest * 100 / cant_alu;
    writeln(cant_alu); //IMPRIEM LA CANTIDAD DE ALUMNOS LEIDOS
    writeln(p_myr_s); // IMPREME LA CANTIDAD DE ALUMNOS CUYO PROMEDIO ES MAYOR A 6.5
    writeln(prom_d:4:2);//IMPRIME EL PROMEDIO DE LOS ALUMNOS DESTACADOS
end.
