program ej8;

type
  docente = record
    dni:longint;
    nomyape:string;
    email:string;
    end;

  proyecto = record
    codigo:integer;
    titulo:string;
    coordinador:docente;
    cant_alu:integer;
    nom_esc:string;
    localidad:string;
  end;

procedure lectura(var datos:proyecto);

begin
  writeln('Ingrese codigo del proyecto: ');
  readln(datos.codigo);
  if datos.codigo <> -1 then begin
    writeln('Ingrese titulo del proyecto: ');
    readln(datos.titulo);
    writeln('Ingrese nombre y apellido del docente a cargo: ');
    readln(datos.coordinador.nomyape);
    writeln('Ingrese numero de DNI del docente: ');
    readln(datos.coordinador.dni);
    writeln('Ingrese email del docente: ');
    readln(datos.coordinador.email);
    writeln('Ingrese cantidad de alumnos: ');
    readln(datos.cant_alu);
    writeln('Ingrese nombre de la escuela: ');
    readln(datos.nom_esc);
    writeln('Ingrese localidad de la escuela: ');
    readln(datos.localidad);
  end;

end;

procedure dos_escuelas(esc:string;alu:integer;var max_a1,max_a2:integer;var m_esc1,m_esc2:string);
begin
  if alu > max_a1 then begin
    max_a2:= max_a1;
    m_esc2:=m_esc1;
    max_a1:= alu;
    m_esc1:= esc;
    end
    else if alu > max_a2 then begin
      max_a2:= alu;
      m_esc2:= esc;
    end;
end;

function par_igual_impar(codigo:integer):boolean;
var
  vf:boolean;
  dig,par,impar:integer;
begin
  impar:= 0;
  par:= 0;
  vf:= false;
 while codigo <> 0 do begin
   dig:= codigo mod 10;
   codigo:= codigo div 10;
   if dig mod 2 = 0 then
      par:= par + 1
    else
      impar:= impar + 1;
 end;
 if par = impar then
   vf:= not vf;
  par_igual_impar:= vf;
end;

var
  datos:proyecto;
  max_alu1,max_alu2,can_esc18,cant_esc_loc:integer;
  nom_esc1,nom_esc2,corte_loc,corte_esc:string;
begin
  can_esc18:= 0;
  cant_esc_loc:=0;
  max_alu1:= 0;
  max_alu2:= 0;

  lectura(datos);
  while datos.codigo <> - 1 do begin
    corte_loc:= datos.localidad;
    while(corte_loc = datos.localidad) and (datos.codigo <> - 1) do begin
      corte_esc:= datos.nom_esc;
      cant_esc_loc:= cant_esc_loc + 1;
      can_esc18:= can_esc18 + 1;
      while(corte_esc = datos.nom_esc) and (datos.codigo <> -1) do begin
        if(datos.localidad = 'Daireaux') and par_igual_impar(datos.codigo) then
          writeln(datos.titulo);
        dos_escuelas(datos.nom_esc,datos.cant_alu,max_alu1,max_alu2,nom_esc1,nom_esc2);
        lectura(datos);
      end;
      writeln('Las escuelas participantes de la localidad de ',corte_esc,' suman una cantidad de: ');
      writeln(can_esc18);
      cant_esc_loc:= 0;
    end;
  end;
  writeln('Las dos escuelas con mayor cantidad de alumnos fueron: ',nom_esc1,' ',nom_esc2);
  writeln('El total de las escuelas participantes es de: ',can_esc18)
end.

