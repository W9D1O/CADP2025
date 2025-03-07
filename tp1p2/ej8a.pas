
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
    cant_v_d,ven_myr,d_m_v:integer;
begin
    cant_v_d:= 0;
    monto_t:= 0;
    ven_myr:= 0;
    randomize;
    for i:= 1 to fin do begin
        montos:= random(350);
        while montos <> 0 do begin
            monto_t:= monto_t + montos;
            cant_v_d:= cant_v_d + 1;
            montos:=random(350);
        end;
        if cant_v_d > ven_myr then begin
            ven_myr:= cant_v_d;
            d_m_v:= i;
        end;
        writeln('La cantidad de ventas del dia ',i,' fue de: ',cant_v_d);
        cant_v_d:= 0;
    end;
    writeln();
    writeln('La recaudacion del ultimo mes fue de: ',monto_t);
    writeln();
    writeln('El dia ',d_m_v,' fue en el que se realizaron mas ventas.');
    
end.
