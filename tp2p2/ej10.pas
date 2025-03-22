program ej10;

{No queria que fuera tan larga la comparacion asi que lo separe en mayusculas y minusculas}
function vocal_mayus(c:char):boolean;
begin
  vocal_mayus:= (c = 'A') or (c = 'E') or (c = 'I') or (c = 'O') or (c = 'U');
end;

function vocal_minus(c:char):boolean;
begin
 vocal_minus:=  (c = 'a') or (c = 'e') or (c = 'i') or (c = 'o')or(c = 'u');
end;

function es_vocal(c:char):boolean;

begin
  es_vocal:= vocal_mayus(c) or vocal_minus(c);
end;
{Usa el codigo ASCII como rango para saber si el caracter es alfabetico}
function es_letra(c:char):boolean;
begin
  es_letra:=((ord(c) >= 65) and (ord(c) <= 90)) or ((ord(c) >= 97) and (ord(c) <= 122));
end;
{Devuelve TRUE Si el caracter es el separador o el de cierre y FALSE en caso contrario}
function separador_y_fin(c:char):boolean;

begin
  separador_y_fin:= (c <> '$') and (c <> '#');
end;

{Lee los datos}
procedure leer_datos(var c:char);

begin
  writeln('Ingrese un caracter(Los caracteres con tides no son validos): ');
  readln(c);
  while not es_letra(c) and separador_y_fin(c) do begin
    writeln('ERROR: Solo se aceptan caracteres alfabeticos.');
    writeln('Ingrese un caracter(Los caracteres con tides no son validos): ');
    readln(c);
  end;
end;

{Informa si ek patron se complio o si no se cumplio  }
procedure informar(a,b:boolean);
begin

  if (a) and (b) then
   writeln('Patron completado')
  else
    if not(a) and not(b)then
      writeln('No se cumplico A ni se cumplio B')
    else
      if not a then
        writeln('No se cumplio A')
      else
        writeln('No se cumplio B');
end;

var
  c,separador:char;
  a,b:boolean;

begin
  a:= true;
  b:= true;
  separador:= #10;
  leer_datos(c);
  if c = '#' then begin
    a:= false;
    b:=false;
  end;
  while c <> '#' do begin
    if separador <> '$' then begin
      if a then
        a:= es_vocal(c);
    end
      else
        if es_vocal(c) then
          b:= false;
    if c = '$' then
      separador:= c;
    leer_datos(c);
  end;
  informar(a,b);
end.
