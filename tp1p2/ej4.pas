program ej4;

uses
    crt;

var
    num,i,min1,min2:integer;
begin
    min1:= 32767;
    min2:= 32767;
    randomize;
    for i:= 0 to 999 do begin
        num:= random(1500) + -800;
        if num < min1 then begin
            min2:= min1;
            min1:= num;
        end
        else if num < min2 then
            min2:= min1;
    end;
    writeln('El valor mas chico es: ',min1,', el siguiente valor mas chico es ',min2,'.');
end.
