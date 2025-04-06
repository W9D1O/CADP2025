program ej6;

type

procesador = Record;
  marca:string;
  linea:string;
  nucleos:byte;
  velocidad:real;
  nanometros:integer;
end;


procedure lectura(var p:procesador);

begin
  writeln('Ingrese cantidad de nucleos del procesador: ');
  readln(p.nucleos);
  if p.nucleos <> 0 then begin
    writeln('Ingrese marca del procesador: ');
    readln(p.marca);
    writeln('Ingrese lineal del procesador: ');
    readln(p.linea);
    writeln('iIngrese velocidad del procesador: ');
    readln(p.velocidad);
    writeln('Ingrese nanometros del procesador: ');
    readln(p.nanometros);
  end;

end;

procedure marcas_catorce(cont:integer;var m1,m2:string;var cm1,cm2:integer;marca:string);

begin
  if cont > cm1 then begin
    m2:= m1;
    cm2:= cm1;
    m1:= marca;
    cm1:= cont;
    end
    else
      if cont > cm2 then begin
        m2:= marca;
        cm2:= cont;
      end;
end;


var
  cant_p,cont,cm1,cm2:integer;
  m1,m2,aux:string;
  proc:procesador;
begin
  cant_p:= 0;
  cont:= 0;
  cm1:= -1;
  cm2:= -1;
  lectura(proc);
  while proc.nucleos <> 0 do begin
    aux:= proc.marca;
    while (aux = proc.marca) and (proc.nucleos <> 0) do begin
      if (proc.nucleos > 2) and (proc.nanometros >= 22) then
          writeln('Procesador con nucleos mayores a dos y nanometros de a lo sumo 22: ',proc.marca,' ',proc.nanometros);
      if proc.nanometos = 14 then
        cont:= cont + 1;
      if(proc.nucleos > 1) and ((proc.marca = 'intel') or (proc.marca = 'amd')) and (proc.velocidad >= 2000) then
        cant_p:= cant_p + 1;
      lectura(p);
    end;

    if(aux = 'intel') or (aux = 'amd') then begin
      writeln('cantidad de procesadores de mas de un nucleos y con almenos 2Ghz');
      writeln(aux);
      writeln(cant_p);
      cant_p:= 0;
    end;
    marcas_catorce(cont,m1,m2,cm1,cm2,aux);
  end;
  writeln('Las Dos marcas con mayores procesadores de 14nm');
  writeln(m1,' ',m2);

  end.
