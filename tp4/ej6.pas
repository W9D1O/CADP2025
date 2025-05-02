unit ej6;

uses
  ej4;

interface

procedure min_max(v:vector;dimL:integer;var min,max);

implementation
{Recorre el vector una sola vez y se queda con las posiciones menor y mayor}
procedure min_max(v:vector;dimL:integer;var min,max);
var
  i,amin,amax:integer;
begin
  amin:= MAXINT;
  amax:= -MAXINT;
  for i:= 1 to dimL do begin
    {Si lo que guarda el vector en la posicion i es maros que amax guarda la magnitud en amax y la posicion en max}
    if v[i] > amax then begin
      max:= i;
      amax:= v[i];
    end;
    {Si lo que cuarda el vector en la posicion i es menor de lo que tiene amin guarfa la magnitud en amin y la poscion en min}
    if v[i] < amin then begin
      amin:= v[i];
      min:= i;
    end;

    {No se utilizo un else if dado que poderia jpasar que o haya aun solo valor en el vector o los valores que lo integran sean el misco en cuyo caso
    no se iba a obtener la posicion del elemento menor

    }
  end;

end;

end.
