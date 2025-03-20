program ej2;

type
  nota = 0..10;
const
  eva_total = 5;

var
  presente,i_total,r_total,apro_todas,cant_prom_max,cant_alu_cero,cant_diez1,cant_diez2,cod_d1,cod_d2:integer;
  i_rinde,r_rinde,acu_notas,acu_diez,acu_ceros,codigo,i,cant_cero1,cant_cero2,cod_c1,cod_c2:integer;
  i_porc,r_porc:real;
  notas:nota;
  cond:char;
  cero,todas:boolean;

begin
  cero:= false;
  todas:= true;
  i_rinde:= 0;
  r_rinde:= 0;
  acu_notas:= 0;
  presente:= 0;
  i_total:= 0;
  r_total:= 0;
  acu_ceros:= 0;
  apro_todas:= 0;
  cant_prom_max:= 0;
  cant_alu_cero:= 0;
  cant_diez1:=0;
  cant_diez2:=0;
  cod_d1:=-1;
  cod_d2:=-1;
  cant_cero1:= 0;
  cant_cero2:= 0;
  cod_c1:=-1;
  cod_c2:=-1;
  i_porc:= 0;
  r_porc:= 0;
  acu_diez:= 0;
  writeln('Ingrese codigo del alumno: ');
  readln(codigo);
  if(codigo <> - 1)then begin {Si el codigo es diferente de -1 continuo, caso contrario se imprime ERROR y se cierra el programa}
    writeln('Ingrese condicion del alumno. Pulse "I" para alumnos ingresantes o pulse "R" para alumnos recursantes: ');
    readln(cond);
    if(cond <> 'i') or (cond <> 'I') or (cond <> 'r') or (cond <> 'R')then {Chequeo que los caracteres ingresados sean validos}
      while(cond <> 'i') and (cond <> 'I') and (cond <> 'r') and (cond <> 'R')do begin
        writeln('ERROR: Caracter no valido.');
        writeln('Ingrese condicion del alumno. Pulse "I" para alumnos ingresantes o pulse "R" para alumnos recursantes: ');
        readln(cond);
      end;
    if (cond = 'i' ) or (cond = 'I') then {Acumulo la cantidad de ingresantes o recursantes para sacar el procentaje mas adelante}
      i_total:= i_total + 1
    else
      r_total:= r_total + 1;
    writeln('El rango valido de notas para los estudiantes es de 0..10. La ausencia se representa con el valor -1');
    for i:= 1 to eva_total do begin {Leo todas las notas de los alumnos}
      writeln('Ingrese nota del alumno(',i,'/',eva_total,'): ');
      readln(notas);
      if notas >= 4 then
        presente:= presente + 1; {Acumulo los presente para saber mas adelante si cumple}
      acu_notas:= acu_notas + notas;
      if notas = 10 then
        acu_diez:= acu_diez + 1; {acumulo la cantidad de diez para el alumno que esta siendo procesado}
      if notas = 0 then begin
        if (notas = 0) and (not cero) then
        cero:= true;
        acu_ceros:= acu_ceros + 1; {Acumulo la cantidad de cero para el alumno que esta siendo procesado}
      end;
      if (todas) and (notas < 4)  then {Chequeo si alcuna de las notas es inferior a 4}
        todas:= false;
    end;
    end
    else begin
      writeln('ERROR: No se ingreso ningun alumno valido antes del codigo de cierre "-1".');
      exit;
    end;
    while codigo <> - 1 do begin
      {Calculo la cantidad de alumnos a estan en condiciones de rendir}
      if(cond = 'i') or (cond = 'I') and (presente * 100 / eva_total > 75) then begin
        i_rinde:= i_rinde + 1;
        presente:= 0;
        end
        else
          if (cond = 'r') or (cond = 'R') and (presente * 100 / eva_total > 75) then begin
            r_rinde:= r_rinde + 1;
            presente:= 0;
          end;
      if todas then 
        apro_todas:= apro_todas + 1 {Calculo a los alumnos que aprobaron todas las evaluaciones}
      else
        todas:= true; {Reseteo la variable para la proxima iteracion}
      if acu_notas / eva_total > 6.5 then
        cant_prom_max:= cant_prom_max + 1; {Suma los alumnos con un promedion mayor a 6.5}
      if cero then begin
        cant_alu_cero:= cant_alu_cero + 1; {Calculo a los alumnos que obtubieron un cero al enguna de sus autoevaluaciones}
        cero:= false;
      end;
      if acu_diez > cant_diez1 then begin {me guardo el codigo del alumno con mayores diez en sus evaluaciones}
        cod_d2:= cod_d1;
        cant_diez2:= cant_diez1;
        cod_d1:= codigo;
        cant_diez1:= acu_diez;
        acu_diez:= 0;
        end
        else
          if acu_diez > cant_diez2 then begin {Si acu diez no es mayoar a acu_diez1 pero si a acu_diez dos me guardo el cod}
            cod_d2:= codigo;
            cant_diez2:= acu_diez;
            acu_diez:= 0;
          end;
      if acu_ceros > cant_cero1 then begin {me guardo el codigo del alumno con mayores diez en sus evaluaciones}
        cod_c2:= cod_c1;
        cant_cero2:= cant_cero1;
        cod_c1:= codigo;
        cant_cero1:= acu_ceros;
        acu_ceros:= 0;
        end
        else
          if acu_ceros > cant_cero2 then begin {Si acu diez no es mayoar a acu_diez1 pero si a acu_diez dos me guardo el cod}
            cod_c2:= codigo;
            cant_cero2:= acu_ceros;
            acu_ceros:= 0;
          end;

  writeln('Ingrese codigo del alumno: ');
  readln(codigo);
  if codigo <> -1 then begin
    writeln('Ingrese condicion del alumno. Pulse "I" para alumnos ingresantes o pulse "R" para alumnos recursantes: ');
    readln(cond);
    if(cond <> 'i') or (cond <> 'I') or (cond <> 'r') or (cond <> 'R')then {Chequeo que los caracteres ingresados sean validos}
      while(cond <> 'i') and (cond <> 'I') and (cond <> 'r') and (cond <> 'R')do begin
        writeln('ERROR: Caracter no valido.');
        writeln('Ingrese condicion del alumno. Pulse "I" para alumnos ingresantes o pulse "R" para alumnos recursantes: ');
        readln(cond);
      end;
    if (cond = 'i' ) or (cond = 'I') then {Acumulo la cantidad de ingresantes o recursantes para sacar el procentaje mas adelante}
      i_total:= i_total + 1
    else
      r_total:= r_total + 1;
    writeln('El rango valido de notas para los estudiantes es de 0..10. La ausencia se representa con el valor -1');
    for i:= 1 to eva_total do begin {Leo todas las notas de los alumnos}
      writeln('Ingrese nota del alumno(',i,'/',eva_total,'): ');
      readln(notas);
      if notas >= 4 then
        presente:= presente + 1; {Acumulo los presente para saber mas adelante si cumple}
      acu_notas:= acu_notas + notas;
      if notas = 10 then
        acu_diez:= acu_diez + 1; {acumulo la cantidad de diez para el alumno que esta siendo procesado}
      if notas = 0 then begin
        if (notas = 0) and (not cero) then
        cero:= true;
        acu_ceros:= acu_ceros + 1; {Acumulo la cantidad de cero para el alumno que esta siendo procesado}
      end;
      if (todas) and (notas < 4)  then {Chequeo si alcuna de las notas es inferior a 4}
        todas:= false;
      end;
    end;
    end;
    writeln('Los alumnos ingresantes en condiciones de rendir son : ',i_rinde);
    i_porc:= i_rinde * 100 / i_total;
    writeln('representando un ',i_porc:4:2,'% del total.');
    writeln('Los alumnos recursantes en condiciones de rendir son: ',r_rinde);
    r_porc:= r_rinde * 100 / r_total;
    writeln('Representando un ',r_porc:4:2,'% del total');
    writeln('La cantidad de alumnos que aprobaron todas las autoevaluaciones fueron: ',apro_todas);
    writeln('Los alumnos con un promedio mayor a 6.5 fueron: ',cant_prom_max);
    writeln('Los alumnos con al menops un cero en sus auto evaluaciones fueron: ',cant_alu_cero);
    writeln('Los alumnos que obtuvieron la nota mas alta una mayor cantidad de veces en sus evaluaciones fueron: ',cod_d1,' ',cod_d2);
    writeln('Los alumnos que mas veces obtuvieron cero durante sus autoevaluaciones fueron: ',cod_c1,' ',cod_c2);
  end.
