program ej3.pas;

function doble(a,b:integer):boolean;
var
  vf:boolean;
begin
  vf:=false;
  if b = a*2 then
    vf:=true;
  doble:=vf;
end;

var
  cant_pares,cant_doble,a,b:integer;
begin
    cant_pares:=0;
    cant_doble:=0;
    writeln('ingrese un numero: ');
    read(a);
    writeln('ingrese un numero: ');
    readln(b);
    while (a <> 0) or (b <> 0)do begin
      cant_pares:= cant_pares + 1;
      if doble(a,b) then
        cant_doble:= cant_doble + 1;
      writeln('Ingrese un numero; ');
      readln(a);
      writeln('Ingrese un numero: ');
      readln(b);
    end;
    writeln('La cantidad de pares de numeros fueron: ',cant_pares);
    writeln('La cantidad de veces donde b fue el doble de a fue de: ',cant_doble);
  end.

