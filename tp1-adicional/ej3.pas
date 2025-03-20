program ej3;

var
  tipo:char;
  alto,largo,ancho,radio:real;
  vol_m1,vol_m2,tank_cil_prom,tank_rec_prom:real;
  cant_tank_cil,cant_tank_rec,cant_alto,cant_vol:integer;
  vol:real;
begin
  vol_m1:= 0;
  vol_m2:= 0;
  tank_cil_prom:= 0;
  tank_rec_prom:= 0;
  cant_tank_cil:=0;
  cant_tank_rec:=0;
  cant_alto:=0;
  cant_vol:=0;
  writeln('Ingrese tipo de tanque: ');
  readln(tipo);
  if(tipo <> 'r') and (tipo <> 'R') and (tipo <> 'c') and (tipo <> 'C') and (tipo <> 'z') and (tipo <> 'Z')then
    while(tipo <> 'r') and (tipo <> 'R') and (tipo <> 'c') and (tipo <> 'C')do begin
      writeln('Caracter no valido.');
      writeln('Ingrese tipo de tanque: ');
      readln(tipo);
    end;
  if (tipo = 'z') or (tipo = 'Z') then
    begin
      writeln('Error: No se han ingresados tanques a procesar');
      exit;
    end;
  if(tipo = 'r') or (tipo = 'R')then begin
    writeln('Ingrese la altura del tanque: ');
    readln(alto);
    writeln('Ingrese el ancho del tanque: ');
    readln(ancho);
    writeln('Ingrese el largo del del tanque: ');
    readln(largo);
    end
    else begin
    writeln('Ingrese radio del tanque: ');
    readln(radio);
    writeln('Ingrese alto del tanque: ');
    readln(alto);
    end;
    while (tipo <> 'z') and (tipo <> 'Z')do begin
      if (tipo = 'r') or (tipo = 'R')then begin
        vol:= ancho*largo*alto;
        cant_tank_rec:= cant_tank_rec + 1;
        tank_rec_prom:= tank_rec_prom + vol;
        end
      else
        begin
        vol:=PI*radio*radio*alto;
        cant_tank_cil:= cant_tank_cil + 1; {calculo la cantidad de tanques, me guardo sus volumenes para sacar el promedio}
        tank_cil_prom:= tank_cil_prom + vol;
      end;
      if vol > vol_m1 then begin {Calculo los tanques con mayor volumen}
        vol_m2:=vol_m1;
        vol_m1:= vol;
        end
      else
        if vol > vol_m2 then
          vol_m2:= vol;
      if alto < 1.4 then {Calculo los tanques cuyo alto sea menoa a 1.4}
        cant_alto:= cant_alto + 1;
      if vol < 800 then {Calculo los tanques cuyo volumen sea menor a 800 metros}
        cant_vol:= cant_vol + 1;
  writeln('Ingrese tipo de tanque: ');
  readln(tipo);
  if(tipo <> 'r') and (tipo <> 'R') and (tipo <> 'c') and (tipo <> 'C')and (tipo <> 'z') and (tipo <> 'Z')then
    while(tipo <> 'r') and (tipo <> 'R') and (tipo <> 'c') and (tipo <> 'C')do begin
      writeln('Caracter no valido.');
      writeln('Ingrese tipo de tanque: ');
      readln(tipo);
    end;
  if (tipo <> 'z') and (tipo <> 'Z') then
    begin
  if(tipo = 'r') or (tipo = 'R')then begin
    writeln('Ingrese la altura del tanque: ');
    readln(alto);
    writeln('Ingrese el ancho del tanque: ');
    readln(ancho);
    writeln('Ingrese el largo del del tanque: ');
    readln(largo);
    end
    else begin
    writeln('Ingrese radio del tanque: ');
    readln(radio);
    writeln('Ingrese alto del tanque: ');
    readln(alto);
    end;
  end;
    end;
    if cant_tank_rec <> 0 then
    tank_rec_prom:= tank_rec_prom / cant_tank_rec
    if cant_tank_cil <> 0 then
    tank_cil_prom:= tank_cil_prom / cant_tank_cil
    writeln('Los tanques con mayores volumenes vendidos fueron: ',vol_m1,' y ',vol_m2);
    writeln('El volumen promedio de los tanques rectangulares vendidos fue de: ',tank_rec_prom:4:2);
    writeln('El volumen promedio de los tanques cilindricos vendidos fue de: ',tank_cil_prom:4:2);
    writeln('La cantidad de tanques vendidos cuyo alto no supero 1.4M fue de: ',cant_alto);
    writeln('La cantidad de tanques vendidos cuyo volumen no supero los 800M3 fue de: ',cant_vol);
  end.
