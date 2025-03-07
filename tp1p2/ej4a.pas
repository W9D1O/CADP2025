
program ej4a;

uses
    crt;

var
    num,min1,min2:integer;
begin
    min1:= 32767;
    min2:= 32767;
    randomize;
        repeat
        num:= random(1500);
        if num < min1 then begin
            min2:= min1;
            min1:= num;
        end
        else if num < min2 then
            min2:= min1;
    until num = 0;
    writeln('El valor mas chico es: ',min1,', el siguiente valor mas chico es ',min2,'.');
end.
