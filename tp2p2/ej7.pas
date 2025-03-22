program ej7;

procedure cant_dig_y_sum(n:integer;var sum,cant:integer);

begin
  sum:= 0; 
  while n <> 0 do begin
    sum:= sum + n mod 10;       
    cant:= cant + 1;
    n:= n div 10;
  end;
end;
var
  num,total_dig,dig,sum:integer;
begin
  total_dig:= 0;
  dig:= 0;
  sum:=0;
  repeat
  writeln('Ingrese un numero: ');
  readln(num);
  cant_dig_y_sum(num,sum,dig);
  total_dig:= total_dig + dig;
  dig:=0;
  until sum = 10;
  writeln('La cantidad total de digitos leidos fue de: ',total_dig);
end.
