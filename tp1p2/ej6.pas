program ej6;

uses crt;

var
    codb1,codb2,i,cant_par:integer;
    precio,bar1,bar2:real;
begin
    bar1:= 32767;
    bar2:= 32767;
    cant_par:= 0;
    codb1:= -1;
    codb2:= -1;
    randomize;
    for i := 1 to 200 do begin
        precio:= random(5000);
        if precio < bar1 then begin
            bar2:= bar1;
            codb2:= codb1;
            codb1:= i;
            bar1:= precio;
        end
        else if precio < bar2 then begin
            bar2:= precio;
            codb2:= i;
        end;
        if(precio > 16) and (i mod 2 = 0)then
            cant_par:= cant_par + 1;
    end;
    writeln('Los codigos de los productos mas baratos fueron, ',codb1,' y ',codb2);
    writeln('La cantidad de productos cuyo valor supera los dieciseis pesos y que poseen un codig par es de: ',cant_par);
end.
