program ej5;

uses crt;

var
    num,max,min:integer;
    suma:longint;
begin
    max:= -32768;
    min:= 32767;
    suma:= 0;
    randomize;
    repeat
        num:= random(2000) - 500;
        if max < num then
            max:= num;
        if min > num then
            min:= num;
        suma:= suma + num;
    until num = 100;
    writeln('El maximo valor leido fue: ',max,', el minimo valor leido fue: ',min,'. La suma de todos los numero leidos fue: ',suma);
end.
