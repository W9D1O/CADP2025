program ej11;

type
  vuelos = record
    codigo:integer;
    p_salida:string;
    p_llegada:string;
    kltros_rec:real;
    ocupacion:real; {Porcentaje de la ocupacion del avion}
    end;


procedure lectura(var d:vuelos);

begin
  writeln('Ingrese codigo del avion: ');
  readln(d.codigo);
  if d.codigo <> 44 then begin
  writeln('Ingrese pais de salida: ');
  readln(d.p_salida);
  writeln('Ingrese pais de llegada: ');
  readln(d.p_llegada);
  writeln('Ingrese kilometros recorridos: ');
  readln(d.kltros_rec);
  writeln('Ingrese porcentaje de ocupacion del avion: ');
  readln(d.ocupacion);
end;

end;

procedure dos_mayores(codigo:integer;kilom:integer;var cm1,cm2:integer;var km1,km2:integer);

begin
  if kilom > km1 then begin
    km2:=km1;
    cm2:=cm1;
    km1:=kilom;
    cm1:=codigo;
    end
    else if kilom > km2 then begin
      km2:=kilom;
      cm2:=codigo;
    end;
end;


procedure dos_menores(codigo:integer;kilom:integer;var cm1,cm2:integer;var km1,km2:integer);

begin
  if kilom < km1 then begin
    km2:=km1;
    cm2:=cm1;
    km1:=kilom;
    cm1:=codigo;
    end
    else if kilom < km2 then begin
      km2:=kilom;
      cm2:=codigo;
    end;
end;


var
  d:vuelos;
  c_mayor1,c_mayor2,c_menor1,c_menor2,cant_salidas:integer;
  corte_cod,c_mas_cinco,c_menos_diez:integer;
  k_mayor1,k_mayor2,k_menor1,k_menor2:integer;
  cod_mas_salidas,max_salidas:integer;
  corte_pais:string;
begin
  c_mas_cinco:=0;
  c_menos_diez:=0;
  c_menor1:= MAXINT;
  c_menor2:= MAXINT;
  c_mayor1:=-1;
  c_mayor2:=-1;
  cant_salidas:=0;
  k_menor1:=MAXINT;
  k_menor2:=MAXINT;
  k_mayor1:=-1;
  k_mayor2:=-1;
  lectura(d);
  while d.codigo <> 44 do begin
    corte_co:= d.codigo;
    while(corte_cod = d.corte_cod) and (d.codigo <> 44)do begin
      corte_pais:= d.p_salida;
      while(corte_pais = d.p_salida) and (d.codigo <> 44)do begin
        cant_salidas:= cant_salidas + 1;
        dos_mayores(d.codigo,d.kltros_rec,c_mayor1,c_mayor2,k_mayor1,k_mayor2);
        dos_menores(d.codigo,d.kltros_rec,c_menor1,c_menor2,k_menor1,k_menor2);
        if(d.kltros_rec > 5000) and (d.porcentaje < 60) then
          c_mas_cinco:= c_mas_cinco + 1;
        if(d.kltros_rec < 10000) and ((d.p_llegada = 'australia') or (d.p_llegada = 'nueva zelanda'))then
          c_menos_diez:= c_menos_diez + 1;
        lectura(d);
      end;
      {Oara no escribir lo mismo se usa la misma funcion y7 se para parametros repetidos}
      {Se quedaria con el codigo de avion con mas salidas}
      dos_mayores(corte_cod,cant_salidas,cod_mas_salidas,cod_mas_salidas,max_salidas,max_salidas);
    end;
  end;
    writeln('aviones que mas kilometros recorrieron: ',c_mayor1,' ',c_mayor2);
    writeln('aviones que menos kilometros recorrieron: ',c_menor1,' ',c_menor2);
    writeln('vuelos con mayores salidas de diferentes paises: ',cod_mas_salidas);
    writeln('vuelos mayores a cinco mil kilometros: ',c_mas_cinco);
    writeln('Vuelos menores a diez kilometros: ',c_menos_diez);
  end.
