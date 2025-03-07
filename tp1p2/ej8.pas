program ej8;

uses
    crt;

const
    fin = 31;
type 
    dias = 1..fin;
var
    montos,monto_t:longint;
    i:dias;
    cant_v_d:integer;
begin
    cant_v_d:= 0;
    monto_t:= 0;
    randomize;
    for i:= 1 to fin do begin
        montos:= random(350);
        while montos <> 0 do begin
            monto_t:= monto_t + montos;
            cant_v_d:= cant_v_d + 1;
            montos:=random(350);
        end;
        writeln('La cantidad de ventas del dia ',i,' fue de: ',cant_v_d);
        cant_v_d:= 0;
    end;
    writeln('La recaudacion del ulltimo mes fue de: ',monto_t);
    
end.
