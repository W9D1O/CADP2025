program ej12;

const
  TOTAL = 53;
  fin_t = 4
type
  TIPOS = 1..fin_t;
  GALAXIA = record
    nombre:string;
    tipo:TIPOS;
    masa:real; //Medida en kg
    pc:real; //Distancia memida en pársecs
  end;

  arr = array[1..TOTAL)of GALAXIA;
  contador = array[1..fin_t]of integer;

procedure carga(var v:arr);

var
  i:integer;
begin
  for i:= 1 to TOTAL do begin
    writeln('Ingrese el nombre de la galaxia: ');
    readln(v[i].nombre);
    writeln('Ingrese el tipo de galaxia: ');
    readln(v[i].tipo);
    writeln('Ingrese la masa de la galaxia: ');
    readln(v[i].masa);
    writeln('Ingrese la distancia de la galaxia: ');
    readln(v[i].pc);
end;

procedure init_contador(var c:contador);
var
  i:tipos;
begin
  for i:= 1 to fin_t do 
    c[i]:= 0;
end;

end;


{Siempre me olvido como se calcula el porcentaje. 100 representa mi porcentaje total
N representa la magnitud de lo que vendria a ser mi 100%
y m seria la cantidad que estoy intentando calcular como porcentaje
respeto de mi total
En resumen P = 100/N*M
ejemplo: 100/500 tangas * 250 tangas = 50%
Lo explique para el orto espero avolver y entenderme
}
function porcentaje(mt,m3:real):real;
begin
  porcentaje:= 100/mt *m3;
end;

procedure dos_mayores_masas(var mm1,mm2:real;masa:real;var nm1,nm2:string;nom:string);
begin
  if(masa > mm1)then begin
    mm2:=mm1;
    nm2:=nm1;
    mn1:= masa;
    nm1:= nom;
    end
    else if (masa > nm2)then begin
      mn2:=masa;
      nm2:=nom;
    end;
end;

{Parece redundante pero creo que si lo hago todo junto y da la casualidad de que todos los valores sean iguales
no voy a tener nada como dos menores}

procedure dos_menores_masas(var mm1,mm2:real;masa:real;var nm1,nm2:string;nom:string);
begin
  if(masa < mm1)then begin
    mm2:=mm1;
    nm2:=nm1;
    mn1:= masa;
    nm1:= nom;
    end
    else if (masa < nm2)then begin
      mn2:=masa;
      nm2:=nom;
    end;
end;

procedure procesar(v:arr;var cont:contador;var m3,mt,mm1,mm2,mnm1,mnm2:real;var cni:integer;var nm1,nm2,nmm1,nmm2:string);

var
  i:integer;
  
begin
  for i := 1 to TOTAL do begin
    // Voy sumando la cantidad para cada tipo
    cont[v[i].tipo]:= cont[v[i].tipo] + 1;
    //Sumo la masa total
    mt:= mt + v[i].masa;
    if(v[i].nombre = 'via lactea') or (v[i].nombre = 'andromeda') or (v[i].nombre = 'trianguloa')then
      m3:= m3 + v[i].masa;
    if(v[i].tipo <> 4) and (v[i].pc < 1000)then
      cni:= cni + 1;
    dos_mayores_masas(mm1,mm2,v[i].masa,nm1,nm2,v[i].nombre);
    dos_menores_masas(mnm1,mnm2,v[i].masa,nmm1,nmm2,v[i].nombre);
  end;
end;

{MAIN}
var
  v:arr;
  cont:contador;
  masa3,masaTotal,mm1,mm2,mnm1,mnm2:real;
  cant_no_irre:integer;
  nmym1,nmym2,nmnm1,nmnm2:string;
  i:tipos;

begin
  masa3:=0;
  masaTotal:=0;
  mm1:= -1;
  mm2:=-1;
  mnm1:=MAXINT;
  mnm2:=MAXINT;
  init_contador(cont);
  carga(v);
  procesar(v,cont,masa3,masatotal,mm1,mm2,mnm1,mnm2,cant_no_irre,nmym1,nmym2,nmnm1,nmnm2);
  for i:= 1 to fin_t do
    writeln('La cantidad de galaxias del tipo: ',i,' es de: ',cont[i]);
  writeln('La suma de las masas de La via lactea, andromeda y triangulo es de: ',masa3:0:2);
  writeln('Lo que corresponde a un ',porcentaje(masaTotal,masa3):0:2'% de la masa total');
  writeln('Por su parte la masa total fue de: ',masatotal:0:2);
  writeln('La cantidad de galaxias no irregulares a menos de 1000 parsecs de la tierra fueron: ',cant_no_irre);
  writeln('El nombre de las dos galaxias de mayor masa fueron: ',nmym1,' ',nmym2);
  writeln('El nombre de las dos galaxias de menor masa fueron: ',nmnm1,' ',nmnm2);
  end.
