program ej10;

type
  plant_especie = record
    nombre:string;
    meses_vida:integer;
    tipo:string;
    clima:string;
    pais:string;
  end;


  procedure lectura(var datos:plant_especie);

  begin
    writeln('Ingrese paid de origen de la planta: ');
    readln(datos.pais);
    if datos.pais <> 'zzz' then begin
      writeln('Ingrese tipo de clima de habitad: ');
      readln(datos.clima);
      writeln('Ingrese tipo de planta: ');
      readln(datos.tipo);
      writeln('Ingrese meses de vida de la platan: ');
      readln(datos.meses_vida);
      writeln('Ingrese el nombre cientifico de la planta: ');
      readln(datos.nombre);
    end;
  end;


  procedure menor_cantidad(tipo:string;var tipo_m:string;var cont_t,cant_t_m:integer);

  begin
    if cont_t < cant_t_m then begin
      tipo_m:= tipo;
      cant_t_m:= cont_t;
      cont_t:= 0;
    end;
  end;

procedure promedio_vida(acu,cont_t:integer):real;

begin
  promedio_vida:= acu / cont_t;
end;

procedure dos_longevas(nom:string;meses:integer;var nom1,nom2:string;var m1,m2:integer);

begin
  if meses > m1 then begin
    m2:= m1;
    nom2:= nom1;
    m1:= meses;
    nom1:= nom;
    end
    else if meses > m2 then begin
      m2:= meses;
      nom2:= nom;
    end;

end;

var
  d:plant_especie;
  nom_long1,nom_long2,nom_tipo_m:string;
  cont_t,cant_t_m,acu,mas_long1,mas_long2:integer;
  corte_tipo,corte_pais:string;
begin
  cont_t:=0;
  cant_t_m:=MAXINT;
  acu:=0;
  mas_long1:=-1;
  mas_long2:=-1;
  lectura(d);
  while d.pais <> 'zzz' do begin
    corte_tipo:= d.tipo;
    while(d.tipo = corte_tipo) and (d.pais <> 'zzz') do begin
      corte_pais:= d.pais;
      cont_t:= cont_t + 1;

      while(d.pais = corte_pais) and (d.pais <> 'zzz') do begin
        acu:= acu + d.meses_vida;
        {Se queda con los nombres de las plantas que son mas longevas}
        dos_longevas(d.nombre,d.meses_vida,nom_long1,nom_long2,mas_long1,mas_long2);
        if(d.pais = 'argentina') and (d.clima = 'subtropical') then
          writeln(d.nombre);
        lectura(d);
      end;
    end;

    writeln('El promedio de vida del tipo de planta ',corte_tipo,'es de: ',promedio_vida(acu,cont_t):0:2);
    acu:=0;
    {se queda cojn el tipo de planta que tiene menor cantidad}
    menor_cantidad(d.tipo,nom_tipo_m,cont_t,cant_t_m);
    cont_t:= 0;

  end;
  writeln(nom_tipo_m);
  writeln(nom_long1,' ',nom_long2);
  end.
