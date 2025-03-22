program ej11;

function cumple_A(c:char):boolean;

begin
  cumple_A:= c <> '$';
end;

function cumple_B(a,b,arroba:integer):boolean;

begin
  cumple_B:=(a = b) and (arroba <= 3);
end;

procedure informar(a,b:boolean);

begin
  if not(a) and not(b) then
    writeln('No se cumplio A ni se cumplio B')
  else
    if not (a) then
      writeln('No se cumplio A')
    else
      if not (b) then
      writeln('No se cumplio B');
end;

procedure leer_datos(var c:char);
begin
  writeln('Ingrese caracter: ');
  readln(c);
end;
var
  c,separador:char;
  cant_a,cant_b,arroba:integer;
  a,b:boolean;
begin
  cant_a:= 0;
  cant_b:= 0;
  arroba:= 0;
  leer_datos(c);
  separador:= #10;
  a:=true;
  b:=true;
  while c <> '*' do begin
    if (separador <> '%') and (c <> '%') then begin
      cant_a:= cant_a + 1;
      if not cumple_A(c) then
        a:= false;
    end
    else begin
      if (separador = '%') and (c <> '%') then
      cant_b:= cant_b + 1;
      if c = '@'then
        arroba:= arroba + 1;
    end;
    if c = '%' then
      separador:= c;
    leer_datos(c);
  end;
  b:= cumple_B(cant_a,cant_b,arroba);
  writeln(cant_a,' ',cant_b,' ',arroba);
  informar(a,b);
end.
