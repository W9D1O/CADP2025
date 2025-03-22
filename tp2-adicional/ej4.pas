program ej4;

const
  TIERRA_DIA = 12700;
  MARTE_DIA = 6780;
  JUP_PER = 439264;

procedure dia_peri(r:real;var d,p:real);

begin
  d:= r * 2;
  p:= 2*PI*r;
end;

procedure leer_datos(var nom:string;r:real;dis:longint);

begin
  writeln('Ingrese el radio del planeta: ');
  readln(r);
  writeln('Ingrese el nombre del planeta: ');
  readln(nom);
  writeln('Ingrese la distancia del planeta: ');
  readln(dis);
end;

var
  nom:string;
  distancia:longint;
  radio,diametro,perimetro:real;
  mayor_jup:integer;
begin
  mayor_jup:= 0;
  leer_datos(nom,radio,perimetro);
  while radio <> 0 do begin
    dia_peri(radio,diametro,perimetro);
    if(diametro <= TIERRA_DIA) and (diametro >= MARTE_DIA)then begin
      writeln(nom);
      writeln(dis);
    end;
    if perimetro > JUP_PER then
      mayor_jup:= mayor_jup + 1;
    leer_datos(nom,radio,perimetro);
  end;
    writeln(mayor_jup);
  end.
