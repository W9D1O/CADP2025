program ej9;

type
  candidatos = record
    localidad:string;
    apellido:string;
    votos:longint;
    votantes:longint;
  end;


  procedure lectura(datos:candidatos);

  begin
    writeln('Ingrese localidad: ');
    readln(datos.localidad);
    writeln('Ingrese el apellido delñ candidato: ');
    readln(datos.apellido);
    writeln('Ingrese la cantidad de votos obtenidos: ');
    readln(datos.votos);
    writeln('Ingrese la cantidad total de votantes de la localidad: ');
    readln(datos.votantes);
  end;


procedure mayores(votos:longint;apellido:string;var m_v:longint;var m_ape:string);

begin
  if votos > m_v then begin
    m_v:= votos;
    m_ape:= apellido;
  end;
end;

function porcentaje(votantes,votos:longint):real;

begin
  porcentaje:= votos * 100 div votantes;
end;

var
  d:candidato;
  m_votos,m_porcentaje:longint;
  m_apellido,p_apellido:string;
begin
  m_votos:= 0;
  m_porcentaje:= 0;
  repeat
    lectura(d);
    {Acá mayores se va a quedar con el candidato qye tuvo una mayor cantidad de votos}
    mayores(ds.votos,d.apellido,m_v,m_apellido);
    {en esta otra parte mayores se va a quedar con el candidato con mayor cantidad de porcentaje} 
    mayores(procentaje(d.votantes,d.votos),d.apellido,m_porcentaje,p_apellido);
    until datos.localidad = 'zarate';
    writeln('candidato con mayor cantidad de votos: ',m_apellido);
    writeln('candidato con mayor porcentaje de votos: ',p_apellido);
  end.

