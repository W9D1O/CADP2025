program ej7;

uses crt;

var
    nom,pue1,pue2,pult,ult:string;
    len,tiempo,i,j,t_pue1,t_pue2,t_pult,t_ult:integer;
begin
    t_pue1:=32767;
    t_pue2:=32767;
    t_pult:= -1;
    t_ult:= -1;
    randomize;
    pue1:= '';
    pue2:= '';
    pult:= '';
    ult := '';
    for i:= 0 to 99 do begin
       len:= random(7) + 1;
       setLength(nom,len);
       for j:= 0 to len do // Este bucle solo cumple la funcion de concatenar carácteres para formar una cadena, para no tener que ingresarlo manualemnte
            nom[j] := char(random(127-32)+33);
        tiempo:= random(32767);
        if tiempo < t_pue1 then begin
            t_pue2:=t_pue1;
            pue2:= pue1;
            t_pue1:= tiempo;
            pue1:= nom;
        end
        else if tiempo < t_pue2 then begin
            t_pue2:= tiempo;
            pue2:= nom;
        end;
        if tiempo > t_ult then begin
            t_pult:= t_ult;
            pult:= ult;
            t_ult:= tiempo;
            ult:= nom;
        end
        else if tiempo > t_pult then begin
            t_pult:= tiempo;
            pult:= nom;
        end;
        nom := '';
    end;
    writeln('Los pilotos mas rapidos fueron: ',pue1,' y ',pue2);
    writeln('Los ulñtimos pilotos en alcanzar la meta fueron: ',pult,' y ',ult);
end.
